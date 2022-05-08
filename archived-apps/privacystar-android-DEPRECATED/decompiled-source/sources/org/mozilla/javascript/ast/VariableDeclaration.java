package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.List;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Token;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/VariableDeclaration.class */
public class VariableDeclaration extends AstNode {
    private boolean isStatement;
    private List<VariableInitializer> variables = new ArrayList();

    public VariableDeclaration() {
        this.type = 122;
    }

    public VariableDeclaration(int i) {
        super(i);
        this.type = 122;
    }

    public VariableDeclaration(int i, int i2) {
        super(i, i2);
        this.type = 122;
    }

    private String declTypeName() {
        return Token.typeToName(this.type).toLowerCase();
    }

    public void addVariable(VariableInitializer variableInitializer) {
        assertNotNull(variableInitializer);
        this.variables.add(variableInitializer);
        variableInitializer.setParent(this);
    }

    public List<VariableInitializer> getVariables() {
        return this.variables;
    }

    public boolean isConst() {
        return this.type == 154;
    }

    public boolean isLet() {
        return this.type == 153;
    }

    public boolean isStatement() {
        return this.isStatement;
    }

    public boolean isVar() {
        return this.type == 122;
    }

    public void setIsStatement(boolean z) {
        this.isStatement = z;
    }

    @Override // org.mozilla.javascript.Node
    public Node setType(int i) {
        if (i == 122 || i == 154 || i == 153) {
            return super.setType(i);
        }
        throw new IllegalArgumentException("invalid decl type: " + i);
    }

    public void setVariables(List<VariableInitializer> list) {
        assertNotNull(list);
        this.variables.clear();
        for (VariableInitializer variableInitializer : list) {
            addVariable(variableInitializer);
        }
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append(declTypeName());
        sb.append(" ");
        printList(this.variables, sb);
        if (isStatement()) {
            sb.append(";\n");
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            for (VariableInitializer variableInitializer : this.variables) {
                variableInitializer.visit(nodeVisitor);
            }
        }
    }
}
