/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exception;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import modelo.Persona;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author jean
 */
public class FormValidationPersona implements Validator {

    //para validaciones y reglas de negocio 
    private Pattern pattern;
    private Matcher matcher;

    //expreciones regulares 
    private static final String EMAIL_PATTERN
            = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    @Override
    public boolean supports(Class<?> type) {
        return Persona.class.isAssignableFrom(type);
        //return ClaseAValidar.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {

        //convertir el Object o a persona 
        Persona persona = (Persona) o;

        //Validar que el campo nombre sea obligatorio con HTML
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required",
                "El nombre es obligatorio");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required",
                "El correo es obligatorio");

        
        //Con expreciones regulares 
        if(!(persona.getCorreo() != null && persona.getCorreo().isEmpty())){
            
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(persona.getCorreo());
            
            if(!matcher.matches()){
                errors.rejectValue("correo", "correo.incorrect", 
                        "El correo no es valido");
            }
           
        }
        
        //con reglas de negocio 
        if(persona.getEdad() == 0){
            errors.rejectValue("edad", "required.edad", "Seleccione edad");
        }else if(persona.getEdad() == 17){
            errors.rejectValue("edad", "required.edad", "No puedes registrarse siendo menor de edad");
        }
        
        
    }

}
