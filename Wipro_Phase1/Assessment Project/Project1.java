import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;

public class Project1 {
	static String DIRECTORY;
    File foldername;

    public  Project1() {
        DIRECTORY = System.getProperty("user.dir");
        foldername = new File(DIRECTORY+"/files");
        if (!foldername.exists())
            foldername.mkdirs();
        System.out.println("DIRECTORY : "+ foldername.getAbsolutePath());
    }

    private static final String WELCOME_PROMPT =
            "\n*******   Project1.com *******";
                private static final String MAIN_MENU_PROMPT =
            "\nMAIN MENU - Select any of the following: \n"+
                    "1) List files in directory\n"+
                    "2) Add, Delete or Search\n"+
                    "3) Exit Program";

    private static final String SECONDARY_MENU_PROMPT =
            "   \nSelect any of the following: \n"+
                    "   a) Add a file\n"+
                    "   b) Delete a file\n"+
                    "   c) Search a file\n"+
                    "   d) GoBack";

    void showPrimaryMenu() {
        System.out.println(MAIN_MENU_PROMPT);
        try(Scanner scanner = new Scanner(System.in)){
            
          int option = scanner.nextInt();
            switch (option){
                case 1 : {
                    showFiles();
                    showPrimaryMenu();
                }
                case 2 : {
                    showSecondaryMenu();
                }
                case 3 : {
                    System.out.println("Thank You");
                    System.exit(0);
                }
                default: showPrimaryMenu();
            }
        }
        catch (Exception e){
            System.out.println("Please enter 1, 2 or 3");
            showPrimaryMenu();
        }
    }

    void showSecondaryMenu() {
        System.out.println(SECONDARY_MENU_PROMPT);
        try(Scanner scanner = new Scanner(System.in))
        {
            char[] input = scanner.nextLine().toLowerCase().trim().toCharArray();
            char option = input[0];

            switch (option){
                case 'a' : {
                    System.out.print("Please Enter a File Name : ");
                    String filename = scanner.next().trim().toLowerCase();
                    addFile(filename);
                    break;
                }
                case 'b' : {
                    System.out.print("Please Enter a File Name : ");
                    String filename = scanner.next().trim();
                    deleteFile(filename);
                    break;
                }
                case 'c' : {
                    System.out.print("Please Enter a File Name : ");
                    String filename = scanner.next().trim();
                    searchFile(filename);
                    break;
                }
                case 'd' : {
                    System.out.println("Going Back to MAIN menu");
                    showPrimaryMenu();
                    break;
                }
                default : System.out.println("Please enter a, b, c or d");
            }
            showSecondaryMenu();
        }
        catch (Exception e){
            System.out.println("Please enter a, b, c or d");
            showSecondaryMenu();
        }
    }

    void showFiles() {
        if (foldername.list().length==0)
            System.out.println("The folder is empty");
        else {
            String[] list = foldername.list();
            System.out.println("The files in "+ foldername +" are :");
            Arrays.sort(list);
            for (String str:list) {
                System.out.println(str);
            }
        }
    }
void addFile(String filename) throws IOException {
        File filepath = new File(foldername +"/"+filename);
        String[] list = foldername.list();
        for (String file: list) {
            if (filename.equalsIgnoreCase(file)) {
                System.out.println("File " + filename + " already exists at " + foldername);
                return;
            }
        }
        filepath.createNewFile();
        System.out.println("File "+filename+" added to "+ foldername);
    }

    void deleteFile(String filename) {
        File filepath = new File(foldername +"/"+filename);
        String[] list = foldername.list();
        for (String file: list) {
            if (filename.equals(file) && filepath.delete()) {
                System.out.println("File " + filename + " deleted from " + foldername);
                return;
            }
        }
        System.out.println("Delete Operation failed. FILE NOT FOUND");
    }

    void searchFile(String filename) {
        String[] list = foldername.list();
        for (String file: list) {
            if (filename.equals(file)) {
                System.out.println("FOUND : File " + filename + " exists at " + foldername);
                return;
            }
        }
        System.out.println("File Not found (FNF)");
    }

	public static void main(String[] args) {
		 System.out.println(WELCOME_PROMPT); 
	        Project1 menu = new  Project1();
	        menu.showPrimaryMenu();
	}
}
