/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exception;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import modelo.Persona;
import modelo.Usuario;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author jean
 */
public class FormValidationUsuario implements Validator{

    
     //para validaciones y reglas de negocio 
    private Pattern pattern;
    private Matcher matcher;

    //expreciones regulares 
    private static final String EMAIL_PATTERN
            = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    private static final String PASSWORD_PATTERN = 
            "^(?=.*\\d)(?=.*[\\u0021-\\u002b\\u003c-\\u0040])(?=.*[A-Z])(?=.*[a-z])\\S{8,16}$";
    
    @Override
    public boolean supports(Class<?> type) {
        return Persona.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        
        Usuario usuario = (Usuario)o;
        
          //Validar que el campo nombre sea obligatorio con HTML
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required",
                "El nombre es obligatorio");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required",
                "El correo es obligatorio");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required",
                "La contraseña es obligatoria");

        
          //Con expreciones regulares 
        if(!(usuario.getCorreo() != null && usuario.getCorreo().isEmpty())){
            
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(usuario.getCorreo());
            
            if(!matcher.matches()){
                errors.rejectValue("correo", "correo.incorrect", 
                        "El correo no es valido");
            }
           
        }
        
          if(!(usuario.getPassword()!= null && usuario.getPassword().isEmpty())){
            
            this.pattern = Pattern.compile(PASSWORD_PATTERN);
            this.matcher = pattern.matcher(usuario.getPassword());
            
            if(!matcher.matches()){
                errors.rejectValue("password", "password.incorrect", 
                        "La contraseña no es valida");
            }
           
        }
        
        
    }
    
}
