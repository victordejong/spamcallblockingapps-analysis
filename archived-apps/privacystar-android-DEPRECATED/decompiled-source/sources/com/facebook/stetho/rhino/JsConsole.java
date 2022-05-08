package com.facebook.stetho.rhino;

import com.facebook.stetho.inspector.console.CLog;
import com.facebook.stetho.inspector.protocol.module.Console;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.annotations.JSFunction;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsConsole.class */
public class JsConsole extends ScriptableObject {
    private static final long serialVersionUID = 1;

    public JsConsole() {
    }

    public JsConsole(ScriptableObject scriptableObject) {
        setParentScope(scriptableObject);
        Object topLevelProp = ScriptRuntime.getTopLevelProp(scriptableObject, "Console");
        if (topLevelProp != null && (topLevelProp instanceof Scriptable)) {
            Scriptable scriptable = (Scriptable) topLevelProp;
            setPrototype((Scriptable) scriptable.get("prototype", scriptable));
        }
    }

    @JSFunction
    public static void log(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        log(objArr);
    }

    private static void log(Object[] objArr) {
        CLog.writeToConsole(Console.MessageLevel.LOG, Console.MessageSource.JAVASCRIPT, JsFormat.parse(objArr));
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Console";
    }
}
