package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/XmlMemberGet.class */
public class XmlMemberGet extends InfixExpression {
    public XmlMemberGet() {
        this.type = 143;
    }

    public XmlMemberGet(int i) {
        super(i);
        this.type = 143;
    }

    public XmlMemberGet(int i, int i2) {
        super(i, i2);
        this.type = 143;
    }

    public XmlMemberGet(int i, int i2, AstNode astNode, XmlRef xmlRef) {
        super(i, i2, astNode, xmlRef);
        this.type = 143;
    }

    public XmlMemberGet(AstNode astNode, XmlRef xmlRef) {
        super(astNode, xmlRef);
        this.type = 143;
    }

    public XmlMemberGet(AstNode astNode, XmlRef xmlRef, int i) {
        super(143, astNode, xmlRef, i);
        this.type = 143;
    }

    public XmlRef getMemberRef() {
        return (XmlRef) getRight();
    }

    public AstNode getTarget() {
        return getLeft();
    }

    public void setProperty(XmlRef xmlRef) {
        setRight(xmlRef);
    }

    public void setTarget(AstNode astNode) {
        setLeft(astNode);
    }

    @Override // org.mozilla.javascript.ast.InfixExpression, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i) + getLeft().toSource(0) + operatorToString(getType()) + getRight().toSource(0);
    }
}
