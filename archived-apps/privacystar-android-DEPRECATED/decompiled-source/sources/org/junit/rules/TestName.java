package org.junit.rules;

import org.junit.runner.Description;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/TestName.class */
public class TestName extends TestWatcher {
    private String name;

    public String getMethodName() {
        return this.name;
    }

    @Override // org.junit.rules.TestWatcher
    protected void starting(Description description) {
        this.name = description.getMethodName();
    }
}
