/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import conexion.Conexion;
import exception.FormValidationUsuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelo.Usuario;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author jean
 */
@Controller
public class BaseDatosController {

    //NOTA: crear conexion como atributo 
    private JdbcTemplate jdbcTemplate;

    private FormValidationUsuario formValidationUsuario;

    public BaseDatosController() {
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
        this.formValidationUsuario = new FormValidationUsuario();
    }

    //cargar los datos de la base de datos 
    @RequestMapping("homeBD.htm")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();

        String sql = "SELECT * FROM usuario";

        List datos = jdbcTemplate.queryForList(sql);

        mv.addObject("datos", datos);
        mv.setViewName("usuario/homeBD");

        return mv;
    }

    //cargar el formulario 
    @RequestMapping(value = "agregarUsuario.htm", method = RequestMethod.GET)
    public ModelAndView agregarUsuario() {

        ModelAndView mv = new ModelAndView("usuario/agregarUsuario", "usuario", new Usuario());

        return mv;
    }

    //respuesta del formulario del agregar usuario
    @RequestMapping(value = "agregarUsuario.htm", method = RequestMethod.POST)
    public ModelAndView registrarUsuario(@ModelAttribute("usuario") Usuario usuario,
            BindingResult result, SessionStatus status) {
        this.formValidationUsuario.validate(usuario, result);

        if (result.hasErrors()) {
            //si tiene errores el formulario 
            //CARGAR EL FORMULARIO NUEVAMENTE 
            ModelAndView mv = new ModelAndView();
            mv.setViewName("usuario/agregarUsuario");
            mv.addObject("usuario", new Usuario());
            return mv;
        } else {
            //Si el formulaio no cuenta con errores 
            this.jdbcTemplate.update("insert into usuario (nombre, correo, password)"
                    + " values (?,?,?)",
                    usuario.getNombre(), usuario.getCorreo(), usuario.getPassword());

            return new ModelAndView("redirect:/homeBD.htm");
        }

    }

    //cargar el formulario 
    @RequestMapping(value = "editarUsuario.htm", method = RequestMethod.GET)
    public ModelAndView editarUsuarioView(HttpServletRequest request) {//HttpServletRequest respuesta URL

        ModelAndView mv = new ModelAndView();

        int id = Integer.parseInt(request.getParameter("id"));//rescatar id por GET
        Usuario usuario = this.obtenerUsuarioById(id);
        mv.setViewName("usuario/editarUsuario");
        mv.addObject("usuarioEdit", new Usuario(id, usuario.getNombre(), usuario.getCorreo(), usuario.getPassword()));
        return mv;
    }

    //se actulizan los campos 
    @RequestMapping(value = "editarUsuario.htm", method = RequestMethod.POST)
    public ModelAndView editarUsuario(@ModelAttribute("usuarioEdit") Usuario usuario,
            BindingResult result, SessionStatus status, HttpServletRequest request) {

        this.formValidationUsuario.validate(usuario, result);

        if (result.hasErrors()) {
            //si tiene errores el formulario 
            //CARGAR EL FORMULARIO NUEVAMENTE
           /* ModelAndView mv = new ModelAndView();
            int id = Integer.parseInt(request.getParameter("id"));//rescatar id por GET
            Usuario user = this.obtenerUsuarioById(id);
            mv.setViewName("usuario/editarUsuario");
            mv.addObject("usuarioEdit", new Usuario(id, user.getNombre(), user.getCorreo(), user.getPassword()));
            return mv;*/
           
           return editarUsuarioView(request);

        } else {
            //Si el formulaio no cuenta con errores 
            int id = Integer.parseInt(request.getParameter("id"));
            this.jdbcTemplate.update(
               " update usuario "
                + " set "
                + " nombre=?, "
                + " correo=?, "
                + " password=? "
                + " where "
                + " idusuario=? ", 
            usuario.getNombre(), usuario.getCorreo(), usuario.getPassword(),id
            );
            return new ModelAndView("redirect:/homeBD.htm");

        }

    }

    //Trae al usuario segun un id
    public Usuario obtenerUsuarioById(int id) {
        final Usuario user = new Usuario();
        String query = "SELECT * FROM usuario WHERE idusuario='" + id + "'";
        return (Usuario) jdbcTemplate.query(query, new ResultSetExtractor<Usuario>() {
            @Override
            public Usuario extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    user.setId(Integer.parseInt(rs.getString("idusuario")));
                    user.setNombre(rs.getString("nombre"));
                    user.setCorreo(rs.getString("correo"));
                    user.setPassword(rs.getString("password"));
                }
                return user;
            }
        });
    }
    
    
    @RequestMapping("deleteUsuario") //declarar el deleteUsuario en dispacher-Servlet
    public ModelAndView borrarUsuario(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        this.jdbcTemplate.update(""
                + "delete from usuario"
                + " where "
                + " idusuario=?"
        , id);
        
        return home();
        
    }
    

}


/* BASE DE DATOS A UTILIZAR 


-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema springBD
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema springBD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `springBD` DEFAULT CHARACTER SET utf8 ;
USE `springBD` ;

-- -----------------------------------------------------
-- Table `springBD`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `springBD`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



 */
