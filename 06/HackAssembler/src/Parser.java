// Unpacks each instruction into its underlying fields
public class Parser {
    //TODO: Open the input file and get ready to parse it
    public Parser() {

    }
    //TODO: Are there more commands in the input?
    public boolean hasMoreCommands() {
        return false;
    }
    //TODO: Reads the next command from the input and makes it the current command
    // It should be called only if hasMoreCommands() is true
    // Initially there is no current command
    public void advance() {

    }
    //TODO: Returns the type of the current command
    // A_COMMAND -> @xxx
    // C_COMMAND -> dest=comp;jump
    // L_COMMAND -> (Xxx)
    //the return type could be an enum as well
    public String commandType() {
        return "";
    }
    //TODO: Returns the symbol or decimal Xxx of the current command @Xxx or (Xxx)
    // should be called only when commandType() is A_COMMAND or L_COMMAND
    public String symbol() {
        return "";
    }
    //TODO: Returns the dest mnemonic in the current C-COMMAND (8 possible bytes)
    // should be called only when commandType() is C_COMMAND
    public String dest() {
        return "";
    }
    //TODO: Returns the comp mnemonic in the current C_COMMAND (28 possibilities)
    // should be called only when commandType() is C_COMMAND
    public String comp() {
        return "";
    }
    //TODO: Returns the jump mnemonic in the current C_COMMAND (8 possibilities)
    // should be called only when commandType() is C_COMMAND
    public String jump() {
        return "";
    }
}
