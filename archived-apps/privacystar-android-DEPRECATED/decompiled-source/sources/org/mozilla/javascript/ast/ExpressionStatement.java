package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ExpressionStatement.class */
public class ExpressionStatement extends AstNode {
    private AstNode expr;

    public ExpressionStatement() {
        this.type = 133;
    }

    public ExpressionStatement(int i, int i2) {
        super(i, i2);
        this.type = 133;
    }

    public ExpressionStatement(int i, int i2, AstNode astNode) {
        super(i, i2);
        this.type = 133;
        setExpression(astNode);
    }

    public ExpressionStatement(AstNode astNode) {
        this(astNode.getPosition(), astNode.getLength(), astNode);
    }

    public ExpressionStatement(AstNode astNode, boolean z) {
        this(astNode);
        if (z) {
            setHasResult();
        }
    }

    public AstNode getExpression() {
        return this.expr;
    }

    @Override // org.mozilla.javascript.ast.AstNode, org.mozilla.javascript.Node
    public boolean hasSideEffects() {
        return this.type == 134 || this.expr.hasSideEffects();
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expr = astNode;
        astNode.setParent(this);
        setLineno(astNode.getLineno());
    }

    public void setHasResult() {
        this.type = 134;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return this.expr.toSource(i) + ";\n";
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expr.visit(nodeVisitor);
        }
    }
}
