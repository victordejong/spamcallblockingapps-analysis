.class public final Le/a/a/c/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/h8;


# instance fields
.field public a:Le/a/a/c/k4;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Long;

.field public d:Z

.field public e:Z

.field public f:Lq3/a/p1;

.field public final g:Z

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/a/c/x7;

.field public final k:Le/a/a/c/w3;


# direct methods
.method public constructor <init>(ZLs1/w/f;Ls1/w/f;Le/a/a/c/x7;Le/a/a/c/w3;)V
    .locals 1
    .param p1    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsUrgentIntent"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartRepliesGenerator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationDataSource"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/a/c/i8;->g:Z

    iput-object p2, p0, Le/a/a/c/i8;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/i8;->i:Ls1/w/f;

    iput-object p4, p0, Le/a/a/c/i8;->j:Le/a/a/c/x7;

    iput-object p5, p0, Le/a/a/c/i8;->k:Le/a/a/c/w3;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/i8;->b:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/a/c/i8;->d:Z

    .line 4
    iput-boolean p1, p0, Le/a/a/c/i8;->e:Z

    return-void
.end method


# virtual methods
.method public I2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/c/i8;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Le/a/a/c/i8;->d:Z

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/a/c/i8;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Le/a/a/c/k4;->n6(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Le/a/a/c/i8;->g:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Le/a/a/c/i8;->k:Le/a/a/c/w3;

    invoke-interface {v1}, Le/a/a/c/w3;->f()Le/a/a/g/j0/q;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 5
    :cond_1
    iget-object v2, v0, Le/a/a/c/i8;->c:Ljava/lang/Long;

    invoke-interface {v1}, Le/a/a/g/j0/q;->u()J

    move-result-wide v3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_3

    goto/16 :goto_6

    .line 6
    :cond_3
    :goto_0
    iget-object v2, v0, Le/a/a/c/i8;->f:Lq3/a/p1;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lq3/a/p1;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v0, Le/a/a/c/i8;->f:Lq3/a/p1;

    if-eqz v2, :cond_5

    invoke-static {v2, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :cond_5
    invoke-interface {v1}, Le/a/a/g/j0/q;->getStatus()I

    move-result v2

    and-int/2addr v2, v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez v2, :cond_6

    invoke-interface {v1}, Le/a/a/g/j0/q;->R0()I

    move-result v2

    if-eq v2, v5, :cond_6

    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    if-eqz v2, :cond_c

    .line 8
    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    const-string v7, "this.message"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "currentMessage.buildMessageText()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_3

    :cond_7
    move v8, v6

    :goto_3
    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    new-array v8, v4, [Lcom/truecaller/messaging/data/types/Message;

    aput-object v2, v8, v6

    .line 10
    invoke-static {v8}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 11
    :cond_9
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    if-ge v8, v4, :cond_b

    .line 12
    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1}, Le/a/a/g/j0/q;->R0()I

    move-result v10

    if-eq v10, v5, :cond_9

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    move v10, v4

    goto :goto_5

    :cond_a
    move v10, v6

    :goto_5
    if-eqz v10, :cond_9

    .line 14
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_b
    sget-object v11, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v12, v0, Le/a/a/c/i8;->i:Ls1/w/f;

    const/4 v13, 0x0

    new-instance v14, Le/a/a/c/i8$a;

    invoke-direct {v14, v2, v3, v0}, Le/a/a/c/i8$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/a/c/i8;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v1

    iput-object v1, v0, Le/a/a/c/i8;->f:Lq3/a/p1;

    goto :goto_6

    .line 16
    :cond_c
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/i8;->d()V

    :cond_d
    :goto_6
    return-void
.end method

.method public b(Le/a/a/c/k4;)V
    .locals 1

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    .line 2
    iget-boolean v0, p0, Le/a/a/c/i8;->g:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/a/c/k4;->Zy()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    .line 2
    iget-object v1, p0, Le/a/a/c/i8;->f:Lq3/a/p1;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-boolean v0, p0, Le/a/a/c/i8;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-boolean v0, p0, Le/a/a/c/i8;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/a/c/i8;->e:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Le/a/a/c/i8;->d:Z

    :goto_0
    iput-boolean p1, p0, Le/a/a/c/i8;->d:Z

    .line 4
    iget-object v0, p0, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/a/c/k4;->tk(Z)V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Le/a/a/c/i8;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Le/a/a/c/k4;->gd(Z)V

    :cond_3
    return-void
.end method
