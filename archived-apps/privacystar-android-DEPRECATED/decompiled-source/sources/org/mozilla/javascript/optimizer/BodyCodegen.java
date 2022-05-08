package org.mozilla.javascript.optimizer;

import android.support.p001v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.mozilla.classfile.ByteCode;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.ScriptNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/BodyCodegen.class */
public class BodyCodegen {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ECMAERROR_EXCEPTION = 2;
    private static final int EVALUATOR_EXCEPTION = 1;
    private static final int EXCEPTION_MAX = 5;
    private static final int FINALLY_EXCEPTION = 4;
    static final int GENERATOR_START = 0;
    static final int GENERATOR_TERMINATE = -1;
    static final int GENERATOR_YIELD_START = 1;
    private static final int JAVASCRIPT_EXCEPTION = 0;
    private static final int MAX_LOCALS = 1024;
    private static final int THROWABLE_EXCEPTION = 3;
    private short argsLocal;
    ClassFileWriter cfw;
    Codegen codegen;
    CompilerEnvirons compilerEnv;
    private short contextLocal;
    private int enterAreaStartLabel;
    private int epilogueLabel;
    private Map<Node, FinallyReturnPoint> finallys;
    private short firstFreeLocal;
    private OptFunctionNode fnCurrent;
    private short funObjLocal;
    private short generatorStateLocal;
    private int generatorSwitch;
    private boolean hasVarsInRegs;
    private boolean inDirectCallFunction;
    private boolean inLocalBlock;
    private boolean isGenerator;
    private boolean itsForcedObjectParameters;
    private int itsLineNumber;
    private short itsOneArgArray;
    private short itsZeroArgArray;
    private List<Node> literals;
    private int[] locals;
    private short localsMax;
    private short operationLocal;
    private short popvLocal;
    private int savedCodeOffset;
    ScriptNode scriptOrFn;
    public int scriptOrFnIndex;
    private short thisObjLocal;
    private short[] varRegisters;
    private short variableObjectLocal;
    private ExceptionManager exceptionManager = new ExceptionManager();
    private int maxLocals = 0;
    private int maxStack = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager.class */
    public class ExceptionManager {
        private LinkedList<ExceptionInfo> exceptionInfo = new LinkedList<>();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo.class */
        public class ExceptionInfo {
            Node finallyBlock;
            Jump node;
            int[] handlerLabels = new int[5];
            int[] exceptionStarts = new int[5];
            Node currentFinally = null;

            ExceptionInfo(Jump jump, Node node) {
                this.node = jump;
                this.finallyBlock = node;
            }
        }

        ExceptionManager() {
        }

        private void endCatch(ExceptionInfo exceptionInfo, int i, int i2) {
            if (exceptionInfo.exceptionStarts[i] == 0) {
                throw new IllegalStateException("bad exception start");
            }
            if (BodyCodegen.this.cfw.getLabelPC(exceptionInfo.exceptionStarts[i]) != BodyCodegen.this.cfw.getLabelPC(i2)) {
                BodyCodegen.this.cfw.addExceptionHandler(exceptionInfo.exceptionStarts[i], i2, exceptionInfo.handlerLabels[i], BodyCodegen.this.exceptionTypeToName(i));
            }
        }

        private ExceptionInfo getTop() {
            return this.exceptionInfo.getLast();
        }

        void addHandler(int i, int i2, int i3) {
            ExceptionInfo top = getTop();
            top.handlerLabels[i] = i2;
            top.exceptionStarts[i] = i3;
        }

        void markInlineFinallyEnd(Node node, int i) {
            ListIterator<ExceptionInfo> listIterator = this.exceptionInfo.listIterator(this.exceptionInfo.size());
            while (listIterator.hasPrevious()) {
                ExceptionInfo previous = listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (previous.handlerLabels[i2] != 0 && previous.currentFinally == node) {
                        previous.exceptionStarts[i2] = i;
                        previous.currentFinally = null;
                    }
                }
                if (previous.finallyBlock == node) {
                    return;
                }
            }
        }

        void markInlineFinallyStart(Node node, int i) {
            ListIterator<ExceptionInfo> listIterator = this.exceptionInfo.listIterator(this.exceptionInfo.size());
            while (listIterator.hasPrevious()) {
                ExceptionInfo previous = listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (previous.handlerLabels[i2] != 0 && previous.currentFinally == null) {
                        endCatch(previous, i2, i);
                        previous.exceptionStarts[i2] = 0;
                        previous.currentFinally = node;
                    }
                }
                if (previous.finallyBlock == node) {
                    return;
                }
            }
        }

        void popExceptionInfo() {
            this.exceptionInfo.removeLast();
        }

        void pushExceptionInfo(Jump jump) {
            this.exceptionInfo.add(new ExceptionInfo(jump, BodyCodegen.this.getFinallyAtTarget(jump.getFinally())));
        }

        int removeHandler(int i, int i2) {
            ExceptionInfo top = getTop();
            if (top.handlerLabels[i] == 0) {
                return 0;
            }
            int i3 = top.handlerLabels[i];
            endCatch(top, i, i2);
            top.handlerLabels[i] = 0;
            return i3;
        }

        void setHandlers(int[] iArr, int i) {
            getTop();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] != 0) {
                    addHandler(i2, iArr[i2], i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint.class */
    public static class FinallyReturnPoint {
        public List<Integer> jsrPoints = new ArrayList();
        public int tableLabel = 0;

        FinallyReturnPoint() {
        }
    }

    private void addDoubleWrap() {
        addOptRuntimeInvoke("wrapDouble", "(D)Ljava/lang/Double;");
    }

    private void addGoto(Node node, int i) {
        this.cfw.add(i, getTargetLabel(node));
    }

    private void addGotoWithReturn(Node node) {
        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node);
        this.cfw.addLoadConstant(finallyReturnPoint.jsrPoints.size());
        addGoto(node, 167);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        finallyReturnPoint.jsrPoints.add(Integer.valueOf(acquireLabel));
    }

    private void addInstructionCount() {
        addInstructionCount(Math.max(this.cfw.getCurrentCodeOffset() - this.savedCodeOffset, 1));
    }

    private void addInstructionCount(int i) {
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(i);
        addScriptRuntimeInvoke("addInstructionCount", "(Lorg/mozilla/javascript/Context;I)V");
    }

    private void addJumpedBooleanWrap(int i, int i2) {
        this.cfw.markLabel(i2);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
        this.cfw.add(167, acquireLabel);
        this.cfw.markLabel(i);
        this.cfw.add(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
        this.cfw.markLabel(acquireLabel);
        this.cfw.adjustStackTop(-1);
    }

    private void addLoadPropertyIds(Object[] objArr, int i) {
        addNewObjectArray(i);
        for (int i2 = 0; i2 != i; i2++) {
            this.cfw.add(89);
            this.cfw.addPush(i2);
            Object obj = objArr[i2];
            if (obj instanceof String) {
                this.cfw.addPush((String) obj);
            } else {
                this.cfw.addPush(((Integer) obj).intValue());
                addScriptRuntimeInvoke("wrapInt", "(I)Ljava/lang/Integer;");
            }
            this.cfw.add(83);
        }
    }

    private void addLoadPropertyValues(Node node, Node node2, int i) {
        if (this.isGenerator) {
            for (int i2 = 0; i2 != i; i2++) {
                int type = node2.getType();
                if (type == 151 || type == 152) {
                    generateExpression(node2.getFirstChild(), node);
                } else {
                    generateExpression(node2, node);
                }
                node2 = node2.getNext();
            }
            addNewObjectArray(i);
            for (int i3 = 0; i3 != i; i3++) {
                this.cfw.add(90);
                this.cfw.add(95);
                this.cfw.addPush((i - i3) - 1);
                this.cfw.add(95);
                this.cfw.add(83);
            }
            return;
        }
        addNewObjectArray(i);
        for (int i4 = 0; i4 != i; i4++) {
            this.cfw.add(89);
            this.cfw.addPush(i4);
            int type2 = node2.getType();
            if (type2 == 151 || type2 == 152) {
                generateExpression(node2.getFirstChild(), node);
            } else {
                generateExpression(node2, node);
            }
            this.cfw.add(83);
            node2 = node2.getNext();
        }
    }

    private void addNewObjectArray(int i) {
        if (i != 0) {
            this.cfw.addPush(i);
            this.cfw.add(189, "java/lang/Object");
        } else if (this.itsZeroArgArray >= 0) {
            this.cfw.addALoad(this.itsZeroArgArray);
        } else {
            this.cfw.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        }
    }

    private void addObjectToDouble() {
        addScriptRuntimeInvoke("toNumber", "(Ljava/lang/Object;)D");
    }

    private void addOptRuntimeInvoke(String str, String str2) {
        this.cfw.addInvoke(184, "org/mozilla/javascript/optimizer/OptRuntime", str, str2);
    }

    private void addScriptRuntimeInvoke(String str, String str2) {
        this.cfw.addInvoke(184, "org.mozilla.javascript.ScriptRuntime", str, str2);
    }

    private void dcpLoadAsNumber(int i) {
        this.cfw.addALoad(i);
        this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(165, acquireLabel);
        short stackTop = this.cfw.getStackTop();
        this.cfw.addALoad(i);
        addObjectToDouble();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(167, acquireLabel2);
        this.cfw.markLabel(acquireLabel, stackTop);
        this.cfw.addDLoad(i + 1);
        this.cfw.markLabel(acquireLabel2);
    }

    private void dcpLoadAsObject(int i) {
        this.cfw.addALoad(i);
        this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(165, acquireLabel);
        short stackTop = this.cfw.getStackTop();
        this.cfw.addALoad(i);
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(167, acquireLabel2);
        this.cfw.markLabel(acquireLabel, stackTop);
        this.cfw.addDLoad(i + 1);
        addDoubleWrap();
        this.cfw.markLabel(acquireLabel2);
    }

    private void decReferenceWordLocal(short s) {
        int[] iArr = this.locals;
        iArr[s] = iArr[s] - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String exceptionTypeToName(int i) {
        if (i == 0) {
            return "org/mozilla/javascript/JavaScriptException";
        }
        if (i == 1) {
            return "org/mozilla/javascript/EvaluatorException";
        }
        if (i == 2) {
            return "org/mozilla/javascript/EcmaError";
        }
        if (i == 3) {
            return "java/lang/Throwable";
        }
        if (i == 4) {
            return null;
        }
        throw Kit.codeBug();
    }

    private void genSimpleCompare(int i, int i2, int i3) {
        if (i2 == -1) {
            throw Codegen.badTree();
        }
        switch (i) {
            case 14:
                this.cfw.add(152);
                this.cfw.add(155, i2);
                break;
            case 15:
                this.cfw.add(152);
                this.cfw.add(158, i2);
                break;
            case 16:
                this.cfw.add(151);
                this.cfw.add(157, i2);
                break;
            case 17:
                this.cfw.add(151);
                this.cfw.add(156, i2);
                break;
            default:
                throw Codegen.badTree();
        }
        if (i3 != -1) {
            this.cfw.add(167, i3);
        }
    }

    private void generateActivationExit() {
        if (this.fnCurrent == null || this.hasVarsInRegs) {
            throw Kit.codeBug();
        }
        this.cfw.addALoad(this.contextLocal);
        addScriptRuntimeInvoke("exitActivationFunction", "(Lorg/mozilla/javascript/Context;)V");
    }

    private void generateArrayLiteralFactory(Node node, int i) {
        initBodyGeneration();
        short s = this.firstFreeLocal;
        this.firstFreeLocal = (short) (s + 1);
        this.argsLocal = s;
        this.localsMax = this.firstFreeLocal;
        this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitArrayLiteral(node, node.getFirstChild(), true);
        this.cfw.add(176);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generateCallArgArray(Node node, Node node2, boolean z) {
        int i = 0;
        for (Node node3 = node2; node3 != null; node3 = node3.getNext()) {
            i++;
        }
        if (i != 1 || this.itsOneArgArray < 0) {
            addNewObjectArray(i);
        } else {
            this.cfw.addALoad(this.itsOneArgArray);
        }
        for (int i2 = 0; i2 != i; i2++) {
            if (!this.isGenerator) {
                this.cfw.add(89);
                this.cfw.addPush(i2);
            }
            if (!z) {
                generateExpression(node2, node);
            } else {
                int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
                if (nodeIsDirectCallParameter >= 0) {
                    dcpLoadAsObject(nodeIsDirectCallParameter);
                } else {
                    generateExpression(node2, node);
                    if (node2.getIntProp(8, -1) == 0) {
                        addDoubleWrap();
                    }
                }
            }
            if (this.isGenerator) {
                short newWordLocal = getNewWordLocal();
                this.cfw.addAStore(newWordLocal);
                this.cfw.add(192, "[Ljava/lang/Object;");
                this.cfw.add(89);
                this.cfw.addPush(i2);
                this.cfw.addALoad(newWordLocal);
                releaseWordLocal(newWordLocal);
            }
            this.cfw.add(83);
            node2 = node2.getNext();
        }
    }

    private void generateCatchBlock(int i, short s, int i2, int i3, int i4) {
        int i5 = i4;
        if (i4 == 0) {
            i5 = this.cfw.acquireLabel();
        }
        this.cfw.markHandler(i5);
        this.cfw.addAStore(i3);
        this.cfw.addALoad(s);
        this.cfw.addAStore(this.variableObjectLocal);
        exceptionTypeToName(i);
        this.cfw.add(167, i2);
    }

    private void generateCheckForThrowOrClose(int i, boolean z, int i2) {
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        this.cfw.addALoad(this.argsLocal);
        generateThrowJavaScriptException();
        this.cfw.markLabel(acquireLabel2);
        this.cfw.addALoad(this.argsLocal);
        this.cfw.add(192, "java/lang/Throwable");
        this.cfw.add(191);
        if (i != -1) {
            this.cfw.markLabel(i);
        }
        if (!z) {
            this.cfw.markTableSwitchCase(this.generatorSwitch, i2);
        }
        this.cfw.addILoad(this.operationLocal);
        this.cfw.addLoadConstant(2);
        this.cfw.add(159, acquireLabel2);
        this.cfw.addILoad(this.operationLocal);
        this.cfw.addLoadConstant(1);
        this.cfw.add(159, acquireLabel);
    }

    private void generateEpilogue() {
        if (this.compilerEnv.isGenerateObserverCount()) {
            addInstructionCount();
        }
        if (this.isGenerator) {
            Map<Node, int[]> liveLocals = ((FunctionNode) this.scriptOrFn).getLiveLocals();
            if (liveLocals != null) {
                List<Node> resumptionPoints = ((FunctionNode) this.scriptOrFn).getResumptionPoints();
                for (int i = 0; i < resumptionPoints.size(); i++) {
                    Node node = resumptionPoints.get(i);
                    int[] iArr = liveLocals.get(node);
                    if (iArr != null) {
                        this.cfw.markTableSwitchCase(this.generatorSwitch, getNextGeneratorState(node));
                        generateGetGeneratorLocalsState();
                        for (int i2 = 0; i2 < iArr.length; i2++) {
                            this.cfw.add(89);
                            this.cfw.addLoadConstant(i2);
                            this.cfw.add(50);
                            this.cfw.addAStore(iArr[i2]);
                        }
                        this.cfw.add(87);
                        this.cfw.add(167, getTargetLabel(node));
                    }
                }
            }
            if (this.finallys != null) {
                for (Node node2 : this.finallys.keySet()) {
                    if (node2.getType() == 125) {
                        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node2);
                        this.cfw.markLabel(finallyReturnPoint.tableLabel, (short) 1);
                        int addTableSwitch = this.cfw.addTableSwitch(0, finallyReturnPoint.jsrPoints.size() - 1);
                        this.cfw.markTableSwitchDefault(addTableSwitch);
                        int i3 = 0;
                        for (int i4 = 0; i4 < finallyReturnPoint.jsrPoints.size(); i4++) {
                            this.cfw.markTableSwitchCase(addTableSwitch, i3);
                            this.cfw.add(167, finallyReturnPoint.jsrPoints.get(i4).intValue());
                            i3++;
                        }
                    }
                }
            }
        }
        if (this.epilogueLabel != -1) {
            this.cfw.markLabel(this.epilogueLabel);
        }
        if (this.hasVarsInRegs) {
            this.cfw.add(176);
        } else if (this.isGenerator) {
            if (((FunctionNode) this.scriptOrFn).getResumptionPoints() != null) {
                this.cfw.markTableSwitchDefault(this.generatorSwitch);
            }
            generateSetGeneratorResumptionPoint(-1);
            this.cfw.addALoad(this.variableObjectLocal);
            addOptRuntimeInvoke("throwStopIteration", "(Ljava/lang/Object;)V");
            Codegen.pushUndefined(this.cfw);
            this.cfw.add(176);
        } else if (this.fnCurrent == null) {
            this.cfw.addALoad(this.popvLocal);
            this.cfw.add(176);
        } else {
            generateActivationExit();
            this.cfw.add(176);
            int acquireLabel = this.cfw.acquireLabel();
            this.cfw.markHandler(acquireLabel);
            short newWordLocal = getNewWordLocal();
            this.cfw.addAStore(newWordLocal);
            generateActivationExit();
            this.cfw.addALoad(newWordLocal);
            releaseWordLocal(newWordLocal);
            this.cfw.add(191);
            this.cfw.addExceptionHandler(this.enterAreaStartLabel, this.epilogueLabel, acquireLabel, null);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private void generateExpression(org.mozilla.javascript.Node r8, org.mozilla.javascript.Node r9) {
        /*
            Method dump skipped, instructions count: 2840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.BodyCodegen.generateExpression(org.mozilla.javascript.Node, org.mozilla.javascript.Node):void");
    }

    private void generateFunctionAndThisObj(Node node, Node node2) {
        int type = node.getType();
        int type2 = node.getType();
        if (type2 != 36) {
            if (type2 != 39) {
                switch (type2) {
                    case 33:
                        break;
                    case 34:
                        throw Kit.codeBug();
                    default:
                        generateExpression(node, node2);
                        this.cfw.addALoad(this.contextLocal);
                        addScriptRuntimeInvoke("getValueFunctionAndThis", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;");
                        break;
                }
            } else {
                this.cfw.addPush(node.getString());
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("getNameFunctionAndThis", "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            }
            this.cfw.addALoad(this.contextLocal);
            addScriptRuntimeInvoke("lastStoredScriptable", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;");
        }
        Node firstChild = node.getFirstChild();
        generateExpression(firstChild, node);
        Node next = firstChild.getNext();
        if (type == 33) {
            this.cfw.addPush(next.getString());
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("getPropFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
        } else {
            generateExpression(next, node);
            if (node.getIntProp(8, -1) != -1) {
                addDoubleWrap();
            }
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("getElemFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
        }
        this.cfw.addALoad(this.contextLocal);
        addScriptRuntimeInvoke("lastStoredScriptable", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void generateGenerator() {
        this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        initBodyGeneration();
        short s = this.firstFreeLocal;
        this.firstFreeLocal = (short) (s + 1);
        this.argsLocal = s;
        this.localsMax = this.firstFreeLocal;
        if (this.fnCurrent != null) {
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addInvoke(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.variableObjectLocal);
        }
        this.cfw.addALoad(this.funObjLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.argsLocal);
        addScriptRuntimeInvoke("createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
        this.cfw.add(187, this.codegen.mainClassName);
        this.cfw.add(89);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(this.scriptOrFnIndex);
        this.cfw.addInvoke(183, this.codegen.mainClassName, "<init>", "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        generateNestedFunctionInits();
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.thisObjLocal);
        this.cfw.addLoadConstant(this.maxLocals);
        this.cfw.addLoadConstant(this.maxStack);
        addOptRuntimeInvoke("createNativeGenerator", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.add(176);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generateGetGeneratorLocalsState() {
        this.cfw.addALoad(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorLocalsState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    private void generateGetGeneratorResumptionPoint() {
        this.cfw.addALoad(this.generatorStateLocal);
        this.cfw.add(180, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", "I");
    }

    private void generateGetGeneratorStackState() {
        this.cfw.addALoad(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorStackState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private void generateIfJump(org.mozilla.javascript.Node r7, org.mozilla.javascript.Node r8, int r9, int r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.getType()
            r11 = r0
            r0 = r7
            org.mozilla.javascript.Node r0 = r0.getFirstChild()
            r12 = r0
            r0 = r11
            r1 = 26
            if (r0 == r1) goto L_0x0109
            r0 = r11
            switch(r0) {
                case 12: goto L_0x00fc;
                case 13: goto L_0x00fc;
                case 14: goto L_0x00ef;
                case 15: goto L_0x00ef;
                case 16: goto L_0x00ef;
                case 17: goto L_0x00ef;
                default: goto L_0x003c;
            }
        L_0x003c:
            r0 = r11
            switch(r0) {
                case 46: goto L_0x00fc;
                case 47: goto L_0x00fc;
                default: goto L_0x0054;
            }
        L_0x0054:
            r0 = r11
            switch(r0) {
                case 52: goto L_0x00ef;
                case 53: goto L_0x00ef;
                default: goto L_0x006c;
            }
        L_0x006c:
            r0 = r11
            switch(r0) {
                case 104: goto L_0x00ae;
                case 105: goto L_0x00ae;
                default: goto L_0x0084;
            }
        L_0x0084:
            r0 = r6
            r1 = r7
            r2 = r8
            r0.generateExpression(r1, r2)
            r0 = r6
            java.lang.String r1 = "toBoolean"
            java.lang.String r2 = "(Ljava/lang/Object;)Z"
            r0.addScriptRuntimeInvoke(r1, r2)
            r0 = r6
            org.mozilla.classfile.ClassFileWriter r0 = r0.cfw
            r1 = 154(0x9a, float:2.16E-43)
            r2 = r9
            r0.add(r1, r2)
            r0 = r6
            org.mozilla.classfile.ClassFileWriter r0 = r0.cfw
            r1 = 167(0xa7, float:2.34E-43)
            r2 = r10
            r0.add(r1, r2)
            goto L_0x0113
        L_0x00ae:
            r0 = r6
            org.mozilla.classfile.ClassFileWriter r0 = r0.cfw
            int r0 = r0.acquireLabel()
            r13 = r0
            r0 = r11
            r1 = 105(0x69, float:1.47E-43)
            if (r0 != r1) goto L_0x00cc
            r0 = r6
            r1 = r12
            r2 = r7
            r3 = r13
            r4 = r10
            r0.generateIfJump(r1, r2, r3, r4)
            goto L_0x00d6
        L_0x00cc:
            r0 = r6
            r1 = r12
            r2 = r7
            r3 = r9
            r4 = r13
            r0.generateIfJump(r1, r2, r3, r4)
        L_0x00d6:
            r0 = r6
            org.mozilla.classfile.ClassFileWriter r0 = r0.cfw
            r1 = r13
            r0.markLabel(r1)
            r0 = r6
            r1 = r12
            org.mozilla.javascript.Node r1 = r1.getNext()
            r2 = r7
            r3 = r9
            r4 = r10
            r0.generateIfJump(r1, r2, r3, r4)
            goto L_0x0113
        L_0x00ef:
            r0 = r6
            r1 = r7
            r2 = r12
            r3 = r9
            r4 = r10
            r0.visitIfJumpRelOp(r1, r2, r3, r4)
            goto L_0x0113
        L_0x00fc:
            r0 = r6
            r1 = r7
            r2 = r12
            r3 = r9
            r4 = r10
            r0.visitIfJumpEqOp(r1, r2, r3, r4)
            goto L_0x0113
        L_0x0109:
            r0 = r6
            r1 = r12
            r2 = r7
            r3 = r10
            r4 = r9
            r0.generateIfJump(r1, r2, r3, r4)
        L_0x0113:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.BodyCodegen.generateIfJump(org.mozilla.javascript.Node, org.mozilla.javascript.Node, int, int):void");
    }

    private void generateIntegerUnwrap() {
        this.cfw.addInvoke(182, "java/lang/Integer", "intValue", "()I");
    }

    private void generateIntegerWrap() {
        this.cfw.addInvoke(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
    }

    private void generateNestedFunctionInits() {
        int functionCount = this.scriptOrFn.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, i);
            if (optFunctionNode.fnode.getFunctionType() == 1) {
                visitFunction(optFunctionNode, 1);
            }
        }
    }

    private void generateObjectLiteralFactory(Node node, int i) {
        initBodyGeneration();
        short s = this.firstFreeLocal;
        this.firstFreeLocal = (short) (s + 1);
        this.argsLocal = s;
        this.localsMax = this.firstFreeLocal;
        this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitObjectLiteral(node, node.getFirstChild(), true);
        this.cfw.add(176);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generatePrologue() {
        String str;
        short s;
        if (this.inDirectCallFunction) {
            int paramCount = this.scriptOrFn.getParamCount();
            if (this.firstFreeLocal != 4) {
                Kit.codeBug();
            }
            for (int i = 0; i != paramCount; i++) {
                this.varRegisters[i] = this.firstFreeLocal;
                this.firstFreeLocal = (short) (this.firstFreeLocal + 3);
            }
            if (!this.fnCurrent.getParameterNumberContext()) {
                this.itsForcedObjectParameters = true;
                for (int i2 = 0; i2 != paramCount; i2++) {
                    short s2 = this.varRegisters[i2];
                    this.cfw.addALoad(s2);
                    this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int acquireLabel = this.cfw.acquireLabel();
                    this.cfw.add(166, acquireLabel);
                    this.cfw.addDLoad(s2 + 1);
                    addDoubleWrap();
                    this.cfw.addAStore(s2);
                    this.cfw.markLabel(acquireLabel);
                }
            }
        }
        if (this.fnCurrent != null) {
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addInvoke(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.variableObjectLocal);
        }
        short s3 = this.firstFreeLocal;
        this.firstFreeLocal = (short) (s3 + 1);
        this.argsLocal = s3;
        this.localsMax = this.firstFreeLocal;
        if (this.isGenerator) {
            short s4 = this.firstFreeLocal;
            this.firstFreeLocal = (short) (s4 + 1);
            this.operationLocal = s4;
            this.localsMax = this.firstFreeLocal;
            this.cfw.addALoad(this.thisObjLocal);
            short s5 = this.firstFreeLocal;
            this.firstFreeLocal = (short) (s5 + 1);
            this.generatorStateLocal = s5;
            this.localsMax = this.firstFreeLocal;
            this.cfw.add(192, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState");
            this.cfw.add(89);
            this.cfw.addAStore(this.generatorStateLocal);
            this.cfw.add(180, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "thisObj", "Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.thisObjLocal);
            if (this.epilogueLabel == -1) {
                this.epilogueLabel = this.cfw.acquireLabel();
            }
            List<Node> resumptionPoints = ((FunctionNode) this.scriptOrFn).getResumptionPoints();
            if (resumptionPoints != null) {
                generateGetGeneratorResumptionPoint();
                this.generatorSwitch = this.cfw.addTableSwitch(0, resumptionPoints.size() + 0);
                generateCheckForThrowOrClose(-1, false, 0);
            }
        }
        if (this.fnCurrent == null && this.scriptOrFn.getRegexpCount() != 0) {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addInvoke(184, this.codegen.mainClassName, "_reInit", "(Lorg/mozilla/javascript/Context;)V");
        }
        if (this.compilerEnv.isGenerateObserverCount()) {
            saveCurrentCodeOffset();
        }
        if (this.hasVarsInRegs) {
            int paramCount2 = this.scriptOrFn.getParamCount();
            if (paramCount2 > 0 && !this.inDirectCallFunction) {
                this.cfw.addALoad(this.argsLocal);
                this.cfw.add(190);
                this.cfw.addPush(paramCount2);
                int acquireLabel2 = this.cfw.acquireLabel();
                this.cfw.add(162, acquireLabel2);
                this.cfw.addALoad(this.argsLocal);
                this.cfw.addPush(paramCount2);
                addScriptRuntimeInvoke("padArguments", "([Ljava/lang/Object;I)[Ljava/lang/Object;");
                this.cfw.addAStore(this.argsLocal);
                this.cfw.markLabel(acquireLabel2);
            }
            int paramCount3 = this.fnCurrent.fnode.getParamCount();
            int paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount();
            boolean[] paramAndVarConst = this.fnCurrent.fnode.getParamAndVarConst();
            short s6 = -1;
            for (int i3 = 0; i3 != paramAndVarCount; i3++) {
                if (i3 < paramCount3) {
                    if (!this.inDirectCallFunction) {
                        short newWordLocal = getNewWordLocal();
                        this.cfw.addALoad(this.argsLocal);
                        this.cfw.addPush(i3);
                        this.cfw.add(50);
                        this.cfw.addAStore(newWordLocal);
                        s6 = s6;
                        s = newWordLocal;
                    } else {
                        s = -1;
                        s6 = s6;
                    }
                } else if (this.fnCurrent.isNumberVar(i3)) {
                    short newWordPairLocal = getNewWordPairLocal(paramAndVarConst[i3]);
                    this.cfw.addPush(0.0d);
                    this.cfw.addDStore(newWordPairLocal);
                    s6 = s6;
                    s = newWordPairLocal;
                } else {
                    short newWordLocal2 = getNewWordLocal(paramAndVarConst[i3]);
                    if (s6 == -1) {
                        Codegen.pushUndefined(this.cfw);
                        s6 = newWordLocal2;
                    } else {
                        this.cfw.addALoad(s6);
                        s6 = s6;
                    }
                    this.cfw.addAStore(newWordLocal2);
                    s = newWordLocal2;
                }
                if (s >= 0) {
                    if (paramAndVarConst[i3]) {
                        this.cfw.addPush(0);
                        this.cfw.addIStore((this.fnCurrent.isNumberVar(i3) ? (short) 2 : (short) 1) + s);
                    }
                    this.varRegisters[i3] = s;
                }
                if (this.compilerEnv.isGenerateDebugInfo()) {
                    String paramOrVarName = this.fnCurrent.fnode.getParamOrVarName(i3);
                    String str2 = this.fnCurrent.isNumberVar(i3) ? "D" : "Ljava/lang/Object;";
                    int currentCodeOffset = this.cfw.getCurrentCodeOffset();
                    short s7 = s;
                    if (s < 0) {
                        s7 = this.varRegisters[i3];
                    }
                    this.cfw.addVariableDescriptor(paramOrVarName, str2, currentCodeOffset, s7);
                }
            }
        } else if (!this.isGenerator) {
            if (this.fnCurrent != null) {
                str = "activation";
                this.cfw.addALoad(this.funObjLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.addALoad(this.argsLocal);
                addScriptRuntimeInvoke("createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
                this.cfw.addAStore(this.variableObjectLocal);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("enterActivationFunction", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V");
            } else {
                str = "global";
                this.cfw.addALoad(this.funObjLocal);
                this.cfw.addALoad(this.thisObjLocal);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.addPush(0);
                addScriptRuntimeInvoke("initScript", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V");
            }
            this.enterAreaStartLabel = this.cfw.acquireLabel();
            this.epilogueLabel = this.cfw.acquireLabel();
            this.cfw.markLabel(this.enterAreaStartLabel);
            generateNestedFunctionInits();
            if (this.compilerEnv.isGenerateDebugInfo()) {
                this.cfw.addVariableDescriptor(str, "Lorg/mozilla/javascript/Scriptable;", this.cfw.getCurrentCodeOffset(), this.variableObjectLocal);
            }
            if (this.fnCurrent == null) {
                this.popvLocal = getNewWordLocal();
                Codegen.pushUndefined(this.cfw);
                this.cfw.addAStore(this.popvLocal);
                int endLineno = this.scriptOrFn.getEndLineno();
                if (endLineno != -1) {
                    this.cfw.addLineNumberEntry((short) endLineno);
                    return;
                }
                return;
            }
            if (this.fnCurrent.itsContainsCalls0) {
                this.itsZeroArgArray = getNewWordLocal();
                this.cfw.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
                this.cfw.addAStore(this.itsZeroArgArray);
            }
            if (this.fnCurrent.itsContainsCalls1) {
                this.itsOneArgArray = getNewWordLocal();
                this.cfw.addPush(1);
                this.cfw.add(189, "java/lang/Object");
                this.cfw.addAStore(this.itsOneArgArray);
            }
        }
    }

    private boolean generateSaveLocals(Node node) {
        int i = 0;
        for (int i2 = 0; i2 < this.firstFreeLocal; i2++) {
            i = i;
            if (this.locals[i2] != 0) {
                i++;
            }
        }
        if (i == 0) {
            ((FunctionNode) this.scriptOrFn).addLiveLocals(node, null);
            return false;
        }
        this.maxLocals = this.maxLocals > i ? this.maxLocals : i;
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.firstFreeLocal; i4++) {
            i3 = i3;
            if (this.locals[i4] != 0) {
                iArr[i3] = i4;
                i3++;
            }
        }
        ((FunctionNode) this.scriptOrFn).addLiveLocals(node, iArr);
        generateGetGeneratorLocalsState();
        for (int i5 = 0; i5 < i; i5++) {
            this.cfw.add(89);
            this.cfw.addLoadConstant(i5);
            this.cfw.addALoad(iArr[i5]);
            this.cfw.add(83);
        }
        this.cfw.add(87);
        return true;
    }

    private void generateSetGeneratorResumptionPoint(int i) {
        this.cfw.addALoad(this.generatorStateLocal);
        this.cfw.addLoadConstant(i);
        this.cfw.add(181, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", "I");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0458  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateStatement(org.mozilla.javascript.Node r6) {
        /*
            Method dump skipped, instructions count: 1331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.BodyCodegen.generateStatement(org.mozilla.javascript.Node):void");
    }

    private void generateThrowJavaScriptException() {
        this.cfw.add(187, "org/mozilla/javascript/JavaScriptException");
        this.cfw.add(90);
        this.cfw.add(95);
        this.cfw.addPush(this.scriptOrFn.getSourceName());
        this.cfw.addPush(this.itsLineNumber);
        this.cfw.addInvoke(183, "org/mozilla/javascript/JavaScriptException", "<init>", "(Ljava/lang/Object;Ljava/lang/String;I)V");
        this.cfw.add(191);
    }

    private void generateYieldPoint(Node node, boolean z) {
        short stackTop = this.cfw.getStackTop();
        this.maxStack = this.maxStack > stackTop ? this.maxStack : stackTop;
        if (this.cfw.getStackTop() != 0) {
            generateGetGeneratorStackState();
            for (int i = 0; i < stackTop; i++) {
                this.cfw.add(90);
                this.cfw.add(95);
                this.cfw.addLoadConstant(i);
                this.cfw.add(95);
                this.cfw.add(83);
            }
            this.cfw.add(87);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            generateExpression(firstChild, node);
        } else {
            Codegen.pushUndefined(this.cfw);
        }
        int nextGeneratorState = getNextGeneratorState(node);
        generateSetGeneratorResumptionPoint(nextGeneratorState);
        boolean generateSaveLocals = generateSaveLocals(node);
        this.cfw.add(176);
        generateCheckForThrowOrClose(getTargetLabel(node), generateSaveLocals, nextGeneratorState);
        if (stackTop != 0) {
            generateGetGeneratorStackState();
            for (int i2 = 0; i2 < stackTop; i2++) {
                this.cfw.add(89);
                this.cfw.addLoadConstant((stackTop - i2) - 1);
                this.cfw.add(50);
                this.cfw.add(95);
            }
            this.cfw.add(87);
        }
        if (z) {
            this.cfw.addALoad(this.argsLocal);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node getFinallyAtTarget(Node node) {
        Node next;
        if (node == null) {
            return null;
        }
        if (node.getType() == 125) {
            return node;
        }
        if (node != null && node.getType() == 131 && (next = node.getNext()) != null && next.getType() == 125) {
            return next;
        }
        throw Kit.codeBug("bad finally target");
    }

    private int getLocalBlockRegister(Node node) {
        return ((Node) node.getProp(3)).getExistingIntProp(2);
    }

    private short getNewWordIntern(int i) {
        short s;
        int i2;
        int[] iArr = this.locals;
        if (i > 1) {
            int i3 = this.firstFreeLocal;
            loop0: while (true) {
                if (i3 + i > 1024) {
                    s = -1;
                    break;
                }
                i2 = 0;
                while (true) {
                    s = i3;
                    if (i2 >= i) {
                        break loop0;
                    } else if (iArr[i3 + i2] != 0) {
                        break;
                    } else {
                        i2++;
                    }
                }
                i3 += i2 + 1;
            }
        } else {
            s = this.firstFreeLocal;
        }
        if (s != -1) {
            iArr[s] = 1;
            if (i > 1) {
                iArr[s + 1] = 1;
            }
            if (i > 2) {
                iArr[s + 2] = 1;
            }
            if (s != this.firstFreeLocal) {
                return s;
            }
            for (int i4 = i + s; i4 < 1024; i4++) {
                if (iArr[i4] == 0) {
                    this.firstFreeLocal = (short) i4;
                    if (this.localsMax < this.firstFreeLocal) {
                        this.localsMax = this.firstFreeLocal;
                    }
                    return s;
                }
            }
        }
        throw Context.reportRuntimeError("Program too complex (out of locals)");
    }

    private short getNewWordLocal() {
        return getNewWordIntern(1);
    }

    private short getNewWordLocal(boolean z) {
        return getNewWordIntern(z ? 2 : 1);
    }

    private short getNewWordPairLocal(boolean z) {
        return getNewWordIntern(z ? 3 : 2);
    }

    private int getNextGeneratorState(Node node) {
        return ((FunctionNode) this.scriptOrFn).getResumptionPoints().indexOf(node) + 1;
    }

    private int getTargetLabel(Node node) {
        int labelId = node.labelId();
        int i = labelId;
        if (labelId == -1) {
            i = this.cfw.acquireLabel();
            node.labelId(i);
        }
        return i;
    }

    private void incReferenceWordLocal(short s) {
        int[] iArr = this.locals;
        iArr[s] = iArr[s] + 1;
    }

    private void initBodyGeneration() {
        int paramAndVarCount;
        this.varRegisters = null;
        if (this.scriptOrFn.getType() == 109) {
            this.fnCurrent = OptFunctionNode.get(this.scriptOrFn);
            this.hasVarsInRegs = !this.fnCurrent.fnode.requiresActivation();
            if (this.hasVarsInRegs && (paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount()) != 0) {
                this.varRegisters = new short[paramAndVarCount];
            }
            this.inDirectCallFunction = this.fnCurrent.isTargetOfDirectCall();
            if (this.inDirectCallFunction && !this.hasVarsInRegs) {
                Codegen.badTree();
            }
        } else {
            this.fnCurrent = null;
            this.hasVarsInRegs = false;
            this.inDirectCallFunction = false;
        }
        this.locals = new int[1024];
        this.funObjLocal = (short) 0;
        this.contextLocal = (short) 1;
        this.variableObjectLocal = (short) 2;
        this.thisObjLocal = (short) 3;
        this.localsMax = (short) 4;
        this.firstFreeLocal = (short) 4;
        this.popvLocal = (short) (-1);
        this.argsLocal = (short) (-1);
        this.itsZeroArgArray = (short) (-1);
        this.itsOneArgArray = (short) (-1);
        this.epilogueLabel = -1;
        this.enterAreaStartLabel = -1;
        this.generatorStateLocal = (short) (-1);
    }

    private void inlineFinally(Node node) {
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        inlineFinally(node, acquireLabel, acquireLabel2);
        this.cfw.markLabel(acquireLabel2);
    }

    private void inlineFinally(Node node, int i, int i2) {
        Node finallyAtTarget = getFinallyAtTarget(node);
        finallyAtTarget.resetTargets();
        this.exceptionManager.markInlineFinallyStart(finallyAtTarget, i);
        for (Node firstChild = finallyAtTarget.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            generateStatement(firstChild);
        }
        this.exceptionManager.markInlineFinallyEnd(finallyAtTarget, i2);
    }

    private static boolean isArithmeticNode(Node node) {
        int type = node.getType();
        return type == 22 || type == 25 || type == 24 || type == 23;
    }

    private int nodeIsDirectCallParameter(Node node) {
        if (node.getType() != 55 || !this.inDirectCallFunction || this.itsForcedObjectParameters) {
            return -1;
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        if (this.fnCurrent.isParameter(varIndex)) {
            return this.varRegisters[varIndex];
        }
        return -1;
    }

    private void releaseWordLocal(short s) {
        if (s < this.firstFreeLocal) {
            this.firstFreeLocal = s;
        }
        this.locals[s] = 0;
    }

    private void saveCurrentCodeOffset() {
        this.savedCodeOffset = this.cfw.getCurrentCodeOffset();
    }

    private void updateLineNumber(Node node) {
        this.itsLineNumber = node.getLineno();
        if (this.itsLineNumber != -1) {
            this.cfw.addLineNumberEntry((short) this.itsLineNumber);
        }
    }

    private boolean varIsDirectCallParameter(int i) {
        return this.fnCurrent.isParameter(i) && this.inDirectCallFunction && !this.itsForcedObjectParameters;
    }

    private void visitArithmetic(Node node, int i, Node node2, Node node3) {
        if (node.getIntProp(8, -1) != -1) {
            generateExpression(node2, node);
            generateExpression(node2.getNext(), node);
            this.cfw.add(i);
            return;
        }
        boolean isArithmeticNode = isArithmeticNode(node3);
        generateExpression(node2, node);
        if (!isArithmeticNode(node2)) {
            addObjectToDouble();
        }
        generateExpression(node2.getNext(), node);
        if (!isArithmeticNode(node2.getNext())) {
            addObjectToDouble();
        }
        this.cfw.add(i);
        if (!isArithmeticNode) {
            addDoubleWrap();
        }
    }

    private void visitArrayLiteral(Node node, Node node2, boolean z) {
        int i = 0;
        for (Node node3 = node2; node3 != null; node3 = node3.getNext()) {
            i++;
        }
        if (z || ((i <= 10 && this.cfw.getCurrentCodeOffset() <= 30000) || this.hasVarsInRegs || this.isGenerator || this.inLocalBlock)) {
            if (this.isGenerator) {
                for (int i2 = 0; i2 != i; i2++) {
                    generateExpression(node2, node);
                    node2 = node2.getNext();
                }
                addNewObjectArray(i);
                for (int i3 = 0; i3 != i; i3++) {
                    this.cfw.add(90);
                    this.cfw.add(95);
                    this.cfw.addPush((i - i3) - 1);
                    this.cfw.add(95);
                    this.cfw.add(83);
                }
            } else {
                addNewObjectArray(i);
                for (int i4 = 0; i4 != i; i4++) {
                    this.cfw.add(89);
                    this.cfw.addPush(i4);
                    generateExpression(node2, node);
                    this.cfw.add(83);
                    node2 = node2.getNext();
                }
            }
            int[] iArr = (int[]) node.getProp(11);
            if (iArr == null) {
                this.cfw.add(1);
                this.cfw.add(3);
            } else {
                this.cfw.addPush(OptRuntime.encodeIntArray(iArr));
                this.cfw.addPush(iArr.length);
            }
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addOptRuntimeInvoke("newArrayLiteral", "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.literals == null) {
            this.literals = new LinkedList();
        }
        this.literals.add(node);
        this.cfw.addALoad(this.funObjLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.thisObjLocal);
        this.cfw.addALoad(this.argsLocal);
        this.cfw.addInvoke(182, this.codegen.mainClassName, this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size(), "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitBitOp(Node node, int i, Node node2) {
        int intProp = node.getIntProp(8, -1);
        generateExpression(node2, node);
        if (i == 20) {
            addScriptRuntimeInvoke("toUint32", "(Ljava/lang/Object;)J");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
            this.cfw.addPush(31);
            this.cfw.add(126);
            this.cfw.add(125);
            this.cfw.add(138);
            addDoubleWrap();
            return;
        }
        if (intProp == -1) {
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
        } else {
            addScriptRuntimeInvoke("toInt32", "(D)I");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(D)I");
        }
        switch (i) {
            case 9:
                this.cfw.add(128);
                break;
            case 10:
                this.cfw.add(130);
                break;
            case 11:
                this.cfw.add(126);
                break;
            default:
                switch (i) {
                    case 18:
                        this.cfw.add(120);
                        break;
                    case 19:
                        this.cfw.add(122);
                        break;
                    default:
                        throw Codegen.badTree();
                }
        }
        this.cfw.add(135);
        if (intProp == -1) {
            addDoubleWrap();
        }
    }

    private void visitDotQuery(Node node, Node node2) {
        updateLineNumber(node);
        generateExpression(node2, node);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("enterDotQuery", "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
        this.cfw.add(1);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        this.cfw.add(87);
        generateExpression(node2.getNext(), node);
        addScriptRuntimeInvoke("toBoolean", "(Ljava/lang/Object;)Z");
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("updateDotQuery", "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        this.cfw.add(89);
        this.cfw.add(ByteCode.IFNULL, acquireLabel);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("leaveDotQuery", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
    }

    private void visitFunction(OptFunctionNode optFunctionNode, int i) {
        int index = this.codegen.getIndex(optFunctionNode.fnode);
        this.cfw.add(187, this.codegen.mainClassName);
        this.cfw.add(89);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(index);
        this.cfw.addInvoke(183, this.codegen.mainClassName, "<init>", "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        if (i != 2) {
            this.cfw.addPush(i);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.contextLocal);
            addOptRuntimeInvoke("initFunction", "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V");
        }
    }

    private void visitGetProp(Node node, Node node2) {
        generateExpression(node2, node);
        Node next = node2.getNext();
        generateExpression(next, node);
        if (node.getType() == 34) {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("getObjectPropNoWarn", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else if (node2.getType() == 43 && next.getType() == 41) {
            this.cfw.addALoad(this.contextLocal);
            addScriptRuntimeInvoke("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
        } else {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void visitGetVar(Node node) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        short s = this.varRegisters[varIndex];
        if (varIsDirectCallParameter(varIndex)) {
            if (node.getIntProp(8, -1) != -1) {
                dcpLoadAsNumber(s);
            } else {
                dcpLoadAsObject(s);
            }
        } else if (this.fnCurrent.isNumberVar(varIndex)) {
            this.cfw.addDLoad(s);
        } else {
            this.cfw.addALoad(s);
        }
    }

    private void visitGoto(Jump jump, int i, Node node) {
        Node node2 = jump.target;
        if (i == 6 || i == 7) {
            if (node == null) {
                throw Codegen.badTree();
            }
            int targetLabel = getTargetLabel(node2);
            int acquireLabel = this.cfw.acquireLabel();
            if (i == 6) {
                generateIfJump(node, jump, targetLabel, acquireLabel);
            } else {
                generateIfJump(node, jump, acquireLabel, targetLabel);
            }
            this.cfw.markLabel(acquireLabel);
        } else if (i != 135) {
            addGoto(node2, 167);
        } else if (this.isGenerator) {
            addGotoWithReturn(node2);
        } else {
            inlineFinally(node2);
        }
    }

    private void visitIfJumpEqOp(Node node, Node node2, int i, int i2) {
        String str;
        Node node3 = node2;
        if (i == -1 || i2 == -1) {
            throw Codegen.badTree();
        }
        short stackTop = this.cfw.getStackTop();
        int type = node.getType();
        Node next = node2.getNext();
        if (node2.getType() == 42 || next.getType() == 42) {
            if (node2.getType() == 42) {
                node3 = next;
            }
            generateExpression(node3, node);
            int i3 = ByteCode.IFNONNULL;
            if (type == 46 || type == 47) {
                if (type == 46) {
                    i3 = ByteCode.IFNULL;
                }
                this.cfw.add(i3, i);
            } else {
                int i4 = i;
                i2 = i2;
                if (type != 12) {
                    if (type != 13) {
                        throw Codegen.badTree();
                    }
                    i2 = i;
                    i4 = i2;
                }
                this.cfw.add(89);
                int acquireLabel = this.cfw.acquireLabel();
                this.cfw.add(ByteCode.IFNONNULL, acquireLabel);
                short stackTop2 = this.cfw.getStackTop();
                this.cfw.add(87);
                this.cfw.add(167, i4);
                this.cfw.markLabel(acquireLabel, stackTop2);
                Codegen.pushUndefined(this.cfw);
                this.cfw.add(165, i4);
            }
            this.cfw.add(167, i2);
        } else {
            int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node3);
            if (nodeIsDirectCallParameter != -1 && next.getType() == 149) {
                Node firstChild = next.getFirstChild();
                if (firstChild.getType() == 40) {
                    this.cfw.addALoad(nodeIsDirectCallParameter);
                    this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int acquireLabel2 = this.cfw.acquireLabel();
                    this.cfw.add(166, acquireLabel2);
                    this.cfw.addDLoad(nodeIsDirectCallParameter + 1);
                    this.cfw.addPush(firstChild.getDouble());
                    this.cfw.add(151);
                    if (type == 12) {
                        this.cfw.add(153, i);
                    } else {
                        this.cfw.add(154, i);
                    }
                    this.cfw.add(167, i2);
                    this.cfw.markLabel(acquireLabel2);
                }
            }
            int i5 = 153;
            generateExpression(node3, node);
            generateExpression(next, node);
            switch (type) {
                case 12:
                    str = "eq";
                    i5 = 154;
                    break;
                case 13:
                    str = "eq";
                    break;
                case 46:
                    str = "shallowEq";
                    i5 = 154;
                    break;
                case 47:
                    str = "shallowEq";
                    break;
                default:
                    throw Codegen.badTree();
            }
            addScriptRuntimeInvoke(str, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
            this.cfw.add(i5, i);
            this.cfw.add(167, i2);
        }
        if (stackTop != this.cfw.getStackTop()) {
            throw Codegen.badTree();
        }
    }

    private void visitIfJumpRelOp(Node node, Node node2, int i, int i2) {
        if (i == -1 || i2 == -1) {
            throw Codegen.badTree();
        }
        int type = node.getType();
        Node next = node2.getNext();
        if (type == 53 || type == 52) {
            generateExpression(node2, node);
            generateExpression(next, node);
            this.cfw.addALoad(this.contextLocal);
            addScriptRuntimeInvoke(type == 53 ? "instanceOf" : "in", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z");
            this.cfw.add(154, i);
            this.cfw.add(167, i2);
            return;
        }
        int intProp = node.getIntProp(8, -1);
        int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
        int nodeIsDirectCallParameter2 = nodeIsDirectCallParameter(next);
        if (intProp != -1) {
            if (intProp != 2) {
                generateExpression(node2, node);
            } else if (nodeIsDirectCallParameter != -1) {
                dcpLoadAsNumber(nodeIsDirectCallParameter);
            } else {
                generateExpression(node2, node);
                addObjectToDouble();
            }
            if (intProp != 1) {
                generateExpression(next, node);
            } else if (nodeIsDirectCallParameter2 != -1) {
                dcpLoadAsNumber(nodeIsDirectCallParameter2);
            } else {
                generateExpression(next, node);
                addObjectToDouble();
            }
            genSimpleCompare(type, i, i2);
            return;
        }
        if (nodeIsDirectCallParameter == -1 || nodeIsDirectCallParameter2 == -1) {
            generateExpression(node2, node);
            generateExpression(next, node);
        } else {
            short stackTop = this.cfw.getStackTop();
            int acquireLabel = this.cfw.acquireLabel();
            this.cfw.addALoad(nodeIsDirectCallParameter);
            this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.cfw.add(166, acquireLabel);
            this.cfw.addDLoad(nodeIsDirectCallParameter + 1);
            dcpLoadAsNumber(nodeIsDirectCallParameter2);
            genSimpleCompare(type, i, i2);
            if (stackTop != this.cfw.getStackTop()) {
                throw Codegen.badTree();
            }
            this.cfw.markLabel(acquireLabel);
            int acquireLabel2 = this.cfw.acquireLabel();
            this.cfw.addALoad(nodeIsDirectCallParameter2);
            this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.cfw.add(166, acquireLabel2);
            this.cfw.addALoad(nodeIsDirectCallParameter);
            addObjectToDouble();
            this.cfw.addDLoad(nodeIsDirectCallParameter2 + 1);
            genSimpleCompare(type, i, i2);
            if (stackTop != this.cfw.getStackTop()) {
                throw Codegen.badTree();
            }
            this.cfw.markLabel(acquireLabel2);
            this.cfw.addALoad(nodeIsDirectCallParameter);
            this.cfw.addALoad(nodeIsDirectCallParameter2);
        }
        if (type == 17 || type == 16) {
            this.cfw.add(95);
        }
        addScriptRuntimeInvoke((type == 14 || type == 16) ? "cmp_LT" : "cmp_LE", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
        this.cfw.add(154, i);
        this.cfw.add(167, i2);
    }

    private void visitIncDec(Node node) {
        int existingIntProp = node.getExistingIntProp(13);
        Node firstChild = node.getFirstChild();
        int type = firstChild.getType();
        if (type == 36) {
            Node firstChild2 = firstChild.getFirstChild();
            generateExpression(firstChild2, node);
            generateExpression(firstChild2.getNext(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(existingIntProp);
            if (firstChild2.getNext().getIntProp(8, -1) != -1) {
                addOptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            } else {
                addScriptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            }
        } else if (type == 39) {
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(firstChild.getString());
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addPush(existingIntProp);
            addScriptRuntimeInvoke("nameIncrDecr", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;");
        } else if (type == 55) {
            if (!this.hasVarsInRegs) {
                Kit.codeBug();
            }
            boolean z = (existingIntProp & 2) != 0;
            int varIndex = this.fnCurrent.getVarIndex(firstChild);
            short s = this.varRegisters[varIndex];
            if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
                if (node.getIntProp(8, -1) != -1) {
                    this.cfw.addDLoad(s + (varIsDirectCallParameter(varIndex) ? 1 : 0));
                    if (!z) {
                        this.cfw.addPush(1.0d);
                        if ((existingIntProp & 1) == 0) {
                            this.cfw.add(99);
                        } else {
                            this.cfw.add(103);
                        }
                    }
                } else {
                    if (varIsDirectCallParameter(varIndex)) {
                        dcpLoadAsObject(s);
                    } else {
                        this.cfw.addALoad(s);
                    }
                    if (z) {
                        this.cfw.add(89);
                        addObjectToDouble();
                        this.cfw.add(88);
                        return;
                    }
                    addObjectToDouble();
                    this.cfw.addPush(1.0d);
                    if ((existingIntProp & 1) == 0) {
                        this.cfw.add(99);
                    } else {
                        this.cfw.add(103);
                    }
                    addDoubleWrap();
                }
            } else if (node.getIntProp(8, -1) != -1) {
                boolean varIsDirectCallParameter = varIsDirectCallParameter(varIndex);
                ClassFileWriter classFileWriter = this.cfw;
                int i = s + (varIsDirectCallParameter ? 1 : 0);
                classFileWriter.addDLoad(i);
                if (z) {
                    this.cfw.add(92);
                }
                this.cfw.addPush(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.cfw.add(99);
                } else {
                    this.cfw.add(103);
                }
                if (!z) {
                    this.cfw.add(92);
                }
                this.cfw.addDStore(i);
            } else {
                if (varIsDirectCallParameter(varIndex)) {
                    dcpLoadAsObject(s);
                } else {
                    this.cfw.addALoad(s);
                }
                if (z) {
                    this.cfw.add(89);
                }
                addObjectToDouble();
                this.cfw.addPush(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.cfw.add(99);
                } else {
                    this.cfw.add(103);
                }
                addDoubleWrap();
                if (!z) {
                    this.cfw.add(89);
                }
                this.cfw.addAStore(s);
            }
        } else if (type != 67) {
            switch (type) {
                case 33:
                    Node firstChild3 = firstChild.getFirstChild();
                    generateExpression(firstChild3, node);
                    generateExpression(firstChild3.getNext(), node);
                    this.cfw.addALoad(this.contextLocal);
                    this.cfw.addALoad(this.variableObjectLocal);
                    this.cfw.addPush(existingIntProp);
                    addScriptRuntimeInvoke("propIncrDecr", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                    return;
                case 34:
                    throw Kit.codeBug();
                default:
                    Codegen.badTree();
                    return;
            }
        } else {
            generateExpression(firstChild.getFirstChild(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(existingIntProp);
            addScriptRuntimeInvoke("refIncrDecr", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
        }
    }

    private void visitObjectLiteral(Node node, Node node2, boolean z) {
        boolean z2;
        Object[] objArr = (Object[]) node.getProp(12);
        int length = objArr.length;
        if (z || ((length <= 10 && this.cfw.getCurrentCodeOffset() <= 30000) || this.hasVarsInRegs || this.isGenerator || this.inLocalBlock)) {
            if (this.isGenerator) {
                addLoadPropertyValues(node, node2, length);
                addLoadPropertyIds(objArr, length);
                this.cfw.add(95);
            } else {
                addLoadPropertyIds(objArr, length);
                addLoadPropertyValues(node, node2, length);
            }
            Node node3 = node2;
            for (int i = 0; i != length; i++) {
                int type = node3.getType();
                if (type == 151 || type == 152) {
                    z2 = true;
                    break;
                } else {
                    node3 = node3.getNext();
                }
            }
            z2 = false;
            if (z2) {
                this.cfw.addPush(length);
                this.cfw.add(188, 10);
                for (int i2 = 0; i2 != length; i2++) {
                    this.cfw.add(89);
                    this.cfw.addPush(i2);
                    int type2 = node2.getType();
                    if (type2 == 151) {
                        this.cfw.add(2);
                    } else if (type2 == 152) {
                        this.cfw.add(4);
                    } else {
                        this.cfw.add(3);
                    }
                    this.cfw.add(79);
                    node2 = node2.getNext();
                }
            } else {
                this.cfw.add(1);
            }
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("newObjectLiteral", "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.literals == null) {
            this.literals = new LinkedList();
        }
        this.literals.add(node);
        this.cfw.addALoad(this.funObjLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.thisObjLocal);
        this.cfw.addALoad(this.argsLocal);
        this.cfw.addInvoke(182, this.codegen.mainClassName, this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size(), "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitOptimizedCall(Node node, OptFunctionNode optFunctionNode, int i, Node node2) {
        short s;
        Node next = node2.getNext();
        String str = this.codegen.mainClassName;
        if (i == 30) {
            generateExpression(node2, node);
            s = 0;
        } else {
            generateFunctionAndThisObj(node2, node);
            short newWordLocal = getNewWordLocal();
            this.cfw.addAStore(newWordLocal);
            s = newWordLocal;
        }
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(89);
        this.cfw.add(193, str);
        this.cfw.add(153, acquireLabel2);
        this.cfw.add(192, str);
        this.cfw.add(89);
        this.cfw.add(180, str, "_id", "I");
        this.cfw.addPush(this.codegen.getIndex(optFunctionNode.fnode));
        this.cfw.add(160, acquireLabel2);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (i == 30) {
            this.cfw.add(1);
        } else {
            this.cfw.addALoad(s);
        }
        for (Node node3 = next; node3 != null; node3 = node3.getNext()) {
            int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node3);
            if (nodeIsDirectCallParameter >= 0) {
                this.cfw.addALoad(nodeIsDirectCallParameter);
                this.cfw.addDLoad(nodeIsDirectCallParameter + 1);
            } else if (node3.getIntProp(8, -1) == 0) {
                this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                generateExpression(node3, node);
            } else {
                generateExpression(node3, node);
                this.cfw.addPush(0.0d);
            }
        }
        this.cfw.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        this.cfw.addInvoke(184, this.codegen.mainClassName, i == 30 ? this.codegen.getDirectCtorName(optFunctionNode.fnode) : this.codegen.getBodyMethodName(optFunctionNode.fnode), this.codegen.getBodyMethodSignature(optFunctionNode.fnode));
        this.cfw.add(167, acquireLabel);
        this.cfw.markLabel(acquireLabel2);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (i != 30) {
            this.cfw.addALoad(s);
            releaseWordLocal(s);
        }
        generateCallArgArray(node, next, true);
        if (i == 30) {
            addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        } else {
            this.cfw.addInvoke(185, "org/mozilla/javascript/Callable", NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        }
        this.cfw.markLabel(acquireLabel);
    }

    private void visitSetConst(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(string);
        addScriptRuntimeInvoke("setConst", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSetConstVar(Node node, Node node2, boolean z) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.varRegisters[varIndex];
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        if (z2) {
            int i = s + 2;
            this.cfw.addILoad(i);
            this.cfw.add(154, acquireLabel2);
            short stackTop = this.cfw.getStackTop();
            this.cfw.addPush(1);
            this.cfw.addIStore(i);
            this.cfw.addDStore(s);
            if (z) {
                this.cfw.addDLoad(s);
                this.cfw.markLabel(acquireLabel2, stackTop);
            } else {
                this.cfw.add(167, acquireLabel);
                this.cfw.markLabel(acquireLabel2, stackTop);
                this.cfw.add(88);
            }
        } else {
            int i2 = s + 1;
            this.cfw.addILoad(i2);
            this.cfw.add(154, acquireLabel2);
            short stackTop2 = this.cfw.getStackTop();
            this.cfw.addPush(1);
            this.cfw.addIStore(i2);
            this.cfw.addAStore(s);
            if (z) {
                this.cfw.addALoad(s);
                this.cfw.markLabel(acquireLabel2, stackTop2);
            } else {
                this.cfw.add(167, acquireLabel);
                this.cfw.markLabel(acquireLabel2, stackTop2);
                this.cfw.add(87);
            }
        }
        this.cfw.markLabel(acquireLabel);
    }

    private void visitSetElem(int i, Node node, Node node2) {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 140) {
            this.cfw.add(89);
        }
        generateExpression(next, node);
        Node next2 = next.getNext();
        boolean z = node.getIntProp(8, -1) != -1;
        if (i == 140) {
            if (z) {
                this.cfw.add(93);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectIndex", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            } else {
                this.cfw.add(90);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        generateExpression(next2, node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (z) {
            addScriptRuntimeInvoke("setObjectIndex", "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else {
            addScriptRuntimeInvoke("setObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void visitSetName(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addPush(string);
        addScriptRuntimeInvoke("setName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSetProp(int i, Node node, Node node2) {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 139) {
            this.cfw.add(89);
        }
        generateExpression(next, node);
        Node next2 = next.getNext();
        if (i == 139) {
            this.cfw.add(90);
            if (node2.getType() == 43 && next.getType() == 41) {
                this.cfw.addALoad(this.contextLocal);
                addScriptRuntimeInvoke("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            } else {
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        generateExpression(next2, node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("setObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
    }

    private void visitSetVar(Node node, Node node2, boolean z) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.varRegisters[varIndex];
        if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
            if (z) {
                return;
            }
            if (z2) {
                this.cfw.add(88);
            } else {
                this.cfw.add(87);
            }
        } else if (!varIsDirectCallParameter(varIndex)) {
            boolean isNumberVar = this.fnCurrent.isNumberVar(varIndex);
            if (!z2) {
                if (isNumberVar) {
                    Kit.codeBug();
                }
                this.cfw.addAStore(s);
                if (z) {
                    this.cfw.addALoad(s);
                }
            } else if (isNumberVar) {
                this.cfw.addDStore(s);
                if (z) {
                    this.cfw.addDLoad(s);
                }
            } else {
                if (z) {
                    this.cfw.add(92);
                }
                addDoubleWrap();
                this.cfw.addAStore(s);
            }
        } else if (z2) {
            if (z) {
                this.cfw.add(92);
            }
            this.cfw.addALoad(s);
            this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            int acquireLabel = this.cfw.acquireLabel();
            int acquireLabel2 = this.cfw.acquireLabel();
            this.cfw.add(165, acquireLabel);
            short stackTop = this.cfw.getStackTop();
            addDoubleWrap();
            this.cfw.addAStore(s);
            this.cfw.add(167, acquireLabel2);
            this.cfw.markLabel(acquireLabel, stackTop);
            this.cfw.addDStore(s + 1);
            this.cfw.markLabel(acquireLabel2);
        } else {
            if (z) {
                this.cfw.add(89);
            }
            this.cfw.addAStore(s);
        }
    }

    private void visitSpecialCall(Node node, int i, int i2, Node node2) {
        String str;
        String str2;
        this.cfw.addALoad(this.contextLocal);
        if (i == 30) {
            generateExpression(node2, node);
        } else {
            generateFunctionAndThisObj(node2, node);
        }
        generateCallArgArray(node, node2.getNext(), false);
        if (i == 30) {
            str = "newObjectSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;";
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addPush(i2);
        } else {
            str = "callSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;";
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addPush(i2);
            String sourceName = this.scriptOrFn.getSourceName();
            ClassFileWriter classFileWriter = this.cfw;
            String str3 = sourceName;
            if (sourceName == null) {
                str3 = "";
            }
            classFileWriter.addPush(str3);
            this.cfw.addPush(this.itsLineNumber);
        }
        addOptRuntimeInvoke(str, str2);
    }

    private void visitStandardCall(Node node, Node node2) {
        String str;
        String str2;
        if (node.getType() != 38) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        int type = node2.getType();
        if (next == null) {
            if (type == 39) {
                this.cfw.addPush(node2.getString());
                str2 = "callName0";
                str = "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (type == 33) {
                Node firstChild = node2.getFirstChild();
                generateExpression(firstChild, node);
                this.cfw.addPush(firstChild.getNext().getString());
                str2 = "callProp0";
                str = "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (type == 34) {
                throw Kit.codeBug();
            } else {
                generateFunctionAndThisObj(node2, node);
                str2 = "call0";
                str = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        } else if (type == 39) {
            String string = node2.getString();
            generateCallArgArray(node, next, false);
            this.cfw.addPush(string);
            str2 = "callName";
            str = "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
        } else {
            int i = 0;
            for (Node node3 = next; node3 != null; node3 = node3.getNext()) {
                i++;
            }
            generateFunctionAndThisObj(node2, node);
            if (i == 1) {
                generateExpression(next, node);
                str2 = "call1";
                str = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (i == 2) {
                generateExpression(next, node);
                generateExpression(next.getNext(), node);
                str2 = "call2";
                str = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else {
                generateCallArgArray(node, next, false);
                str2 = "callN";
                str = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addOptRuntimeInvoke(str2, str);
    }

    private void visitStandardNew(Node node, Node node2) {
        if (node.getType() != 30) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        generateExpression(node2, node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        generateCallArgArray(node, next, false);
        addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitStrictSetName(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addPush(string);
        addScriptRuntimeInvoke("strictSetName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSwitch(Jump jump, Node node) {
        generateExpression(node, jump);
        short newWordLocal = getNewWordLocal();
        this.cfw.addAStore(newWordLocal);
        Node next = node.getNext();
        while (true) {
            Jump jump2 = (Jump) next;
            if (jump2 == null) {
                releaseWordLocal(newWordLocal);
                return;
            } else if (jump2.getType() != 115) {
                throw Codegen.badTree();
            } else {
                generateExpression(jump2.getFirstChild(), jump2);
                this.cfw.addALoad(newWordLocal);
                addScriptRuntimeInvoke("shallowEq", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
                addGoto(jump2.target, 154);
                next = jump2.getNext();
            }
        }
    }

    private void visitTryCatchFinally(Jump jump, Node node) {
        short newWordLocal = getNewWordLocal();
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addAStore(newWordLocal);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel, (short) 0);
        Node node2 = jump.target;
        Node node3 = jump.getFinally();
        int[] iArr = new int[5];
        this.exceptionManager.pushExceptionInfo(jump);
        if (node2 != null) {
            iArr[0] = this.cfw.acquireLabel();
            iArr[1] = this.cfw.acquireLabel();
            iArr[2] = this.cfw.acquireLabel();
            Context currentContext = Context.getCurrentContext();
            if (currentContext != null && currentContext.hasFeature(13)) {
                iArr[3] = this.cfw.acquireLabel();
            }
        }
        if (node3 != null) {
            iArr[4] = this.cfw.acquireLabel();
        }
        this.exceptionManager.setHandlers(iArr, acquireLabel);
        if (this.isGenerator && node3 != null) {
            FinallyReturnPoint finallyReturnPoint = new FinallyReturnPoint();
            if (this.finallys == null) {
                this.finallys = new HashMap();
            }
            this.finallys.put(node3, finallyReturnPoint);
            this.finallys.put(node3.getNext(), finallyReturnPoint);
        }
        while (node != null) {
            if (node == node2) {
                int targetLabel = getTargetLabel(node2);
                this.exceptionManager.removeHandler(0, targetLabel);
                this.exceptionManager.removeHandler(1, targetLabel);
                this.exceptionManager.removeHandler(2, targetLabel);
                this.exceptionManager.removeHandler(3, targetLabel);
            }
            generateStatement(node);
            node = node.getNext();
        }
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(167, acquireLabel2);
        int localBlockRegister = getLocalBlockRegister(jump);
        if (node2 != null) {
            int labelId = node2.labelId();
            generateCatchBlock(0, newWordLocal, labelId, localBlockRegister, iArr[0]);
            generateCatchBlock(1, newWordLocal, labelId, localBlockRegister, iArr[1]);
            generateCatchBlock(2, newWordLocal, labelId, localBlockRegister, iArr[2]);
            Context currentContext2 = Context.getCurrentContext();
            if (currentContext2 != null && currentContext2.hasFeature(13)) {
                generateCatchBlock(3, newWordLocal, labelId, localBlockRegister, iArr[3]);
            }
        }
        if (node3 != null) {
            int acquireLabel3 = this.cfw.acquireLabel();
            int acquireLabel4 = this.cfw.acquireLabel();
            this.cfw.markHandler(acquireLabel3);
            if (!this.isGenerator) {
                this.cfw.markLabel(iArr[4]);
            }
            this.cfw.addAStore(localBlockRegister);
            this.cfw.addALoad(newWordLocal);
            this.cfw.addAStore(this.variableObjectLocal);
            int labelId2 = node3.labelId();
            if (this.isGenerator) {
                addGotoWithReturn(node3);
            } else {
                inlineFinally(node3, iArr[4], acquireLabel4);
            }
            this.cfw.addALoad(localBlockRegister);
            if (this.isGenerator) {
                this.cfw.add(192, "java/lang/Throwable");
            }
            this.cfw.add(191);
            this.cfw.markLabel(acquireLabel4);
            if (this.isGenerator) {
                this.cfw.addExceptionHandler(acquireLabel, labelId2, acquireLabel3, null);
            }
        }
        releaseWordLocal(newWordLocal);
        this.cfw.markLabel(acquireLabel2);
        if (!this.isGenerator) {
            this.exceptionManager.popExceptionInfo();
        }
    }

    private void visitTypeofname(Node node) {
        int indexForNameNode;
        if (!this.hasVarsInRegs || (indexForNameNode = this.fnCurrent.fnode.getIndexForNameNode(node)) < 0) {
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(node.getString());
            addScriptRuntimeInvoke("typeofName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;");
        } else if (this.fnCurrent.isNumberVar(indexForNameNode)) {
            this.cfw.addPush("number");
        } else if (varIsDirectCallParameter(indexForNameNode)) {
            short s = this.varRegisters[indexForNameNode];
            this.cfw.addALoad(s);
            this.cfw.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            int acquireLabel = this.cfw.acquireLabel();
            this.cfw.add(165, acquireLabel);
            short stackTop = this.cfw.getStackTop();
            this.cfw.addALoad(s);
            addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
            int acquireLabel2 = this.cfw.acquireLabel();
            this.cfw.add(167, acquireLabel2);
            this.cfw.markLabel(acquireLabel, stackTop);
            this.cfw.addPush("number");
            this.cfw.markLabel(acquireLabel2);
        } else {
            this.cfw.addALoad(this.varRegisters[indexForNameNode]);
            addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void generateBodyCode() {
        this.isGenerator = Codegen.isGenerator(this.scriptOrFn);
        initBodyGeneration();
        if (this.isGenerator) {
            ClassFileWriter classFileWriter = this.cfw;
            classFileWriter.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn) + "_gen", "(" + this.codegen.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;", (short) 10);
        } else {
            this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        }
        generatePrologue();
        generateStatement(this.fnCurrent != null ? this.scriptOrFn.getLastChild() : this.scriptOrFn);
        generateEpilogue();
        this.cfw.stopMethod((short) (this.localsMax + 1));
        if (this.isGenerator) {
            generateGenerator();
        }
        if (this.literals != null) {
            for (int i = 0; i < this.literals.size(); i++) {
                Node node = this.literals.get(i);
                int type = node.getType();
                switch (type) {
                    case 65:
                        generateArrayLiteralFactory(node, i + 1);
                        break;
                    case 66:
                        generateObjectLiteralFactory(node, i + 1);
                        break;
                    default:
                        Kit.codeBug(Token.typeToName(type));
                        break;
                }
            }
        }
    }
}
