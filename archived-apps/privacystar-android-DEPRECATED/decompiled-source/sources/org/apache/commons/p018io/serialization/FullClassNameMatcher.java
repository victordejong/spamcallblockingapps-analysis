package org.apache.commons.p018io.serialization;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: org.apache.commons.io.serialization.FullClassNameMatcher */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/serialization/FullClassNameMatcher.class */
final class FullClassNameMatcher implements ClassNameMatcher {
    private final Set<String> classesSet;

    public FullClassNameMatcher(String... strArr) {
        this.classesSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    @Override // org.apache.commons.p018io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return this.classesSet.contains(str);
    }
}
