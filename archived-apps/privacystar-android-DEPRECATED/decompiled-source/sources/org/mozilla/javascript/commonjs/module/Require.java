package org.mozilla.javascript.commonjs.module;

import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mozilla.javascript.BaseFunction;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/Require.class */
public class Require extends BaseFunction {
    private static final ThreadLocal<Map<String, Scriptable>> loadingModuleInterfaces = new ThreadLocal<>();
    private static final long serialVersionUID = 1;
    private Scriptable mainExports;
    private final ModuleScriptProvider moduleScriptProvider;
    private final Scriptable nativeScope;
    private final Scriptable paths;
    private final Script postExec;
    private final Script preExec;
    private final boolean sandboxed;
    private String mainModuleId = null;
    private final Map<String, Scriptable> exportedModuleInterfaces = new ConcurrentHashMap();
    private final Object loadLock = new Object();

    public Require(Context context, Scriptable scriptable, ModuleScriptProvider moduleScriptProvider, Script script, Script script2, boolean z) {
        this.moduleScriptProvider = moduleScriptProvider;
        this.nativeScope = scriptable;
        this.sandboxed = z;
        this.preExec = script;
        this.postExec = script2;
        setPrototype(ScriptableObject.getFunctionPrototype(scriptable));
        if (!z) {
            this.paths = context.newArray(scriptable, 0);
            defineReadOnlyProperty(this, "paths", this.paths);
            return;
        }
        this.paths = null;
    }

    private static void defineReadOnlyProperty(ScriptableObject scriptableObject, String str, Object obj) {
        ScriptableObject.putProperty(scriptableObject, str, obj);
        scriptableObject.setAttributes(str, 5);
    }

    private Scriptable executeModuleScript(Context context, String str, Scriptable scriptable, ModuleScript moduleScript, boolean z) {
        ScriptableObject scriptableObject = (ScriptableObject) context.newObject(this.nativeScope);
        URI uri = moduleScript.getUri();
        URI base = moduleScript.getBase();
        defineReadOnlyProperty(scriptableObject, "id", str);
        if (!this.sandboxed) {
            defineReadOnlyProperty(scriptableObject, "uri", uri.toString());
        }
        Scriptable moduleScope = new ModuleScope(this.nativeScope, uri, base);
        moduleScope.put("exports", moduleScope, scriptable);
        moduleScope.put("module", moduleScope, scriptableObject);
        scriptableObject.put("exports", scriptableObject, scriptable);
        install(moduleScope);
        if (z) {
            defineReadOnlyProperty(this, "main", scriptableObject);
        }
        executeOptionalScript(this.preExec, context, moduleScope);
        moduleScript.getScript().exec(context, moduleScope);
        executeOptionalScript(this.postExec, context, moduleScope);
        return ScriptRuntime.toObject(context, this.nativeScope, ScriptableObject.getProperty(scriptableObject, "exports"));
    }

    private static void executeOptionalScript(Script script, Context context, Scriptable scriptable) {
        if (script != null) {
            script.exec(context, scriptable);
        }
    }

    private Scriptable getExportedModuleInterface(Context context, String str, URI uri, URI uri2, boolean z) {
        Scriptable scriptable;
        Scriptable scriptable2 = this.exportedModuleInterfaces.get(str);
        if (scriptable2 == null) {
            Map<String, Scriptable> map = loadingModuleInterfaces.get();
            if (map != null && (scriptable = map.get(str)) != null) {
                return scriptable;
            }
            synchronized (this.loadLock) {
                Scriptable scriptable3 = this.exportedModuleInterfaces.get(str);
                if (scriptable3 != null) {
                    return scriptable3;
                }
                ModuleScript module = getModule(context, str, uri, uri2);
                if (!this.sandboxed || module.isSandboxed()) {
                    Scriptable newObject = context.newObject(this.nativeScope);
                    boolean z2 = map == null;
                    Map<String, Scriptable> map2 = map;
                    if (z2) {
                        map2 = new HashMap<>();
                        loadingModuleInterfaces.set(map2);
                    }
                    map2.put(str, newObject);
                    try {
                        Scriptable executeModuleScript = executeModuleScript(context, str, newObject, module, z);
                        if (newObject != executeModuleScript) {
                            map2.put(str, executeModuleScript);
                        } else {
                            executeModuleScript = newObject;
                        }
                        if (z2) {
                            this.exportedModuleInterfaces.putAll(map2);
                            loadingModuleInterfaces.set(null);
                        }
                        return executeModuleScript;
                    } catch (RuntimeException e) {
                        map2.remove(str);
                        throw e;
                    }
                } else {
                    Scriptable scriptable4 = this.nativeScope;
                    throw ScriptRuntime.throwError(context, scriptable4, "Module \"" + str + "\" is not contained in sandbox.");
                }
            }
        } else if (!z) {
            return scriptable2;
        } else {
            throw new IllegalStateException("Attempt to set main module after it was loaded");
        }
    }

    private ModuleScript getModule(Context context, String str, URI uri, URI uri2) {
        try {
            ModuleScript moduleScript = this.moduleScriptProvider.getModuleScript(context, str, uri, uri2, this.paths);
            if (moduleScript != null) {
                return moduleScript;
            }
            Scriptable scriptable = this.nativeScope;
            throw ScriptRuntime.throwError(context, scriptable, "Module \"" + str + "\" not found.");
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw Context.throwAsScriptRuntimeEx(e2);
        }
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        URI uri;
        URI uri2;
        String str;
        if (objArr == null || objArr.length < 1) {
            throw ScriptRuntime.throwError(context, scriptable, "require() needs one argument");
        }
        String str2 = (String) Context.jsToJava(objArr[0], String.class);
        if (!str2.startsWith("./") && !str2.startsWith("../")) {
            str = str2;
            uri = null;
            uri2 = null;
        } else if (!(scriptable2 instanceof ModuleScope)) {
            throw ScriptRuntime.throwError(context, scriptable, "Can't resolve relative module ID \"" + str2 + "\" when require() is used outside of a module");
        } else {
            ModuleScope moduleScope = (ModuleScope) scriptable2;
            URI base = moduleScope.getBase();
            URI uri3 = moduleScope.getUri();
            URI resolve = uri3.resolve(str2);
            if (base == null) {
                str = resolve.toString();
            } else {
                String uri4 = base.relativize(uri3).resolve(str2).toString();
                str = uri4;
                if (uri4.charAt(0) == '.') {
                    if (this.sandboxed) {
                        throw ScriptRuntime.throwError(context, scriptable, "Module \"" + uri4 + "\" is not contained in sandbox.");
                    }
                    str = resolve.toString();
                }
            }
            uri = resolve;
            uri2 = base;
        }
        return getExportedModuleInterface(context, str, uri, uri2, false);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw ScriptRuntime.throwError(context, scriptable, "require() can not be invoked as a constructor");
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getArity() {
        return 1;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String getFunctionName() {
        return MessageCenterInteraction.KEY_PROFILE_REQUIRE;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getLength() {
        return 1;
    }

    public void install(Scriptable scriptable) {
        ScriptableObject.putProperty(scriptable, MessageCenterInteraction.KEY_PROFILE_REQUIRE, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
        if (r11.isAbsolute() == false) goto L_0x008d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.Scriptable requireMain(org.mozilla.javascript.Context r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.commonjs.module.Require.requireMain(org.mozilla.javascript.Context, java.lang.String):org.mozilla.javascript.Scriptable");
    }
}
