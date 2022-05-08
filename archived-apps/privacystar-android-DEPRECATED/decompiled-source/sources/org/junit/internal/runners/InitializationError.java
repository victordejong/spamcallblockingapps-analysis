package org.junit.internal.runners;

import java.util.Arrays;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/InitializationError.class */
public class InitializationError extends Exception {
    private static final long serialVersionUID = 1;
    private final List<Throwable> fErrors;

    public InitializationError(String str) {
        this(new Exception(str));
    }

    public InitializationError(List<Throwable> list) {
        this.fErrors = list;
    }

    public InitializationError(Throwable... thArr) {
        this(Arrays.asList(thArr));
    }

    public List<Throwable> getCauses() {
        return this.fErrors;
    }
}
