package org.mozilla.javascript.tools.debugger;

import java.util.Arrays;
import java.util.Comparator;
import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreePath;
import org.mozilla.javascript.tools.debugger.treetable.TreeTableModel;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/VariableModel.class */
class VariableModel implements TreeTableModel {
    private Dim debugger;
    private VariableNode root;
    private static final String[] cNames = {" Name", " Value"};
    private static final Class<?>[] cTypes = {TreeTableModel.class, String.class};
    private static final VariableNode[] CHILDLESS = new VariableNode[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/VariableModel$VariableNode.class */
    public static class VariableNode {
        private VariableNode[] children;

        /* renamed from: id */
        private Object f843id;
        private Object object;

        public VariableNode(Object obj, Object obj2) {
            this.object = obj;
            this.f843id = obj2;
        }

        public String toString() {
            String str;
            if (this.f843id instanceof String) {
                str = (String) this.f843id;
            } else {
                str = "[" + ((Integer) this.f843id).intValue() + "]";
            }
            return str;
        }
    }

    public VariableModel() {
    }

    public VariableModel(Dim dim, Object obj) {
        this.debugger = dim;
        this.root = new VariableNode(obj, "this");
    }

    private VariableNode[] children(VariableNode variableNode) {
        VariableNode[] variableNodeArr;
        if (variableNode.children != null) {
            return variableNode.children;
        }
        Object value = getValue(variableNode);
        Object[] objectIds = this.debugger.getObjectIds(value);
        if (objectIds != null && objectIds.length != 0) {
            Arrays.sort(objectIds, new Comparator<Object>() { // from class: org.mozilla.javascript.tools.debugger.VariableModel.1
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    if (obj instanceof String) {
                        if (obj2 instanceof Integer) {
                            return -1;
                        }
                        return ((String) obj).compareToIgnoreCase((String) obj2);
                    } else if (obj2 instanceof String) {
                        return 1;
                    } else {
                        return ((Integer) obj).intValue() - ((Integer) obj2).intValue();
                    }
                }
            });
            VariableNode[] variableNodeArr2 = new VariableNode[objectIds.length];
            int i = 0;
            while (true) {
                variableNodeArr = variableNodeArr2;
                if (i == objectIds.length) {
                    break;
                }
                variableNodeArr2[i] = new VariableNode(value, objectIds[i]);
                i++;
            }
        } else {
            variableNodeArr = CHILDLESS;
        }
        variableNode.children = variableNodeArr;
        return variableNodeArr;
    }

    public void addTreeModelListener(TreeModelListener treeModelListener) {
    }

    public Object getChild(Object obj, int i) {
        if (this.debugger == null) {
            return null;
        }
        return children((VariableNode) obj)[i];
    }

    public int getChildCount(Object obj) {
        if (this.debugger == null) {
            return 0;
        }
        return children((VariableNode) obj).length;
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public Class<?> getColumnClass(int i) {
        return cTypes[i];
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public int getColumnCount() {
        return cNames.length;
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public String getColumnName(int i) {
        return cNames[i];
    }

    public int getIndexOfChild(Object obj, Object obj2) {
        if (this.debugger == null) {
            return -1;
        }
        VariableNode variableNode = (VariableNode) obj2;
        VariableNode[] children = children((VariableNode) obj);
        for (int i = 0; i != children.length; i++) {
            if (children[i] == variableNode) {
                return i;
            }
        }
        return -1;
    }

    public Object getRoot() {
        if (this.debugger == null) {
            return null;
        }
        return this.root;
    }

    public Object getValue(VariableNode variableNode) {
        try {
            return this.debugger.getObjectProperty(variableNode.object, variableNode.f843id);
        } catch (Exception e) {
            return "undefined";
        }
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public Object getValueAt(Object obj, int i) {
        String str;
        if (this.debugger == null) {
            return null;
        }
        VariableNode variableNode = (VariableNode) obj;
        switch (i) {
            case 0:
                return variableNode.toString();
            case 1:
                try {
                    str = this.debugger.objectToString(getValue(variableNode));
                } catch (RuntimeException e) {
                    str = e.getMessage();
                }
                StringBuilder sb = new StringBuilder();
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    char c = charAt;
                    if (Character.isISOControl(charAt)) {
                        c = ' ';
                    }
                    sb.append(c);
                }
                return sb.toString();
            default:
                return null;
        }
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public boolean isCellEditable(Object obj, int i) {
        return i == 0;
    }

    public boolean isLeaf(Object obj) {
        boolean z = true;
        if (this.debugger == null) {
            return true;
        }
        if (children((VariableNode) obj).length != 0) {
            z = false;
        }
        return z;
    }

    public void removeTreeModelListener(TreeModelListener treeModelListener) {
    }

    @Override // org.mozilla.javascript.tools.debugger.treetable.TreeTableModel
    public void setValueAt(Object obj, Object obj2, int i) {
    }

    public void valueForPathChanged(TreePath treePath, Object obj) {
    }
}
