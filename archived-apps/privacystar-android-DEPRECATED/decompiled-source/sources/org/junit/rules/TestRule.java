package org.junit.rules;

import org.junit.runner.Description;
import org.junit.runners.model.Statement;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/TestRule.class */
public interface TestRule {
    Statement apply(Statement statement, Description description);
}
