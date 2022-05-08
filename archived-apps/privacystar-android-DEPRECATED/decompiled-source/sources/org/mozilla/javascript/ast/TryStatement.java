package org.mozilla.javascript.ast;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/TryStatement.class */
public class TryStatement extends AstNode {
    private static final List<CatchClause> NO_CATCHES = Collections.unmodifiableList(new ArrayList());
    private List<CatchClause> catchClauses;
    private AstNode finallyBlock;
    private int finallyPosition = -1;
    private AstNode tryBlock;

    public TryStatement() {
        this.type = 81;
    }

    public TryStatement(int i) {
        super(i);
        this.type = 81;
    }

    public TryStatement(int i, int i2) {
        super(i, i2);
        this.type = 81;
    }

    public void addCatchClause(CatchClause catchClause) {
        assertNotNull(catchClause);
        if (this.catchClauses == null) {
            this.catchClauses = new ArrayList();
        }
        this.catchClauses.add(catchClause);
        catchClause.setParent(this);
    }

    public List<CatchClause> getCatchClauses() {
        return this.catchClauses != null ? this.catchClauses : NO_CATCHES;
    }

    public AstNode getFinallyBlock() {
        return this.finallyBlock;
    }

    public int getFinallyPosition() {
        return this.finallyPosition;
    }

    public AstNode getTryBlock() {
        return this.tryBlock;
    }

    public void setCatchClauses(List<CatchClause> list) {
        if (list == null) {
            this.catchClauses = null;
            return;
        }
        if (this.catchClauses != null) {
            this.catchClauses.clear();
        }
        for (CatchClause catchClause : list) {
            addCatchClause(catchClause);
        }
    }

    public void setFinallyBlock(AstNode astNode) {
        this.finallyBlock = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setFinallyPosition(int i) {
        this.finallyPosition = i;
    }

    public void setTryBlock(AstNode astNode) {
        assertNotNull(astNode);
        this.tryBlock = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder((int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        sb.append(makeIndent(i));
        sb.append("try ");
        sb.append(this.tryBlock.toSource(i).trim());
        for (CatchClause catchClause : getCatchClauses()) {
            sb.append(catchClause.toSource(i));
        }
        if (this.finallyBlock != null) {
            sb.append(" finally ");
            sb.append(this.finallyBlock.toSource(i));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.tryBlock.visit(nodeVisitor);
            for (CatchClause catchClause : getCatchClauses()) {
                catchClause.visit(nodeVisitor);
            }
            if (this.finallyBlock != null) {
                this.finallyBlock.visit(nodeVisitor);
            }
        }
    }
}
