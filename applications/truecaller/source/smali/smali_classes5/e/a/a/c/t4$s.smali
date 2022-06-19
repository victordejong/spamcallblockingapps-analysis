.class public final Le/a/a/c/t4$s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->rb(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$restoreAttachmentIfNotExist$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x1f5,
        0x1fd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Entity;

.field public final synthetic h:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iput-object p3, p0, Le/a/a/c/t4$s;->h:Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$s;

    iget-object v0, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v2, p0, Le/a/a/c/t4$s;->h:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$s;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$s;

    iget-object v0, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v2, p0, Le/a/a/c/t4$s;->h:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$s;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/t4$s;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iput v2, p0, Le/a/a/c/t4$s;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/a/c/t4;->Ij(Lcom/truecaller/messaging/data/types/Entity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "update_entity_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-wide v4, v2, Lcom/truecaller/messaging/data/types/Entity;->a:J

    const-string v2, "entity_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    const-string v4, "entity_status"

    .line 7
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    .line 9
    iget-object v2, v2, Le/a/a/c/t4;->P:Le/a/a/k/t;

    const/4 v4, 0x0

    .line 10
    invoke-interface {v2, v3, v1, v4}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    .line 11
    :cond_4
    iget-object v1, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    iget-object v2, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    iput v3, p0, Le/a/a/c/t4$s;->e:I

    invoke-virtual {v1, v2, p1, p0}, Le/a/a/c/t4;->Jj(Lcom/truecaller/messaging/data/types/Entity;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Le/a/a/c/t4$s;->f:Le/a/a/c/t4;

    .line 13
    iget-object p1, p1, Le/a/a/c/t4;->P:Le/a/a/k/t;

    .line 14
    iget-object v0, p0, Le/a/a/c/t4$s;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, p0, Le/a/a/c/t4$s;->g:Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v0, v1}, Le/a/a/k/t;->f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z

    .line 15
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
