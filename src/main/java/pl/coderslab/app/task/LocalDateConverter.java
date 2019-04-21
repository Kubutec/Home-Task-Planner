package pl.coderslab.app.task;


import org.springframework.core.convert.converter.Converter;

import java.time.LocalDate;

public class LocalDateConverter implements Converter<String, LocalDate> {

    @Override
    public LocalDate convert(String s) {
        if (s == null || s.isEmpty()) {
            return null;
        }
        String[] dateTable = s.split("-");

//        return  LocalDate.of(Integer.parseInt(s.substring(6)), Integer.parseInt(s.substring(3, 6)), Integer.parseInt(s.substring(0,4)));

        return LocalDate.of(Integer.parseInt(dateTable[0]), Integer.parseInt(dateTable[1]), Integer.parseInt(dateTable[2]));
    }
}
