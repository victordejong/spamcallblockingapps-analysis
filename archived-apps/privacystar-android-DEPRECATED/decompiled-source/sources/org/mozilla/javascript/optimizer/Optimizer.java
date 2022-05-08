package org.mozilla.javascript.optimizer;

import org.mozilla.javascript.Node;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ast.ScriptNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/Optimizer.class */
public class Optimizer {
    static final int AnyType = 3;
    static final int NoType = 0;
    static final int NumberType = 1;
    private boolean inDirectCallFunction;
    private boolean parameterUsedInNumberContext;
    OptFunctionNode theFunction;

    private static void buildStatementList_r(Node node, ObjArray objArray) {
        int type = node.getType();
        if (type == 129 || type == 141 || type == 132 || type == 109) {
            for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
                buildStatementList_r(firstChild, objArray);
            }
            return;
        }
        objArray.add(node);
    }

    private boolean convertParameter(Node node) {
        if (!this.inDirectCallFunction || node.getType() != 55) {
            return false;
        }
        if (!this.theFunction.isParameter(this.theFunction.getVarIndex(node))) {
            return false;
        }
        node.removeProp(8);
        return true;
    }

    private void markDCPNumberContext(Node node) {
        if (this.inDirectCallFunction && node.getType() == 55) {
            if (this.theFunction.isParameter(this.theFunction.getVarIndex(node))) {
                this.parameterUsedInNumberContext = true;
            }
        }
    }

    private void optimizeFunction(OptFunctionNode optFunctionNode) {
        if (!optFunctionNode.fnode.requiresActivation()) {
            this.inDirectCallFunction = optFunctionNode.isTargetOfDirectCall();
            this.theFunction = optFunctionNode;
            ObjArray objArray = new ObjArray();
            buildStatementList_r(optFunctionNode.fnode, objArray);
            Node[] nodeArr = new Node[objArray.size()];
            objArray.toArray(nodeArr);
            Block.runFlowAnalyzes(optFunctionNode, nodeArr);
            if (!optFunctionNode.fnode.requiresActivation()) {
                this.parameterUsedInNumberContext = false;
                for (Node node : nodeArr) {
                    rewriteForNumberVariables(node, 1);
                }
                optFunctionNode.setParameterNumberContext(this.parameterUsedInNumberContext);
            }
        }
    }

    private void rewriteAsObjectChildren(Node node, Node node2) {
        while (node2 != null) {
            Node next = node2.getNext();
            if (rewriteForNumberVariables(node2, 0) == 1 && !convertParameter(node2)) {
                node.removeChild(node2);
                Node node3 = new Node(149, node2);
                if (next == null) {
                    node.addChildToBack(node3);
                } else {
                    node.addChildBefore(node3, next);
                }
            }
            node2 = next;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int rewriteForNumberVariables(Node node, int i) {
        int type = node.getType();
        if (type == 40) {
            node.putIntProp(8, 0);
            return 1;
        } else if (type != 133) {
            if (type != 140) {
                if (type != 156) {
                    switch (type) {
                        case 9:
                        case 10:
                        case 11:
                            break;
                        default:
                            switch (type) {
                                case 14:
                                case 15:
                                case 16:
                                case 17:
                                    Node firstChild = node.getFirstChild();
                                    Node next = firstChild.getNext();
                                    int rewriteForNumberVariables = rewriteForNumberVariables(firstChild, 1);
                                    int rewriteForNumberVariables2 = rewriteForNumberVariables(next, 1);
                                    markDCPNumberContext(firstChild);
                                    markDCPNumberContext(next);
                                    if (convertParameter(firstChild)) {
                                        if (convertParameter(next) || rewriteForNumberVariables2 != 1) {
                                            return 0;
                                        }
                                        node.putIntProp(8, 2);
                                        return 0;
                                    } else if (convertParameter(next)) {
                                        if (rewriteForNumberVariables != 1) {
                                            return 0;
                                        }
                                        node.putIntProp(8, 1);
                                        return 0;
                                    } else if (rewriteForNumberVariables == 1) {
                                        if (rewriteForNumberVariables2 == 1) {
                                            node.putIntProp(8, 0);
                                            return 0;
                                        }
                                        node.putIntProp(8, 1);
                                        return 0;
                                    } else if (rewriteForNumberVariables2 != 1) {
                                        return 0;
                                    } else {
                                        node.putIntProp(8, 2);
                                        return 0;
                                    }
                                case 18:
                                case 19:
                                    break;
                                default:
                                    switch (type) {
                                        case 21:
                                            Node firstChild2 = node.getFirstChild();
                                            Node next2 = firstChild2.getNext();
                                            int rewriteForNumberVariables3 = rewriteForNumberVariables(firstChild2, 1);
                                            int rewriteForNumberVariables4 = rewriteForNumberVariables(next2, 1);
                                            if (convertParameter(firstChild2)) {
                                                if (convertParameter(next2) || rewriteForNumberVariables4 != 1) {
                                                    return 0;
                                                }
                                                node.putIntProp(8, 2);
                                                return 0;
                                            } else if (convertParameter(next2)) {
                                                if (rewriteForNumberVariables3 != 1) {
                                                    return 0;
                                                }
                                                node.putIntProp(8, 1);
                                                return 0;
                                            } else if (rewriteForNumberVariables3 == 1) {
                                                if (rewriteForNumberVariables4 == 1) {
                                                    node.putIntProp(8, 0);
                                                    return 1;
                                                }
                                                node.putIntProp(8, 1);
                                                return 0;
                                            } else if (rewriteForNumberVariables4 != 1) {
                                                return 0;
                                            } else {
                                                node.putIntProp(8, 2);
                                                return 0;
                                            }
                                        case 22:
                                        case 23:
                                        case 24:
                                        case 25:
                                            break;
                                        default:
                                            switch (type) {
                                                case 36:
                                                    Node firstChild3 = node.getFirstChild();
                                                    Node next3 = firstChild3.getNext();
                                                    if (rewriteForNumberVariables(firstChild3, 1) == 1 && !convertParameter(firstChild3)) {
                                                        node.removeChild(firstChild3);
                                                        node.addChildToFront(new Node(149, firstChild3));
                                                    }
                                                    if (rewriteForNumberVariables(next3, 1) != 1 || convertParameter(next3)) {
                                                        return 0;
                                                    }
                                                    node.putIntProp(8, 2);
                                                    return 0;
                                                case 37:
                                                    break;
                                                case 38:
                                                    Node firstChild4 = node.getFirstChild();
                                                    rewriteAsObjectChildren(firstChild4, firstChild4.getFirstChild());
                                                    Node next4 = firstChild4.getNext();
                                                    if (((OptFunctionNode) node.getProp(9)) != null) {
                                                        for (Node node2 = next4; node2 != null; node2 = node2.getNext()) {
                                                            if (rewriteForNumberVariables(node2, 1) == 1) {
                                                                markDCPNumberContext(node2);
                                                            }
                                                        }
                                                        return 0;
                                                    }
                                                    rewriteAsObjectChildren(node, next4);
                                                    return 0;
                                                default:
                                                    switch (type) {
                                                        case 55:
                                                            int varIndex = this.theFunction.getVarIndex(node);
                                                            if (this.inDirectCallFunction && this.theFunction.isParameter(varIndex) && i == 1) {
                                                                node.putIntProp(8, 0);
                                                                return 1;
                                                            } else if (!this.theFunction.isNumberVar(varIndex)) {
                                                                return 0;
                                                            } else {
                                                                node.putIntProp(8, 0);
                                                                return 1;
                                                            }
                                                        case 56:
                                                            break;
                                                        default:
                                                            switch (type) {
                                                                case 106:
                                                                case 107:
                                                                    Node firstChild5 = node.getFirstChild();
                                                                    int rewriteForNumberVariables5 = rewriteForNumberVariables(firstChild5, 1);
                                                                    if (firstChild5.getType() == 55) {
                                                                        if (rewriteForNumberVariables5 != 1 || convertParameter(firstChild5)) {
                                                                            return 0;
                                                                        }
                                                                        node.putIntProp(8, 0);
                                                                        markDCPNumberContext(firstChild5);
                                                                        return 1;
                                                                    } else if (firstChild5.getType() == 36 || firstChild5.getType() == 33) {
                                                                        return rewriteForNumberVariables5;
                                                                    } else {
                                                                        return 0;
                                                                    }
                                                                default:
                                                                    rewriteAsObjectChildren(node, node.getFirstChild());
                                                                    return 0;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                    Node firstChild6 = node.getFirstChild();
                    Node next5 = firstChild6.getNext();
                    int rewriteForNumberVariables6 = rewriteForNumberVariables(firstChild6, 1);
                    int rewriteForNumberVariables7 = rewriteForNumberVariables(next5, 1);
                    markDCPNumberContext(firstChild6);
                    markDCPNumberContext(next5);
                    if (rewriteForNumberVariables6 == 1) {
                        if (rewriteForNumberVariables7 == 1) {
                            node.putIntProp(8, 0);
                            return 1;
                        } else if (convertParameter(next5)) {
                            return 1;
                        } else {
                            node.removeChild(next5);
                            node.addChildToBack(new Node(150, next5));
                            node.putIntProp(8, 0);
                            return 1;
                        }
                    } else if (rewriteForNumberVariables7 != 1) {
                        if (!convertParameter(firstChild6)) {
                            node.removeChild(firstChild6);
                            node.addChildToFront(new Node(150, firstChild6));
                        }
                        if (!convertParameter(next5)) {
                            node.removeChild(next5);
                            node.addChildToBack(new Node(150, next5));
                        }
                        node.putIntProp(8, 0);
                        return 1;
                    } else if (convertParameter(firstChild6)) {
                        return 1;
                    } else {
                        node.removeChild(firstChild6);
                        node.addChildToFront(new Node(150, firstChild6));
                        node.putIntProp(8, 0);
                        return 1;
                    }
                }
                Node next6 = node.getFirstChild().getNext();
                int rewriteForNumberVariables8 = rewriteForNumberVariables(next6, 1);
                int varIndex2 = this.theFunction.getVarIndex(node);
                if (!this.inDirectCallFunction || !this.theFunction.isParameter(varIndex2)) {
                    if (this.theFunction.isNumberVar(varIndex2)) {
                        if (rewriteForNumberVariables8 != 1) {
                            node.removeChild(next6);
                            node.addChildToBack(new Node(150, next6));
                        }
                        node.putIntProp(8, 0);
                        markDCPNumberContext(next6);
                        return 1;
                    } else if (rewriteForNumberVariables8 != 1 || convertParameter(next6)) {
                        return 0;
                    } else {
                        node.removeChild(next6);
                        node.addChildToBack(new Node(149, next6));
                        return 0;
                    }
                } else if (rewriteForNumberVariables8 != 1) {
                    return rewriteForNumberVariables8;
                } else {
                    if (!convertParameter(next6)) {
                        node.putIntProp(8, 0);
                        return 1;
                    }
                    markDCPNumberContext(next6);
                    return 0;
                }
            }
            Node firstChild7 = node.getFirstChild();
            Node next7 = firstChild7.getNext();
            Node next8 = next7.getNext();
            if (rewriteForNumberVariables(firstChild7, 1) == 1 && !convertParameter(firstChild7)) {
                node.removeChild(firstChild7);
                node.addChildToFront(new Node(149, firstChild7));
            }
            if (rewriteForNumberVariables(next7, 1) == 1 && !convertParameter(next7)) {
                node.putIntProp(8, 1);
            }
            if (rewriteForNumberVariables(next8, 1) != 1 || convertParameter(next8)) {
                return 0;
            }
            node.removeChild(next8);
            node.addChildToBack(new Node(149, next8));
            return 0;
        } else if (rewriteForNumberVariables(node.getFirstChild(), 1) != 1) {
            return 0;
        } else {
            node.putIntProp(8, 0);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void optimize(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            optimizeFunction(OptFunctionNode.get(scriptNode, i));
        }
    }
}
