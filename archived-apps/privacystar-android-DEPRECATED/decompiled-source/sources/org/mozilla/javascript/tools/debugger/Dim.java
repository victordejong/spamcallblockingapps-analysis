package org.mozilla.javascript.tools.debugger;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.ImporterTopLevel;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeCall;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.debug.DebugFrame;
import org.mozilla.javascript.debug.DebuggableObject;
import org.mozilla.javascript.debug.DebuggableScript;
import org.mozilla.javascript.debug.Debugger;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim.class */
public class Dim {
    public static final int BREAK = 4;
    public static final int EXIT = 5;

    /* renamed from: GO */
    public static final int f837GO = 3;
    private static final int IPROXY_COMPILE_SCRIPT = 2;
    private static final int IPROXY_DEBUG = 0;
    private static final int IPROXY_EVAL_SCRIPT = 3;
    private static final int IPROXY_LISTEN = 1;
    private static final int IPROXY_OBJECT_IDS = 7;
    private static final int IPROXY_OBJECT_PROPERTY = 6;
    private static final int IPROXY_OBJECT_TO_STRING = 5;
    private static final int IPROXY_STRING_IS_COMPILABLE = 4;
    public static final int STEP_INTO = 1;
    public static final int STEP_OUT = 2;
    public static final int STEP_OVER = 0;
    private boolean breakFlag;
    private boolean breakOnEnter;
    private boolean breakOnExceptions;
    private boolean breakOnReturn;
    private GuiCallback callback;
    private ContextFactory contextFactory;
    private StackFrame evalFrame;
    private String evalRequest;
    private String evalResult;
    private boolean insideInterruptLoop;
    private volatile ContextData interruptedContextData;
    private DimIProxy listener;
    private ScopeProvider scopeProvider;
    private SourceProvider sourceProvider;
    private int frameIndex = -1;
    private Object monitor = new Object();
    private Object eventThreadMonitor = new Object();
    private volatile int returnValue = -1;
    private final Map<String, SourceInfo> urlToSourceInfo = Collections.synchronizedMap(new HashMap());
    private final Map<String, FunctionSource> functionNames = Collections.synchronizedMap(new HashMap());
    private final Map<DebuggableScript, FunctionSource> functionToSource = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim$ContextData.class */
    public static class ContextData {
        private boolean breakNextLine;
        private boolean eventThreadFlag;
        private Throwable lastProcessedException;
        private ObjArray frameStack = new ObjArray();
        private int stopAtFrameDepth = -1;

        public static ContextData get(Context context) {
            return (ContextData) context.getDebuggerContextData();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void popFrame() {
            this.frameStack.pop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void pushFrame(StackFrame stackFrame) {
            this.frameStack.push(stackFrame);
        }

        public int frameCount() {
            return this.frameStack.size();
        }

        public StackFrame getFrame(int i) {
            return (StackFrame) this.frameStack.get((this.frameStack.size() - i) - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim$DimIProxy.class */
    public static class DimIProxy implements ContextAction, ContextFactory.Listener, Debugger {
        private boolean booleanResult;
        private Dim dim;

        /* renamed from: id */
        private Object f838id;
        private Object object;
        private Object[] objectArrayResult;
        private Object objectResult;
        private String stringResult;
        private String text;
        private int type;
        private String url;

        private DimIProxy(Dim dim, int i) {
            this.dim = dim;
            this.type = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void withContext() {
            this.dim.contextFactory.call(this);
        }

        @Override // org.mozilla.javascript.ContextFactory.Listener
        public void contextCreated(Context context) {
            if (this.type != 1) {
                Kit.codeBug();
            }
            context.setDebugger(new DimIProxy(this.dim, 0), new ContextData());
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(-1);
        }

        @Override // org.mozilla.javascript.ContextFactory.Listener
        public void contextReleased(Context context) {
            if (this.type != 1) {
                Kit.codeBug();
            }
        }

        @Override // org.mozilla.javascript.debug.Debugger
        public DebugFrame getFrame(Context context, DebuggableScript debuggableScript) {
            if (this.type != 0) {
                Kit.codeBug();
            }
            FunctionSource functionSource = this.dim.getFunctionSource(debuggableScript);
            if (functionSource == null) {
                return null;
            }
            return new StackFrame(context, this.dim, functionSource);
        }

        @Override // org.mozilla.javascript.debug.Debugger
        public void handleCompilationDone(Context context, DebuggableScript debuggableScript, String str) {
            if (this.type != 0) {
                Kit.codeBug();
            }
            if (debuggableScript.isTopLevel()) {
                this.dim.registerTopScript(debuggableScript, str);
            }
        }

        @Override // org.mozilla.javascript.ContextAction
        public Object run(Context context) {
            switch (this.type) {
                case 2:
                    context.compileString(this.text, this.url, 1, null);
                    return null;
                case 3:
                    Scriptable scope = this.dim.scopeProvider != null ? this.dim.scopeProvider.getScope() : null;
                    Scriptable scriptable = scope;
                    if (scope == null) {
                        scriptable = new ImporterTopLevel(context);
                    }
                    context.evaluateString(scriptable, this.text, this.url, 1, null);
                    return null;
                case 4:
                    this.booleanResult = context.stringIsCompilableUnit(this.text);
                    return null;
                case 5:
                    if (this.object == Undefined.instance) {
                        this.stringResult = "undefined";
                        return null;
                    } else if (this.object == null) {
                        this.stringResult = "null";
                        return null;
                    } else if (this.object instanceof NativeCall) {
                        this.stringResult = "[object Call]";
                        return null;
                    } else {
                        this.stringResult = Context.toString(this.object);
                        return null;
                    }
                case 6:
                    this.objectResult = this.dim.getObjectPropertyImpl(context, this.object, this.f838id);
                    return null;
                case 7:
                    this.objectArrayResult = this.dim.getObjectIdsImpl(context, this.object);
                    return null;
                default:
                    throw Kit.codeBug();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim$FunctionSource.class */
    public static class FunctionSource {
        private int firstLine;
        private String name;
        private SourceInfo sourceInfo;

        private FunctionSource(SourceInfo sourceInfo, int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.sourceInfo = sourceInfo;
            this.firstLine = i;
            this.name = str;
        }

        public int firstLine() {
            return this.firstLine;
        }

        public String name() {
            return this.name;
        }

        public SourceInfo sourceInfo() {
            return this.sourceInfo;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim$SourceInfo.class */
    public static class SourceInfo {
        private static final boolean[] EMPTY_BOOLEAN_ARRAY = new boolean[0];
        private boolean[] breakableLines;
        private boolean[] breakpoints;
        private FunctionSource[] functionSources;
        private String source;
        private String url;

        /* JADX WARN: Multi-variable type inference failed */
        private SourceInfo(String str, DebuggableScript[] debuggableScriptArr, String str2) {
            int i;
            this.source = str;
            this.url = str2;
            int length = debuggableScriptArr.length;
            int[] iArr = new int[length];
            for (int i2 = 0; i2 != length; i2++) {
                iArr[i2] = debuggableScriptArr[i2].getLineNumbers();
            }
            int[] iArr2 = new int[length];
            int i3 = 0;
            int i4 = 0;
            int i5 = -1;
            while (true) {
                int i6 = 1;
                if (i3 == length) {
                    break;
                }
                Object[] objArr = iArr[i3];
                if (objArr == 0 || objArr.length == 0) {
                    iArr2[i3] = -1;
                    i5 = i5;
                } else {
                    char c = objArr[0];
                    int i7 = c;
                    int i8 = c;
                    while (i6 != objArr.length) {
                        char c2 = objArr[i6];
                        if (c2 < i8) {
                            i = c2;
                            i7 = i7;
                        } else {
                            i = i8;
                            i7 = i7;
                            if (c2 > i7) {
                                i7 = c2;
                                i = i8;
                            }
                        }
                        i6++;
                        i8 = i;
                    }
                    iArr2[i3] = i8;
                    if (i4 > i5) {
                        i4 = i8;
                    } else {
                        i4 = i8 < i4 ? i8 : i4;
                        i4 = i4;
                        i5 = i5;
                        if (i7 <= i5) {
                        }
                    }
                    i5 = i7;
                }
                i3++;
            }
            if (i4 > i5) {
                this.breakableLines = EMPTY_BOOLEAN_ARRAY;
                this.breakpoints = EMPTY_BOOLEAN_ARRAY;
            } else if (i4 < 0) {
                throw new IllegalStateException(String.valueOf(i4));
            } else {
                int i9 = i5 + 1;
                this.breakableLines = new boolean[i9];
                this.breakpoints = new boolean[i9];
                for (int i10 = 0; i10 != length; i10++) {
                    Object[] objArr2 = iArr[i10];
                    if (!(objArr2 == 0 || objArr2.length == 0)) {
                        for (int i11 = 0; i11 != objArr2.length; i11++) {
                            this.breakableLines[objArr2[i11]] = true;
                        }
                    }
                }
            }
            this.functionSources = new FunctionSource[length];
            for (int i12 = 0; i12 != length; i12++) {
                String functionName = debuggableScriptArr[i12].getFunctionName();
                String str3 = functionName;
                if (functionName == null) {
                    str3 = "";
                }
                this.functionSources[i12] = new FunctionSource(this, iArr2[i12], str3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyBreakpointsFrom(SourceInfo sourceInfo) {
            int length = sourceInfo.breakpoints.length;
            int i = length;
            if (length > this.breakpoints.length) {
                i = this.breakpoints.length;
            }
            for (int i2 = 0; i2 != i; i2++) {
                if (sourceInfo.breakpoints[i2]) {
                    this.breakpoints[i2] = true;
                }
            }
        }

        public boolean breakableLine(int i) {
            return i < this.breakableLines.length && this.breakableLines[i];
        }

        public boolean breakpoint(int i) {
            if (!breakableLine(i)) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            return i < this.breakpoints.length && this.breakpoints[i];
        }

        public boolean breakpoint(int i, boolean z) {
            boolean z2;
            if (!breakableLine(i)) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            synchronized (this.breakpoints) {
                if (this.breakpoints[i] != z) {
                    this.breakpoints[i] = z;
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            return z2;
        }

        public FunctionSource functionSource(int i) {
            return this.functionSources[i];
        }

        public int functionSourcesTop() {
            return this.functionSources.length;
        }

        public void removeAllBreakpoints() {
            synchronized (this.breakpoints) {
                for (int i = 0; i != this.breakpoints.length; i++) {
                    this.breakpoints[i] = false;
                }
            }
        }

        public String source() {
            return this.source;
        }

        public String url() {
            return this.url;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Dim$StackFrame.class */
    public static class StackFrame implements DebugFrame {
        private boolean[] breakpoints;
        private ContextData contextData;
        private Dim dim;
        private FunctionSource fsource;
        private int lineNumber;
        private Scriptable scope;
        private Scriptable thisObj;

        private StackFrame(Context context, Dim dim, FunctionSource functionSource) {
            this.dim = dim;
            this.contextData = ContextData.get(context);
            this.fsource = functionSource;
            this.breakpoints = functionSource.sourceInfo().breakpoints;
            this.lineNumber = functionSource.firstLine();
        }

        public ContextData contextData() {
            return this.contextData;
        }

        public String getFunctionName() {
            return this.fsource.name();
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public String getUrl() {
            return this.fsource.sourceInfo().url();
        }

        @Override // org.mozilla.javascript.debug.DebugFrame
        public void onDebuggerStatement(Context context) {
            this.dim.handleBreakpointHit(this, context);
        }

        @Override // org.mozilla.javascript.debug.DebugFrame
        public void onEnter(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            this.contextData.pushFrame(this);
            this.scope = scriptable;
            this.thisObj = scriptable2;
            if (this.dim.breakOnEnter) {
                this.dim.handleBreakpointHit(this, context);
            }
        }

        @Override // org.mozilla.javascript.debug.DebugFrame
        public void onExceptionThrown(Context context, Throwable th) {
            this.dim.handleExceptionThrown(context, th, this);
        }

        @Override // org.mozilla.javascript.debug.DebugFrame
        public void onExit(Context context, boolean z, Object obj) {
            if (this.dim.breakOnReturn && !z) {
                this.dim.handleBreakpointHit(this, context);
            }
            this.contextData.popFrame();
        }

        @Override // org.mozilla.javascript.debug.DebugFrame
        public void onLineChange(Context context, int i) {
            this.lineNumber = i;
            if (!this.breakpoints[i] && !this.dim.breakFlag) {
                boolean z = this.contextData.breakNextLine;
                boolean z2 = z;
                if (z) {
                    z2 = z;
                    if (this.contextData.stopAtFrameDepth >= 0) {
                        z2 = this.contextData.frameCount() <= this.contextData.stopAtFrameDepth;
                    }
                }
                if (z2) {
                    this.contextData.stopAtFrameDepth = -1;
                    this.contextData.breakNextLine = false;
                } else {
                    return;
                }
            }
            this.dim.handleBreakpointHit(this, context);
        }

        public Object scope() {
            return this.scope;
        }

        public SourceInfo sourceInfo() {
            return this.fsource.sourceInfo();
        }

        public Object thisObj() {
            return this.thisObj;
        }
    }

    private static void collectFunctions_r(DebuggableScript debuggableScript, ObjArray objArray) {
        objArray.add(debuggableScript);
        for (int i = 0; i != debuggableScript.getFunctionCount(); i++) {
            collectFunctions_r(debuggableScript.getFunction(i), objArray);
        }
    }

    /* JADX WARN: Finally extract failed */
    private static String do_eval(Context context, StackFrame stackFrame, String str) {
        String str2;
        Debugger debugger = context.getDebugger();
        Object debuggerContextData = context.getDebuggerContextData();
        int optimizationLevel = context.getOptimizationLevel();
        context.setDebugger(null, null);
        context.setOptimizationLevel(-1);
        context.setGeneratingDebug(false);
        try {
            try {
                Object call = ((Callable) context.compileString(str, "", 0, null)).call(context, stackFrame.scope, stackFrame.thisObj, ScriptRuntime.emptyArgs);
                str2 = call == Undefined.instance ? "" : ScriptRuntime.toString(call);
            } catch (Exception e) {
                str2 = e.getMessage();
            }
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(optimizationLevel);
            context.setDebugger(debugger, debuggerContextData);
            String str3 = str2;
            if (str2 == null) {
                str3 = "null";
            }
            return str3;
        } catch (Throwable th) {
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(optimizationLevel);
            context.setDebugger(debugger, debuggerContextData);
            throw th;
        }
    }

    private FunctionSource functionSource(DebuggableScript debuggableScript) {
        return this.functionToSource.get(debuggableScript);
    }

    private static DebuggableScript[] getAllFunctions(DebuggableScript debuggableScript) {
        ObjArray objArray = new ObjArray();
        collectFunctions_r(debuggableScript, objArray);
        DebuggableScript[] debuggableScriptArr = new DebuggableScript[objArray.size()];
        objArray.toArray(debuggableScriptArr);
        return debuggableScriptArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FunctionSource getFunctionSource(DebuggableScript debuggableScript) {
        FunctionSource functionSource = functionSource(debuggableScript);
        FunctionSource functionSource2 = functionSource;
        if (functionSource == null) {
            String normalizedUrl = getNormalizedUrl(debuggableScript);
            functionSource2 = functionSource;
            if (sourceInfo(normalizedUrl) == null) {
                functionSource2 = functionSource;
                if (!debuggableScript.isGeneratedScript()) {
                    String loadSource = loadSource(normalizedUrl);
                    functionSource2 = functionSource;
                    if (loadSource != null) {
                        DebuggableScript debuggableScript2 = debuggableScript;
                        while (true) {
                            DebuggableScript parent = debuggableScript2.getParent();
                            if (parent == null) {
                                break;
                            }
                            debuggableScript2 = parent;
                        }
                        registerTopScript(debuggableScript2, loadSource);
                        functionSource2 = functionSource(debuggableScript);
                    }
                }
            }
        }
        return functionSource2;
    }

    private String getNormalizedUrl(DebuggableScript debuggableScript) {
        String str;
        String str2;
        char charAt;
        String sourceName = debuggableScript.getSourceName();
        if (sourceName == null) {
            str = "<stdin>";
        } else {
            int length = sourceName.length();
            StringBuilder sb = null;
            int i = 0;
            while (true) {
                int indexOf = sourceName.indexOf(35, i);
                if (indexOf < 0) {
                    break;
                }
                int i2 = indexOf + 1;
                int i3 = i2;
                while (i3 != length && '0' <= (charAt = sourceName.charAt(i3)) && charAt <= '9') {
                    i3++;
                }
                if (i3 == i2 || !"(eval)".regionMatches(0, sourceName, i3, 6)) {
                    str2 = null;
                } else {
                    i = i3 + 6;
                    str2 = "(eval)";
                }
                if (str2 == null) {
                    break;
                }
                StringBuilder sb2 = sb;
                if (sb == null) {
                    sb2 = new StringBuilder();
                    sb2.append(sourceName.substring(0, indexOf));
                }
                sb2.append(str2);
                sb = sb2;
            }
            str = sourceName;
            if (sb != null) {
                if (i != length) {
                    sb.append(sourceName.substring(i));
                }
                str = sb.toString();
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] getObjectIdsImpl(Context context, Object obj) {
        if (!(obj instanceof Scriptable) || obj == Undefined.instance) {
            return Context.emptyArgs;
        }
        Scriptable scriptable = (Scriptable) obj;
        Object[] allIds = scriptable instanceof DebuggableObject ? ((DebuggableObject) scriptable).getAllIds() : scriptable.getIds();
        Scriptable prototype = scriptable.getPrototype();
        Scriptable parentScope = scriptable.getParentScope();
        char c = 1;
        int i = prototype != null ? 1 : 0;
        int i2 = i;
        if (parentScope != null) {
            i2 = i + 1;
        }
        Object[] objArr = allIds;
        if (i2 != 0) {
            objArr = new Object[allIds.length + i2];
            System.arraycopy(allIds, 0, objArr, i2, allIds.length);
            if (prototype != null) {
                objArr[0] = "__proto__";
            } else {
                c = 0;
            }
            if (parentScope != null) {
                objArr[c] = "__parent__";
            }
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getObjectPropertyImpl(Context context, Object obj, Object obj2) {
        Object obj3;
        Scriptable scriptable = (Scriptable) obj;
        if (obj2 instanceof String) {
            String str = (String) obj2;
            obj3 = scriptable;
            if (!str.equals("this")) {
                if (str.equals("__proto__")) {
                    obj3 = scriptable.getPrototype();
                } else if (str.equals("__parent__")) {
                    obj3 = scriptable.getParentScope();
                } else {
                    Object property = ScriptableObject.getProperty(scriptable, str);
                    obj3 = property;
                    if (property == ScriptableObject.NOT_FOUND) {
                        obj3 = Undefined.instance;
                    }
                }
            }
        } else {
            Object property2 = ScriptableObject.getProperty(scriptable, ((Integer) obj2).intValue());
            obj3 = property2;
            if (property2 == ScriptableObject.NOT_FOUND) {
                obj3 = Undefined.instance;
            }
        }
        return obj3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBreakpointHit(StackFrame stackFrame, Context context) {
        this.breakFlag = false;
        interrupted(context, stackFrame, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleExceptionThrown(Context context, Throwable th, StackFrame stackFrame) {
        if (this.breakOnExceptions) {
            ContextData contextData = stackFrame.contextData();
            if (contextData.lastProcessedException != th) {
                interrupted(context, stackFrame, th);
                contextData.lastProcessedException = th;
            }
        }
    }

    private void interrupted(Context context, StackFrame stackFrame, Throwable th) {
        boolean z;
        int i;
        ContextData contextData = stackFrame.contextData();
        boolean isGuiEventThread = this.callback.isGuiEventThread();
        contextData.eventThreadFlag = isGuiEventThread;
        synchronized (this.eventThreadMonitor) {
            if (!isGuiEventThread) {
                while (this.interruptedContextData != null) {
                    try {
                        this.eventThreadMonitor.wait();
                    } catch (InterruptedException e) {
                        return;
                    }
                }
            } else if (this.interruptedContextData != null) {
                z = true;
            }
            this.interruptedContextData = contextData;
            z = false;
        }
        if (!z) {
            if (this.interruptedContextData == null) {
                Kit.codeBug();
            }
            try {
                this.frameIndex = contextData.frameCount() - 1;
                String thread = Thread.currentThread().toString();
                String th2 = th == null ? null : th.toString();
                if (!isGuiEventThread) {
                    synchronized (this.monitor) {
                        if (this.insideInterruptLoop) {
                            Kit.codeBug();
                        }
                        this.insideInterruptLoop = true;
                        this.evalRequest = null;
                        this.returnValue = -1;
                        this.callback.enterInterrupt(stackFrame, thread, th2);
                        while (true) {
                            try {
                                this.monitor.wait();
                                if (this.evalRequest != null) {
                                    this.evalResult = null;
                                    this.evalResult = do_eval(context, this.evalFrame, this.evalRequest);
                                    this.evalRequest = null;
                                    this.evalFrame = null;
                                    this.monitor.notify();
                                } else if (this.returnValue != -1) {
                                    break;
                                }
                            } catch (InterruptedException e2) {
                                Thread.currentThread().interrupt();
                                i = -1;
                            }
                        }
                        i = this.returnValue;
                        this.insideInterruptLoop = false;
                    }
                } else {
                    this.returnValue = -1;
                    this.callback.enterInterrupt(stackFrame, thread, th2);
                    while (this.returnValue == -1) {
                        try {
                            this.callback.dispatchNextGuiEvent();
                        } catch (InterruptedException e3) {
                        }
                    }
                    i = this.returnValue;
                }
                switch (i) {
                    case 0:
                        contextData.breakNextLine = true;
                        contextData.stopAtFrameDepth = contextData.frameCount();
                        break;
                    case 1:
                        contextData.breakNextLine = true;
                        contextData.stopAtFrameDepth = -1;
                        break;
                    case 2:
                        if (contextData.frameCount() > 1) {
                            contextData.breakNextLine = true;
                            contextData.stopAtFrameDepth = contextData.frameCount() - 1;
                            break;
                        }
                        break;
                }
                synchronized (this.eventThreadMonitor) {
                    this.interruptedContextData = null;
                    this.eventThreadMonitor.notifyAll();
                }
            } catch (Throwable th3) {
                synchronized (this.eventThreadMonitor) {
                    this.interruptedContextData = null;
                    this.eventThreadMonitor.notifyAll();
                    throw th3;
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:2|(1:4)|5|105|6|7|(15:9|103|10|(13:16|17|18|19|20|21|22|23|24|25|26|27|(11:29|30|31|32|33|93|94|107|95|100|101))|34|35|36|37|38|39|(9:41|42|43|93|94|107|95|100|101)|44|45|(12:47|48|49|50|51|52|53|54|55|56|57|58)(3:60|61|(12:63|64|65|66|67|68|69|70|71|72|73|74)(11:75|76|77|78|79|80|81|82|83|84|85))|59)|86|87|88|89|90|91|92|93|94|107|95|100|101|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x018f, code lost:
        r8 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ac, code lost:
        r0 = java.lang.System.err;
        r0.println("Failed to load source from " + r7 + ": " + r8);
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0173 -> B:93:0x0178). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String loadSource(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.debugger.Dim.loadSource(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerTopScript(DebuggableScript debuggableScript, String str) {
        int i;
        String source;
        if (!debuggableScript.isTopLevel()) {
            throw new IllegalArgumentException();
        }
        String normalizedUrl = getNormalizedUrl(debuggableScript);
        DebuggableScript[] allFunctions = getAllFunctions(debuggableScript);
        if (!(this.sourceProvider == null || (source = this.sourceProvider.getSource(debuggableScript)) == null)) {
            str = source;
        }
        SourceInfo sourceInfo = new SourceInfo(str, allFunctions, normalizedUrl);
        synchronized (this.urlToSourceInfo) {
            SourceInfo sourceInfo2 = this.urlToSourceInfo.get(normalizedUrl);
            if (sourceInfo2 != null) {
                sourceInfo.copyBreakpointsFrom(sourceInfo2);
            }
            this.urlToSourceInfo.put(normalizedUrl, sourceInfo);
            for (int i2 = 0; i2 != sourceInfo.functionSourcesTop(); i2++) {
                FunctionSource functionSource = sourceInfo.functionSource(i2);
                String name = functionSource.name();
                if (name.length() != 0) {
                    this.functionNames.put(name, functionSource);
                }
            }
        }
        synchronized (this.functionToSource) {
            for (i = 0; i != allFunctions.length; i++) {
                this.functionToSource.put(allFunctions[i], sourceInfo.functionSource(i));
            }
        }
        this.callback.updateSourceText(sourceInfo);
    }

    public void attachTo(ContextFactory contextFactory) {
        detach();
        this.contextFactory = contextFactory;
        this.listener = new DimIProxy(1);
        contextFactory.addListener(this.listener);
    }

    public void clearAllBreakpoints() {
        for (SourceInfo sourceInfo : this.urlToSourceInfo.values()) {
            sourceInfo.removeAllBreakpoints();
        }
    }

    public void compileScript(String str, String str2) {
        DimIProxy dimIProxy = new DimIProxy(2);
        dimIProxy.url = str;
        dimIProxy.text = str2;
        dimIProxy.withContext();
    }

    public void contextSwitch(int i) {
        this.frameIndex = i;
    }

    public ContextData currentContextData() {
        return this.interruptedContextData;
    }

    public void detach() {
        if (this.listener != null) {
            this.contextFactory.removeListener(this.listener);
            this.contextFactory = null;
            this.listener = null;
        }
    }

    public void dispose() {
        detach();
    }

    public String eval(String str) {
        ContextData currentContextData;
        String str2 = "undefined";
        if (str == null || (currentContextData = currentContextData()) == null || this.frameIndex >= currentContextData.frameCount()) {
            return "undefined";
        }
        StackFrame frame = currentContextData.getFrame(this.frameIndex);
        if (currentContextData.eventThreadFlag) {
            str2 = do_eval(Context.getCurrentContext(), frame, str);
        } else {
            synchronized (this.monitor) {
                if (this.insideInterruptLoop) {
                    this.evalRequest = str;
                    this.evalFrame = frame;
                    this.monitor.notify();
                    do {
                        try {
                            this.monitor.wait();
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                        }
                    } while (this.evalRequest != null);
                    str2 = this.evalResult;
                }
            }
        }
        return str2;
    }

    public void evalScript(String str, String str2) {
        DimIProxy dimIProxy = new DimIProxy(3);
        dimIProxy.url = str;
        dimIProxy.text = str2;
        dimIProxy.withContext();
    }

    public String[] functionNames() {
        String[] strArr;
        synchronized (this.urlToSourceInfo) {
            strArr = (String[]) this.functionNames.keySet().toArray(new String[this.functionNames.size()]);
        }
        return strArr;
    }

    public FunctionSource functionSourceByName(String str) {
        return this.functionNames.get(str);
    }

    public Object[] getObjectIds(Object obj) {
        DimIProxy dimIProxy = new DimIProxy(7);
        dimIProxy.object = obj;
        dimIProxy.withContext();
        return dimIProxy.objectArrayResult;
    }

    public Object getObjectProperty(Object obj, Object obj2) {
        DimIProxy dimIProxy = new DimIProxy(6);
        dimIProxy.object = obj;
        dimIProxy.f838id = obj2;
        dimIProxy.withContext();
        return dimIProxy.objectResult;
    }

    /* renamed from: go */
    public void m215go() {
        synchronized (this.monitor) {
            this.returnValue = 3;
            this.monitor.notifyAll();
        }
    }

    public String objectToString(Object obj) {
        DimIProxy dimIProxy = new DimIProxy(5);
        dimIProxy.object = obj;
        dimIProxy.withContext();
        return dimIProxy.stringResult;
    }

    public void setBreak() {
        this.breakFlag = true;
    }

    public void setBreakOnEnter(boolean z) {
        this.breakOnEnter = z;
    }

    public void setBreakOnExceptions(boolean z) {
        this.breakOnExceptions = z;
    }

    public void setBreakOnReturn(boolean z) {
        this.breakOnReturn = z;
    }

    public void setGuiCallback(GuiCallback guiCallback) {
        this.callback = guiCallback;
    }

    public void setReturnValue(int i) {
        synchronized (this.monitor) {
            this.returnValue = i;
            this.monitor.notify();
        }
    }

    public void setScopeProvider(ScopeProvider scopeProvider) {
        this.scopeProvider = scopeProvider;
    }

    public void setSourceProvider(SourceProvider sourceProvider) {
        this.sourceProvider = sourceProvider;
    }

    public SourceInfo sourceInfo(String str) {
        return this.urlToSourceInfo.get(str);
    }

    public boolean stringIsCompilableUnit(String str) {
        DimIProxy dimIProxy = new DimIProxy(4);
        dimIProxy.text = str;
        dimIProxy.withContext();
        return dimIProxy.booleanResult;
    }
}
