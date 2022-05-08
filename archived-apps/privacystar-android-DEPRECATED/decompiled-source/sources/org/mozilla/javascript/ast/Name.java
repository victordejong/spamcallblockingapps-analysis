package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/Name.class */
public class Name extends AstNode {
    private String identifier;
    private Scope scope;

    public Name() {
        this.type = 39;
    }

    public Name(int i) {
        super(i);
        this.type = 39;
    }

    public Name(int i, int i2) {
        super(i, i2);
        this.type = 39;
    }

    public Name(int i, int i2, String str) {
        super(i, i2);
        this.type = 39;
        setIdentifier(str);
    }

    public Name(int i, String str) {
        super(i);
        this.type = 39;
        setIdentifier(str);
        setLength(str.length());
    }

    public Scope getDefiningScope() {
        Scope enclosingScope = getEnclosingScope();
        return enclosingScope == null ? null : enclosingScope.getDefiningScope(getIdentifier());
    }

    public String getIdentifier() {
        return this.identifier;
    }

    @Override // org.mozilla.javascript.Node
    public Scope getScope() {
        return this.scope;
    }

    public boolean isLocalName() {
        Scope definingScope = getDefiningScope();
        return (definingScope == null || definingScope.getParentScope() == null) ? false : true;
    }

    public int length() {
        return this.identifier == null ? 0 : this.identifier.length();
    }

    public void setIdentifier(String str) {
        assertNotNull(str);
        this.identifier = str;
        setLength(str.length());
    }

    @Override // org.mozilla.javascript.Node
    public void setScope(Scope scope) {
        this.scope = scope;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append(this.identifier == null ? "<null>" : this.identifier);
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }
}
