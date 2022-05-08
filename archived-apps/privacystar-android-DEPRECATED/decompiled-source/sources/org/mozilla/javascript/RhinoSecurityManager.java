package org.mozilla.javascript;

import org.mozilla.javascript.PolicySecurityController;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/RhinoSecurityManager.class */
public class RhinoSecurityManager extends SecurityManager {
    /* JADX INFO: Access modifiers changed from: protected */
    public Class<?> getCurrentScriptClass() {
        Class<?>[] classContext;
        for (Class<?> cls : getClassContext()) {
            if ((cls != InterpretedFunction.class && NativeFunction.class.isAssignableFrom(cls)) || PolicySecurityController.SecureCaller.class.isAssignableFrom(cls)) {
                return cls;
            }
        }
        return null;
    }
}
