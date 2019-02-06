package inf226;

/**
 * Immutable class for users.
 * @author INF226
 *
 */
public final class User {
	
	private final String name;
	private final ImmutableLinkedList<Message> log;
    private final String password;


	public User(final String name) {
		this.name=name;
		this.log = new ImmutableLinkedList<Message>();
        this.password = this.getPasswordcpy();
	}

    @Deprecated
	private User(final String name, final ImmutableLinkedList<Message> log) {
		this.name = name;
		this. log = log;
        this.password = this.getPasswordcpy();
	}

	public User(final String name,
                final ImmutableLinkedList<Message> log,
                final String password) {
	    this.name = name;
	    this.log = log;
        this.password = password;
    }
	
	/**
	 * 
	 * @return User name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * @return Messages sent to this user.
	 */
	public Iterable<Message> getMessages() {
		return log;
	}



	/**
	 * Add a message to this user’s log.
	 * @param m Message
	 * @return Updated user object.
	 */
	public User addMessage(Message m) {
	    return new User(name,new ImmutableLinkedList<Message>(m,log), password);
	}

	public String getPasswordcpy() {
	    if (this.password != null) {
            char[] c = new char[this.password.length()];
            for (int i = 0; i < this.password.length(); i++) {
                c[i] = this.password.charAt(i);
            }
            String copy = new String(c);
            return copy;
        }
        return null;
    }

}