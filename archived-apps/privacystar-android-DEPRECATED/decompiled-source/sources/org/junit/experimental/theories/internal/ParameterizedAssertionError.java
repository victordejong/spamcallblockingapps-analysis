package org.junit.experimental.theories.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/theories/internal/ParameterizedAssertionError.class */
public class ParameterizedAssertionError extends AssertionError {
    private static final long serialVersionUID = 1;

    public ParameterizedAssertionError(Throwable th, String str, Object... objArr) {
        super(String.format("%s(%s)", str, join(", ", objArr)));
        initCause(th);
    }

    public static String join(String str, Collection<Object> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<Object> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(stringValueOf(it.next()));
            if (it.hasNext()) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static String join(String str, Object... objArr) {
        return join(str, Arrays.asList(objArr));
    }

    private static String stringValueOf(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Throwable th) {
            return "[toString failed]";
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof ParameterizedAssertionError) && toString().equals(obj.toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }
}
