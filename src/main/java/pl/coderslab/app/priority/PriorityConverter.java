package pl.coderslab.app.priority;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class PriorityConverter implements Converter<String, Priority> {
    @Autowired
    public PriorityService priorityService;
    @Override
    public Priority convert(String s) {
        if (s == null || s.isEmpty()) {
            return null;
        } Long id = Long.valueOf(s);
        return priorityService.read(Long.parseLong(s));
    }
}
