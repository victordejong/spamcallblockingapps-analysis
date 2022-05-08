package org.junit.runners;

import java.lang.reflect.Method;
import java.util.Comparator;
import org.junit.internal.MethodSorter;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/MethodSorters.class */
public enum MethodSorters {
    NAME_ASCENDING(MethodSorter.NAME_ASCENDING),
    JVM(null),
    DEFAULT(MethodSorter.DEFAULT);
    
    private final Comparator<Method> comparator;

    MethodSorters(Comparator comparator) {
        this.comparator = comparator;
    }

    public Comparator<Method> getComparator() {
        return this.comparator;
    }
}
