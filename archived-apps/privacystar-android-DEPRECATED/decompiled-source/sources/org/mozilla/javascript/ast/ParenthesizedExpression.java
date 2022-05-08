package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ParenthesizedExpression.class */
public class ParenthesizedExpression extends AstNode {
    private AstNode expression;

    public ParenthesizedExpression() {
        this.type = 87;
    }

    public ParenthesizedExpression(int i) {
        super(i);
        this.type = 87;
    }

    public ParenthesizedExpression(int i, int i2) {
        super(i, i2);
        this.type = 87;
    }

    public ParenthesizedExpression(int i, int i2, AstNode astNode) {
        super(i, i2);
        this.type = 87;
        setExpression(astNode);
    }

    public ParenthesizedExpression(AstNode astNode) {
        this(astNode != null ? astNode.getPosition() : 0, astNode != null ? astNode.getLength() : 1, astNode);
    }

    public AstNode getExpression() {
        return this.expression;
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expression = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i) + "(" + this.expression.toSource(0) + ")";
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expression.visit(nodeVisitor);
        }
    }
}
