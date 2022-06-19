.class public final Le/a/a/d/x;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadCursor$1"
    f = "NewConversationPresenter.kt"
    l = {
        0x1d4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Le/a/a/d/x;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/d/x;->h:Landroid/os/CancellationSignal;

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

    new-instance p1, Le/a/a/d/x;

    iget-object v0, p0, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Le/a/a/d/x;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/d/x;->h:Landroid/os/CancellationSignal;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/d/x;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/d/x;

    iget-object v0, p0, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Le/a/a/d/x;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/d/x;->h:Landroid/os/CancellationSignal;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/d/x;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/x;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/d/x;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->l:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/a/d/x$a;

    invoke-direct {v1, p0, v2}, Le/a/a/d/x$a;-><init>(Le/a/a/d/x;Ls1/w/d;)V

    iput v3, p0, Le/a/a/d/x;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/a0;

    .line 8
    iget-object v0, p0, Le/a/a/d/x;->h:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_8

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 11
    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->f:Landroid/os/CancellationSignal;

    .line 12
    iget-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, p1}, Le/a/a/d/n;->E(Le/a/a/g/j0/a0;)V

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v3

    :goto_2
    if-eqz p1, :cond_7

    .line 14
    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Tj(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    iget-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/a/a/d/n;->J(Ljava/lang/String;)V

    .line 16
    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->p:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    .line 18
    iget-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->g:Lq3/a/p1;

    if-eqz v1, :cond_6

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 19
    new-instance v7, Le/a/a/d/a0;

    invoke-direct {v7, v0, p1, v2}, Le/a/a/d/a0;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->g:Lq3/a/p1;

    .line 20
    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {p1, v3}, Le/a/a/d/n;->M(Z)V

    .line 21
    :cond_7
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/a/d/v;->l2()V

    .line 22
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
