package org.mozilla.javascript.tools.debugger;

import org.mozilla.javascript.tools.debugger.Dim;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/GuiCallback.class */
public interface GuiCallback {
    void dispatchNextGuiEvent() throws InterruptedException;

    void enterInterrupt(Dim.StackFrame stackFrame, String str, String str2);

    boolean isGuiEventThread();

    void updateSourceText(Dim.SourceInfo sourceInfo);
}
