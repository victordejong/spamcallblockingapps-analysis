.class public final Lcom/truecaller/messaging/conversation/ConversationActionModeView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/ConversationActionModeView;->a(Lcom/truecaller/messaging/conversation/Action;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ConversationActionModeView;Lcom/truecaller/messaging/conversation/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ConversationActionModeView$a;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ConversationActionModeView$a;->a:Lcom/truecaller/messaging/conversation/ConversationActionModeView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/ConversationActionModeView;->a:Le/a/a/c/e3;

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    check-cast v0, Le/a/a/c/j2;

    .line 4
    iget-object v0, v0, Le/a/a/c/j2;->a:Le/a/a/c/y3;

    .line 5
    iget-object v0, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {v0, p1}, Le/a/a/c/h3;->ye(I)Z

    return-void

    :cond_0
    const-string p1, "callback"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
