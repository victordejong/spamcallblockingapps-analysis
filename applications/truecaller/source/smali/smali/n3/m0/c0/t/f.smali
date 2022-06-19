.class public Ln3/m0/c0/t/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Ln3/m0/c0/s/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ln3/m0/c0/s/f;

    :try_start_1
    invoke-virtual {v0, p1}, Ln3/m0/c0/s/f;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 4
    :goto_1
    iget-object v2, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()Ln3/m0/c0/s/e;

    move-result-object v2

    new-instance v3, Ln3/m0/c0/s/d;

    int-to-long v4, v1

    invoke-direct {v3, p1, v4, v5}, Ln3/m0/c0/s/d;-><init>(Ljava/lang/String;J)V

    check-cast v2, Ln3/m0/c0/s/f;

    invoke-virtual {v2, v3}, Ln3/m0/c0/s/f;->b(Ln3/m0/c0/s/d;)V

    .line 5
    iget-object p1, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 7
    throw p1
.end method

.method public b(II)I
    .locals 6

    .line 1
    const-class v0, Ln3/m0/c0/t/f;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_job_scheduler_id"

    .line 2
    invoke-virtual {p0, v1}, Ln3/m0/c0/t/f;->a(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "next_job_scheduler_id"

    add-int/lit8 v1, p1, 0x1

    .line 3
    iget-object v2, p0, Ln3/m0/c0/t/f;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()Ln3/m0/c0/s/e;

    move-result-object v2

    new-instance v3, Ln3/m0/c0/s/d;

    int-to-long v4, v1

    invoke-direct {v3, p2, v4, v5}, Ln3/m0/c0/s/d;-><init>(Ljava/lang/String;J)V

    check-cast v2, Ln3/m0/c0/s/f;

    invoke-virtual {v2, v3}, Ln3/m0/c0/s/f;->b(Ln3/m0/c0/s/d;)V

    .line 4
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
