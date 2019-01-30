package flyway;
import org.flywaydb.core.Flyway;
public class App {
    public static void main(String[] args) {
        // Create the Flyway instance
        Flyway flyway = Flyway.configure().dataSource("jdbc:h2:file:./target/flyway", "sa", null).load();

        // Start the migration
        flyway.migrate();
    }
}
