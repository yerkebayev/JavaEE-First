package kz.bitlab.techorda.db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Task> tasks = new ArrayList<>();
    private static long id = 5;

    static {
        tasks.add(
                new Task(1L,
                        "Sprint 1",
                        "lorem ipsum dolor",
                        "2023-04-11"
                )
        );
        tasks.add(
                new Task(2L,
                        "Sprint 2",
                        "lorem ipsum dolor",
                        "2023-04-25"
                )
        );
        tasks.add(
                new Task(3L,
                        "Sprint 3",
                        "lorem ipsum dolor",
                        "2023-05-10"
                )
        );
        tasks.add(
                new Task(4L,
                        "Sprint 4",
                        "lorem ipsum dolor",
                        "2023-05-25"
                )
        );
    }




    public static ArrayList<Task> getTasks() {
        return tasks;
    }

    public static void addTask(Task task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(long id) {
        return tasks
                .stream()
                .filter(task -> task.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public static void deleteTask(long id) {
        for (int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }
}
