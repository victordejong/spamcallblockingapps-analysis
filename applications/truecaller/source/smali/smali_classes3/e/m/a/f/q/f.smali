.class public final Le/m/a/f/q/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/q/e;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Le/m/a/f/q/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/f/q/b0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Exception;

.field public h:Z


# direct methods
.method public constructor <init>(ILe/m/a/f/q/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/m/a/f/q/b0<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/f/q/f;->a:Ljava/lang/Object;

    iput p1, p0, Le/m/a/f/q/f;->b:I

    iput-object p2, p0, Le/m/a/f/q/f;->c:Le/m/a/f/q/b0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Le/m/a/f/q/f;->d:I

    iget v1, p0, Le/m/a/f/q/f;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Le/m/a/f/q/f;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Le/m/a/f/q/f;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le/m/a/f/q/f;->g:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/q/f;->c:Le/m/a/f/q/b0;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Le/m/a/f/q/f;->e:I

    iget v3, p0, Le/m/a/f/q/f;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/m/a/f/q/f;->g:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Le/m/a/f/q/f;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/q/f;->c:Le/m/a/f/q/b0;

    .line 2
    invoke-virtual {v0}, Le/m/a/f/q/b0;->x()Z

    return-void

    :cond_1
    iget-object v0, p0, Le/m/a/f/q/f;->c:Le/m/a/f/q/b0;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onCanceled()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/q/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le/m/a/f/q/f;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Le/m/a/f/q/f;->f:I

    iput-boolean v2, p0, Le/m/a/f/q/f;->h:Z

    invoke-virtual {p0}, Le/m/a/f/q/f;->a()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le/m/a/f/q/f;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/m/a/f/q/f;->e:I

    iput-object p1, p0, Le/m/a/f/q/f;->g:Ljava/lang/Exception;

    invoke-virtual {p0}, Le/m/a/f/q/f;->a()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/f/q/f;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Le/m/a/f/q/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/m/a/f/q/f;->d:I

    invoke-virtual {p0}, Le/m/a/f/q/f;->a()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
