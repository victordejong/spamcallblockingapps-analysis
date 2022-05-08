package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/PersistenceException.class */
public class PersistenceException extends Exception {
    public PersistenceException(String str, Object... objArr) {
        super(String.format(str, objArr));
    }

    public PersistenceException(Throwable th, String str, Object... objArr) {
        super(String.format(str, objArr), th);
    }
}
