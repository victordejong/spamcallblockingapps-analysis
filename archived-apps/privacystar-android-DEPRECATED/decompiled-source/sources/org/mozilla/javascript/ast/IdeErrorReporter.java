package org.mozilla.javascript.ast;

import org.mozilla.javascript.ErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/IdeErrorReporter.class */
public interface IdeErrorReporter extends ErrorReporter {
    void error(String str, String str2, int i, int i2);

    void warning(String str, String str2, int i, int i2);
}
