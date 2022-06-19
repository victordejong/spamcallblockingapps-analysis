.class public final Le/a/a/c/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/i/d;


# instance fields
.field public a:Le/a/l0/u/d/b;

.field public b:Le/a/a/c/i/d$a;

.field public c:Z

.field public final d:Le/a/a/c/i/e$a;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/a/c/i/e$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Le/a/a/c/i/e$a;-><init>(Le/a/a/c/i/e;Landroid/os/Handler;)V

    iput-object v0, p0, Le/a/a/c/i/e;->d:Le/a/a/c/i/e$a;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/c/i/d$a;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/i/e;->b:Le/a/a/c/i/d$a;

    .line 2
    iget-object p1, p0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p0, Le/a/a/c/i/e;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/i/e;->d:Le/a/a/c/i/e$a;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    iput-boolean v1, p0, Le/a/a/c/i/e;->c:Z

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Le/a/l0/u/d/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/e;->n0()V

    .line 2
    iget-object v0, p0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3
    :cond_0
    iput-object p1, p0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    return-void
.end method

.method public getItem(I)Le/a/a/c/i/f;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move/from16 v3, p1

    .line 2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    invoke-interface {v1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    new-instance v2, Le/a/a/c/i/f;

    .line 5
    invoke-interface {v1}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v5

    .line 6
    invoke-interface {v1}, Le/a/l0/u/d/b;->A0()J

    move-result-wide v7

    const-string v1, "historyEvent"

    .line 7
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v10, v3, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 9
    iget-wide v12, v3, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 10
    iget v9, v3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 11
    iget-object v1, v3, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v4, "com.truecaller.voip.manager.VOIP"

    .line 12
    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 13
    iget v1, v3, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v15, v1

    .line 14
    iget-object v1, v3, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v4, "historyEvent.subscriptionId"

    .line 15
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    move-object v4, v2

    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 17
    invoke-direct/range {v4 .. v17}, Le/a/a/c/i/f;-><init>(JJIJJZZLjava/lang/String;I)V

    :cond_1
    return-object v2
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/i/e;->a:Le/a/l0/u/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Le/a/a/c/i/e;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Le/a/a/c/i/e;->d:Le/a/a/c/i/e$a;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    :cond_1
    iput-object v1, p0, Le/a/a/c/i/e;->b:Le/a/a/c/i/d$a;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/a/a/c/i/e;->c:Z

    return-void
.end method
