package org.junit.internal.runners.rules;

import java.lang.annotation.Annotation;
import org.junit.runners.model.FrameworkMember;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/ValidationError.class */
class ValidationError extends Exception {
    public ValidationError(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, String str) {
        super(String.format("The @%s '%s' %s", cls.getSimpleName(), frameworkMember.getName(), str));
    }
}
