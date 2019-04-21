package pl.coderslab.app.task;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.app.priority.Priority;
import pl.coderslab.app.taskCategory.TaskCategory;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Table(name="tasks")
@Data
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private LocalDate createDate;
    @NotNull
    private LocalDate expireDate;
    @NotBlank
    private String title;
    @NotBlank
    @Size(max = 1000)
    private String instruction;
    private String foto;
    @ManyToOne
    private TaskCategory taskCategory;
    @ManyToOne
    private Priority priority;


}
