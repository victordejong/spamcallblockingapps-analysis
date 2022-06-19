.class public final Le/a/a/c/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ConversationActionModeView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/n3;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    iput-object p2, p0, Le/a/a/c/n3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n3;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/ConversationActionModeView;->a:Le/a/a/c/e3;

    if-eqz v0, :cond_0

    const-string v1, "item"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    check-cast v0, Le/a/a/c/j2;

    .line 4
    iget-object v0, v0, Le/a/a/c/j2;->a:Le/a/a/c/y3;

    .line 5
    iget-object v0, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {v0, p1}, Le/a/a/c/h3;->ye(I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "callback"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
