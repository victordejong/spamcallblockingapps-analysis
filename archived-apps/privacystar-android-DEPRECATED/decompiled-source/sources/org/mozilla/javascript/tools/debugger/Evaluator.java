package org.mozilla.javascript.tools.debugger;

import javax.swing.JTable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Evaluator.class */
public class Evaluator extends JTable {
    private static final long serialVersionUID = 8133672432982594256L;
    MyTableModel tableModel = getModel();

    public Evaluator(SwingGui swingGui) {
        super(new MyTableModel(swingGui));
    }
}
