.class public final Le/a/a/c/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ConversationActionModeView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o3;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    iput-object p2, p0, Le/a/a/c/o3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/a/c/o3;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/ConversationActionModeView;->b:Ln3/b/f/g0;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 3
    iget-object v1, p0, Le/a/a/c/o3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    iget-object v2, p1, Ln3/b/f/g0;->b:Ln3/b/e/i/g;

    .line 5
    iget-object v3, p0, Le/a/a/c/o3;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/conversation/Action;

    invoke-virtual {v3}, Lcom/truecaller/messaging/conversation/Action;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "popupMenu.menu.findItem(visibleActions[i].id)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Ln3/b/f/g0;->d:Ln3/b/e/i/l;

    invoke-virtual {p1}, Ln3/b/e/i/l;->f()V

    :cond_1
    return-void
.end method
