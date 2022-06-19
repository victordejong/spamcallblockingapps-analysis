.class public final Le/a/a/k/a/q0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0;->a(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
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
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1"
    f = "ImTypingManager.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/a/k/a/q0;

.field public final synthetic k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    iput-object p2, p0, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/k/a/q0$c;

    iget-object v1, p0, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    iget-object v2, p0, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-direct {v0, v1, v2, p2}, Le/a/a/k/a/q0$c;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/k/a/q0$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/k/a/q0$c;

    iget-object v1, p0, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    iget-object v2, p0, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-direct {v0, v1, v2, p2}, Le/a/a/k/a/q0$c;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/k/a/q0$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/a/k/a/q0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v8, p0

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v9, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/a/k/a/q0$c;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, v8, Le/a/a/k/a/q0$c;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Le/a/a/k/a/q0$c;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v8, Le/a/a/k/a/q0$c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Le/a/a/k/a/q0$c;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v8, Le/a/a/k/a/q0$c;->e:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lq3/a/i0;

    .line 4
    iget-object v1, v8, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    const-string v3, "event.sender"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v11

    const-string v1, "event.sender.id"

    invoke-static {v11, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v8, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v4, "event.recipient"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object v12

    .line 6
    iget-object v1, v8, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 7
    iget-object v13, v1, Le/a/a/k/a/q0;->m:Landroid/content/ContentResolver;

    .line 8
    invoke-static {v11}, Le/a/b0/q/g0;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v4, "name"

    .line 9
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 10
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 11
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v6, v5

    .line 12
    :goto_0
    invoke-static {v4, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_3

    move-object v13, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 13
    :cond_3
    iget-object v1, v1, Le/a/a/k/a/q0;->n:Le/a/a/k/a/a/q;

    invoke-interface {v1, v11}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    :goto_1
    if-nez v12, :cond_6

    .line 14
    iget-object v1, v8, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v1, v5, v5, v3}, Le/a/c/p/a;->k3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;I)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 15
    iget-object v3, v8, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 16
    iget-object v3, v3, Le/a/a/k/a/q0;->r:Le/a/a3/a;

    .line 17
    iget-object v4, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v14, 0x0

    iput-object v10, v8, Le/a/a/k/a/q0$c;->e:Ljava/lang/Object;

    iput-object v11, v8, Le/a/a/k/a/q0$c;->f:Ljava/lang/Object;

    iput-object v12, v8, Le/a/a/k/a/q0$c;->g:Ljava/lang/Object;

    iput-object v13, v8, Le/a/a/k/a/q0$c;->h:Ljava/lang/Object;

    iput v2, v8, Le/a/a/k/a/q0$c;->i:I

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v5, p0

    move v6, v7

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    :cond_4
    move-object v4, v10

    move-object v3, v11

    move-object v2, v12

    .line 18
    :goto_2
    check-cast v1, Lcom/truecaller/blocking/FilterMatch;

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    move-object v9, v4

    move-object v5, v13

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :cond_6
    move-object v9, v10

    move-object v4, v11

    move-object v3, v12

    move-object v5, v13

    .line 20
    :goto_3
    iget-object v1, v8, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 21
    iget-object v10, v1, Le/a/a/k/a/q0;->h:Ls1/w/f;

    const/4 v11, 0x0

    .line 22
    new-instance v12, Le/a/a/k/a/q0$c$a;

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/q0$c$a;-><init>(Le/a/a/k/a/q0$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method
