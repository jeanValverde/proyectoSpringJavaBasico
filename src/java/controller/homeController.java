/*
 * Esta clase es un controlador 

   El servidor usado para correr este proyecto es Payara Server 4.1.1.171.1 #badassfish (build 139)
   puedes usar cualquier otro
 */
package controller;

import exception.FormValidationPersona;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import modelo.Persona;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.support.SessionStatus;

/**
 *
 * @author jean
 */
@Controller
public class homeController {//nombre de las clases en mayusculas :(

    private FormValidationPersona formularioValidation;

    public homeController() {
        this.formularioValidation = new FormValidationPersona();
    }

    @RequestMapping("home.htm")//referecia a la pagina a cargar 
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView();//rendedizar vistas 
        mav.setViewName("home"); //llamar a nombre del archivo en las vistas sin extencion 
        //puedes crear mas carpetas en jsp para llamarlas en setViewName 
        //es carpeta/nombrePagina

        return mav;
    }

    //procesando parametros via GET URL 
    //query String =  direccion?parametro=value&..
    @RequestMapping("pruebaParametro.htm")
    public ModelAndView pruebaParametro(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pruebaParametro");

        //recuperar datos via GET 
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");

        //plasmar los datos recuperados en la pagina 
        mv.addObject("id" /* key para recuperar en el jsp */,
                id /* variable del valor para despacho */);

        mv.addObject("nombre", nombre);

        return mv;
    }

    //Trabajar con css , js , Bootstrap en los jsp 
    @RequestMapping("herramientasGUI.htm")
    public ModelAndView herramientasGUI() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("herramientasGUI");

        //
        return mv;
    }

    //Trabajar con formularios  SINPLE!!!
    @RequestMapping(value = "formularios.htm", method = RequestMethod.GET)
    public ModelAndView formularios() {
        ModelAndView mv = new ModelAndView("formularios", "command", new Persona());

        /**
         * Puedes darles ya valores al formulario ModelAndView mv = new
         * ModelAndView("formularios", "command", new
         * Persona(32,"Pedro","Correo@com",23));
         *
         *
         */
        return mv;
    }

    //RESPUESTA DEL FORMULARIO ANTERIOR 
    @RequestMapping(value = "formularios.htm", method = RequestMethod.POST)
    public String formulario(Persona per, ModelMap model) {
        model.addAttribute("nombre", per.getNombre());
        model.addAttribute("correo", per.getCorreo());
        model.addAttribute("edad", per.getEdad());

        //NOTA: PARA USAR UTF-8 EN LOS FORMULARIOS 
        //IR A CONFIGURATION FILE -> WEB.XML 
        return "resultadoFormulario";
    }

    //Formulario con validaciones usando org.springframework.validacion...
    @RequestMapping(value = "formValidacion.htm", method = RequestMethod.GET)
    public ModelAndView formValidacion() {
        //ModelAndView mv = new ModelAndView("formValidacion", "command", new Persona());

        ModelAndView mv = new ModelAndView();
        mv.setViewName("formValidacion");
        mv.addObject("persona", new Persona());

        //
        return mv;

    }

    //metodo para poblar un select en el formulario 
    @ModelAttribute("edades")
    public Map<String, String> listadoEdades() {
        Map<String, String> edades = new LinkedHashMap<>();

        edades.put("17", "17");
        edades.put("18", "18");
        edades.put("19", "19");
        edades.put("20", "21");
        edades.put("22", "22");

        return edades;
    }

    //Validar los datos del formulario 
    @RequestMapping(value = "formValidacion.htm", method = RequestMethod.POST)
    public ModelAndView formValidacionForm(@ModelAttribute("persona") Persona p, BindingResult result, SessionStatus status) {
        this.formularioValidation.validate(p, result);
        if (result.hasErrors()) {
            //si tiene errores el formulario 
            //CARGAR EL FORMULARIO NUEVAMENTE 
            ModelAndView mv = new ModelAndView();
            mv.setViewName("formValidacion");
            mv.addObject("persona", new Persona());
            return mv;
        }else{
            //Si el formulaio no cuenta con errores 
            ModelAndView mv = new ModelAndView();
            mv.setViewName("exitoFormValidation");
            mv.addObject("nombre", p.getNombre());
            mv.addObject("correo", p.getCorreo());
            mv.addObject("edad", p.getEdad());
            
            return mv;
        }
    }
    
    
    
    
}
