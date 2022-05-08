package org.junit.validator;

import java.util.List;
import org.junit.runners.model.TestClass;
/* loaded from: classes2-dex2jar.jar:org/junit/validator/TestClassValidator.class */
public interface TestClassValidator {
    List<Exception> validateTestClass(TestClass testClass);
}
