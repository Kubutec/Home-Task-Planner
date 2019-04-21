package pl.coderslab.app.taskCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import java.util.Locale;

public class CategoryConverter implements Converter<String,TaskCategory> {
    @Autowired
    public TaskCategoryService taskCategoryService;
    @Override
    public TaskCategory convert(String s) {
        if (s == null || s.isEmpty()) {
            return null;
        } Long id = Long.valueOf(s);
        return taskCategoryService.readTaskCategory(Long.parseLong(s));
    }
}
