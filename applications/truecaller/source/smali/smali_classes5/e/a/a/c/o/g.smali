.class public final Le/a/a/c/o/g;
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
    c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$updateCustomSoundSection$1"
    f = "ConversationNotificationSettingsPresenter.kt"
    l = {
        0xb5,
        0xc0,
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/a/c/o/e;


# direct methods
.method public constructor <init>(Le/a/a/c/o/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/c/o/g;

    iget-object v0, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    invoke-direct {p1, v0, p2}, Le/a/a/c/o/g;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/o/g;

    iget-object v0, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    invoke-direct {p1, v0, p2}, Le/a/a/c/o/g;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/o/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/o/g;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/c/o/g;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/y;

    iget-object v3, p0, Le/a/a/c/o/g;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Le/a/a/c/o/g;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/c/o/g;->e:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v1

    .line 4
    iget-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 5
    iget-object v6, p1, Le/a/a/c/o/e;->j:Le/a/a/c/o/h;

    .line 6
    iget-object p1, p1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    iput-object v1, p0, Le/a/a/c/o/g;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/c/o/g;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/a/c/o/g;->g:I

    invoke-interface {v6, p1, p0}, Le/a/a/c/o/h;->b(Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, v1

    :goto_0
    check-cast p1, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 8
    iget-object p1, p1, Le/a/a/c/o/e;->m:Le/a/p5/c0;

    const v7, 0x7f1205d9

    new-array v8, v6, [Ljava/lang/Object;

    .line 9
    invoke-interface {p1, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 10
    new-instance v1, Ls1/z/c/y;

    invoke-direct {v1}, Ls1/z/c/y;-><init>()V

    iget-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 11
    iget-object v7, p1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 12
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 13
    iget-object p1, p1, Le/a/a/c/o/e;->j:Le/a/a/c/o/h;

    .line 14
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "Uri.parse(conversation.soundUri)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Le/a/a/c/o/h;->d(Landroid/net/Uri;)Z

    move-result v6

    .line 15
    :cond_6
    iput-boolean v6, v1, Ls1/z/c/y;->a:Z

    if-nez v6, :cond_8

    .line 16
    iput-object v5, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 18
    iget-object v6, p1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    iget-object v7, v6, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 20
    iget-object p1, p1, Le/a/a/c/o/e;->j:Le/a/a/c/o/h;

    .line 21
    iput-object v4, p0, Le/a/a/c/o/g;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/c/o/g;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/a/c/o/g;->g:I

    invoke-interface {p1, v6, v5, p0}, Le/a/a/c/o/h;->a(Lcom/truecaller/messaging/data/types/Conversation;Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v3, v4

    :goto_2
    move-object v4, v3

    .line 22
    :cond_8
    iget-object p1, p0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 23
    iget-object p1, p1, Le/a/a/c/o/e;->f:Ls1/w/f;

    .line 24
    new-instance v3, Le/a/a/c/o/g$a;

    invoke-direct {v3, p0, v1, v4, v5}, Le/a/a/c/o/g$a;-><init>(Le/a/a/c/o/g;Ls1/z/c/y;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, p0, Le/a/a/c/o/g;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/a/c/o/g;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/o/g;->g:I

    invoke-static {p1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 25
    :cond_9
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
