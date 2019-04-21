package pl.coderslab.app.priority;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "priorites")
@Data
public class Priority {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
}
