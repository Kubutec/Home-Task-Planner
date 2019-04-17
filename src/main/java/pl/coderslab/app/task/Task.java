package pl.coderslab.app.task;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Table(name="tasks")
@Data
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private LocalDate createDate;
    @NotBlank
    private LocalDate expireDate;
    @NotBlank
    @Size()
    private String title;
    @NotBlank
    @Size(max = 1000)
    private String instruction;
    private String foto;


}
