package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/SessionManager.class */
class SessionManager {
    private ThreadLocal<Reference> local = new ThreadLocal<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/SessionManager$Reference.class */
    public static class Reference {
        private int count;
        private Session session;

        public Reference(boolean z) {
            this.session = new Session(z);
        }

        public int clear() {
            int i = this.count - 1;
            this.count = i;
            return i;
        }

        public Session get() {
            int i = this.count;
            if (i >= 0) {
                this.count = i + 1;
            }
            return this.session;
        }
    }

    private Session create(boolean z) throws Exception {
        Reference reference = new Reference(z);
        this.local.set(reference);
        return reference.get();
    }

    public void close() throws Exception {
        Reference reference = this.local.get();
        if (reference == null) {
            throw new PersistenceException("Session does not exist", new Object[0]);
        } else if (reference.clear() == 0) {
            this.local.remove();
        }
    }

    public Session open() throws Exception {
        return open(true);
    }

    public Session open(boolean z) throws Exception {
        Reference reference = this.local.get();
        return reference != null ? reference.get() : create(z);
    }
}
