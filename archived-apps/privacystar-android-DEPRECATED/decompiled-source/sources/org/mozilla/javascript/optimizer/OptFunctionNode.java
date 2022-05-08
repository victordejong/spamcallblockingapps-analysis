package org.mozilla.javascript.optimizer;

import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.ScriptNode;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/OptFunctionNode.class */
public final class OptFunctionNode {
    private int directTargetIndex = -1;
    public final FunctionNode fnode;
    boolean itsContainsCalls0;
    boolean itsContainsCalls1;
    private boolean itsParameterNumberContext;
    private boolean[] numberVarFlags;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OptFunctionNode(FunctionNode functionNode) {
        this.fnode = functionNode;
        functionNode.setCompilerData(this);
    }

    public static OptFunctionNode get(ScriptNode scriptNode) {
        return (OptFunctionNode) scriptNode.getCompilerData();
    }

    public static OptFunctionNode get(ScriptNode scriptNode, int i) {
        return (OptFunctionNode) scriptNode.getFunctionNode(i).getCompilerData();
    }

    public int getDirectTargetIndex() {
        return this.directTargetIndex;
    }

    public boolean getParameterNumberContext() {
        return this.itsParameterNumberContext;
    }

    public int getVarCount() {
        return this.fnode.getParamAndVarCount();
    }

    public int getVarIndex(Node node) {
        Node node2;
        int intProp = node.getIntProp(7, -1);
        int i = intProp;
        if (intProp == -1) {
            int type = node.getType();
            if (type == 55) {
                node2 = node;
            } else if (type == 56 || type == 156) {
                node2 = node.getFirstChild();
            } else {
                throw Kit.codeBug();
            }
            i = this.fnode.getIndexForNameNode(node2);
            if (i < 0) {
                throw Kit.codeBug();
            }
            node.putIntProp(7, i);
        }
        return i;
    }

    public boolean isNumberVar(int i) {
        int paramCount = i - this.fnode.getParamCount();
        if (paramCount < 0 || this.numberVarFlags == null) {
            return false;
        }
        return this.numberVarFlags[paramCount];
    }

    public boolean isParameter(int i) {
        return i < this.fnode.getParamCount();
    }

    public boolean isTargetOfDirectCall() {
        return this.directTargetIndex >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDirectTargetIndex(int i) {
        if (i < 0 || this.directTargetIndex >= 0) {
            Kit.codeBug();
        }
        this.directTargetIndex = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIsNumberVar(int i) {
        int paramCount = i - this.fnode.getParamCount();
        if (paramCount < 0) {
            Kit.codeBug();
        }
        if (this.numberVarFlags == null) {
            this.numberVarFlags = new boolean[this.fnode.getParamAndVarCount() - this.fnode.getParamCount()];
        }
        this.numberVarFlags[paramCount] = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setParameterNumberContext(boolean z) {
        this.itsParameterNumberContext = z;
    }
}
