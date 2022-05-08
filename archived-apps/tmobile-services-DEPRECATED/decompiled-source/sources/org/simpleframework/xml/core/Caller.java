package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Caller.class */
class Caller {
    private final Function commit;
    private final Function complete;
    private final Context context;
    private final Function persist;
    private final Function replace;
    private final Function resolve;
    private final Function validate;

    public Caller(Scanner scanner, Context context) {
        this.validate = scanner.getValidate();
        this.complete = scanner.getComplete();
        this.replace = scanner.getReplace();
        this.resolve = scanner.getResolve();
        this.persist = scanner.getPersist();
        this.commit = scanner.getCommit();
        this.context = context;
    }

    public void commit(Object obj) throws Exception {
        Function function = this.commit;
        if (function != null) {
            function.call(this.context, obj);
        }
    }

    public void complete(Object obj) throws Exception {
        Function function = this.complete;
        if (function != null) {
            function.call(this.context, obj);
        }
    }

    public void persist(Object obj) throws Exception {
        Function function = this.persist;
        if (function != null) {
            function.call(this.context, obj);
        }
    }

    public Object replace(Object obj) throws Exception {
        Function function = this.replace;
        Object obj2 = obj;
        if (function != null) {
            obj2 = function.call(this.context, obj);
        }
        return obj2;
    }

    public Object resolve(Object obj) throws Exception {
        Function function = this.resolve;
        Object obj2 = obj;
        if (function != null) {
            obj2 = function.call(this.context, obj);
        }
        return obj2;
    }

    public void validate(Object obj) throws Exception {
        Function function = this.validate;
        if (function != null) {
            function.call(this.context, obj);
        }
    }
}
