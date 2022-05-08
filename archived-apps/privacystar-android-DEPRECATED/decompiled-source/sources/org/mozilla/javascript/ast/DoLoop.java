package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/DoLoop.class */
public class DoLoop extends Loop {
    private AstNode condition;
    private int whilePosition = -1;

    public DoLoop() {
        this.type = 118;
    }

    public DoLoop(int i) {
        super(i);
        this.type = 118;
    }

    public DoLoop(int i, int i2) {
        super(i, i2);
        this.type = 118;
    }

    public AstNode getCondition() {
        return this.condition;
    }

    public int getWhilePosition() {
        return this.whilePosition;
    }

    public void setCondition(AstNode astNode) {
        assertNotNull(astNode);
        this.condition = astNode;
        astNode.setParent(this);
    }

    public void setWhilePosition(int i) {
        this.whilePosition = i;
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i) + "do " + this.body.toSource(i).trim() + " while (" + this.condition.toSource(0) + ");\n";
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.body.visit(nodeVisitor);
            this.condition.visit(nodeVisitor);
        }
    }
}
