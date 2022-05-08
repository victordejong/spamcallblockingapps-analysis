package org.mozilla.javascript.ast;

import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import org.apache.commons.p018io.IOUtils;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.ast.AstNode;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/AstRoot.class */
public class AstRoot extends ScriptNode {
    private SortedSet<Comment> comments;
    private boolean inStrictMode;

    public AstRoot() {
        this.type = 136;
    }

    public AstRoot(int i) {
        super(i);
        this.type = 136;
    }

    public void addComment(Comment comment) {
        assertNotNull(comment);
        if (this.comments == null) {
            this.comments = new TreeSet(new AstNode.PositionComparator());
        }
        this.comments.add(comment);
        comment.setParent(this);
    }

    public void checkParentLinks() {
        visit(new NodeVisitor() { // from class: org.mozilla.javascript.ast.AstRoot.1
            @Override // org.mozilla.javascript.ast.NodeVisitor
            public boolean visit(AstNode astNode) {
                if (astNode.getType() == 136 || astNode.getParent() != null) {
                    return true;
                }
                throw new IllegalStateException("No parent for node: " + astNode + IOUtils.LINE_SEPARATOR_UNIX + astNode.toSource(0));
            }
        });
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String debugPrint() {
        AstNode.DebugPrintVisitor debugPrintVisitor = new AstNode.DebugPrintVisitor(new StringBuilder(1000));
        visitAll(debugPrintVisitor);
        return debugPrintVisitor.toString();
    }

    public SortedSet<Comment> getComments() {
        return this.comments;
    }

    public boolean isInStrictMode() {
        return this.inStrictMode;
    }

    public void setComments(SortedSet<Comment> sortedSet) {
        if (sortedSet == null) {
            this.comments = null;
            return;
        }
        if (this.comments != null) {
            this.comments.clear();
        }
        for (Comment comment : sortedSet) {
            addComment(comment);
        }
    }

    public void setInStrictMode(boolean z) {
        this.inStrictMode = z;
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        Iterator<Node> it = iterator();
        while (it.hasNext()) {
            sb.append(((AstNode) it.next()).toSource(i));
        }
        return sb.toString();
    }

    public void visitAll(NodeVisitor nodeVisitor) {
        visit(nodeVisitor);
        visitComments(nodeVisitor);
    }

    public void visitComments(NodeVisitor nodeVisitor) {
        if (this.comments != null) {
            for (Comment comment : this.comments) {
                nodeVisitor.visit(comment);
            }
        }
    }
}
