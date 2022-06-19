.class public final Le/a/a/l/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/o<",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.acsreply.AcsReplyManager$sendMessage$2"
    f = "AcsReplyManager.kt"
    l = {
        0x34,
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public final synthetic h:Le/a/a/l/e;

.field public final synthetic i:Ls1/z/c/c0;

.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/a/l/e;Ls1/z/c/c0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    iput-object p2, p0, Le/a/a/l/e$a;->i:Ls1/z/c/c0;

    iput p3, p0, Le/a/a/l/e$a;->j:I

    iput-object p4, p0, Le/a/a/l/e$a;->k:Ljava/lang/String;

    iput-object p5, p0, Le/a/a/l/e$a;->l:Ljava/lang/String;

    iput-object p6, p0, Le/a/a/l/e$a;->m:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/a/l/e$a;

    iget-object v1, p0, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    iget-object v2, p0, Le/a/a/l/e$a;->i:Ls1/z/c/c0;

    iget v3, p0, Le/a/a/l/e$a;->j:I

    iget-object v4, p0, Le/a/a/l/e$a;->k:Ljava/lang/String;

    iget-object v5, p0, Le/a/a/l/e$a;->l:Ljava/lang/String;

    iget-object v6, p0, Le/a/a/l/e$a;->m:Ljava/lang/Integer;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/a/l/e$a;-><init>(Le/a/a/l/e;Ls1/z/c/c0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/l/e$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/l/e$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/l/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v6, p0

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/a/l/e$a;->g:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_0

    iget v0, v6, Le/a/a/l/e$a;->f:I

    iget-object v1, v6, Le/a/a/l/e$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v6, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    .line 5
    iget-object v0, v0, Le/a/a/l/e;->d:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/w;

    new-array v1, v10, [Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v6, Le/a/a/l/e$a;->i:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    aput-object v2, v1, v8

    iget v2, v6, Le/a/a/l/e$a;->j:I

    iput v10, v6, Le/a/a/l/e$a;->g:I

    invoke-interface {v0, v1, v2, v6}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_3

    return-object v7

    .line 7
    :cond_3
    :goto_0
    check-cast v0, Lcom/truecaller/messaging/data/types/Draft;

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v0

    iget-object v1, v6, Le/a/a/l/e$a;->k:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v11

    const-string v0, "draft.buildUpon().setText(text).build()"

    invoke-static {v11, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v6, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, v11, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_5

    .line 14
    iget-object v0, v0, Le/a/a/l/e;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/t;

    iget-object v1, v11, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v0, v8, v1, v8}, Le/a/a/k/t;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v0

    move v12, v0

    goto :goto_2

    :cond_5
    move v12, v1

    .line 15
    :goto_2
    iget-object v0, v6, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    iget-object v1, v6, Le/a/a/l/e$a;->k:Ljava/lang/String;

    iget-object v3, v6, Le/a/a/l/e$a;->l:Ljava/lang/String;

    iget-object v4, v6, Le/a/a/l/e$a;->m:Ljava/lang/Integer;

    iput-object v11, v6, Le/a/a/l/e$a;->e:Ljava/lang/Object;

    iput v12, v6, Le/a/a/l/e$a;->f:I

    iput v9, v6, Le/a/a/l/e$a;->g:I

    move v2, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/a/l/e;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    move-object v1, v11

    move v0, v12

    .line 16
    :goto_3
    iget-object v2, v6, Le/a/a/l/e$a;->h:Le/a/a/l/e;

    .line 17
    iget-object v3, v2, Le/a/a/l/e;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/e4/p;

    .line 18
    iget-object v4, v1, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 19
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    invoke-interface {v3, v4}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const-string v4, "multiSimManager"

    .line 20
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v4

    const-string v3, "multiSimManager.defaultSimToken"

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    move-object v13, v4

    .line 21
    iget-object v2, v2, Le/a/a/l/e;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/c1/d;

    .line 22
    invoke-static {v1, v5, v9}, Le/a/c/p/a;->Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v12

    if-ne v0, v9, :cond_9

    move v14, v10

    goto :goto_6

    :cond_9
    move v14, v8

    :goto_6
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v11, v2

    .line 23
    invoke-interface/range {v11 .. v16}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v0

    .line 24
    instance-of v1, v0, Le/a/a/c1/b$c;

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    instance-of v1, v0, Le/a/a/c1/b$d;

    if-eqz v1, :cond_b

    :goto_7
    new-instance v0, Ls1/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v5, v5, v1}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 25
    :cond_b
    instance-of v1, v0, Le/a/a/c1/b$e;

    if-eqz v1, :cond_d

    .line 26
    move-object v15, v0

    check-cast v15, Le/a/a/c1/b$e;

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const-string v17, "afterCall"

    move-object v14, v2

    .line 27
    invoke-static/range {v14 .. v21}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Le/a/a/c1/c;

    .line 30
    instance-of v1, v0, Le/a/a/c1/c$b;

    if-eqz v1, :cond_c

    .line 31
    check-cast v0, Le/a/a/c1/c$b;

    .line 32
    iget-object v0, v0, Le/a/a/c1/c$b;->a:Ljava/util/List;

    .line 33
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 34
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 35
    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 36
    new-instance v1, Ls1/o;

    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 37
    iget-wide v3, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0, v5}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_8

    .line 39
    :cond_c
    new-instance v0, Ls1/o;

    invoke-direct {v0, v5, v5, v5}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 40
    :cond_d
    new-instance v0, Ls1/o;

    invoke-direct {v0, v5, v5, v5}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    return-object v0
.end method
