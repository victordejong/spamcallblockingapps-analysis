.class public final Ln3/e/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ln3/e/a/e/z0;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/Object;

.field public f:Ln3/e/a/d/a$a;

.field public g:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ln3/e/a/e/z0$c;


# direct methods
.method public constructor <init>(Ln3/e/a/e/z0;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/a/f/h;->a:Z

    .line 3
    iput-boolean v0, p0, Ln3/e/a/f/h;->b:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/f/h;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Ln3/e/a/d/a$a;

    invoke-direct {v0}, Ln3/e/a/d/a$a;-><init>()V

    iput-object v0, p0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    .line 6
    new-instance v0, Ln3/e/a/f/c;

    invoke-direct {v0, p0}, Ln3/e/a/f/c;-><init>(Ln3/e/a/f/h;)V

    iput-object v0, p0, Ln3/e/a/f/h;->h:Ln3/e/a/e/z0$c;

    .line 7
    iput-object p1, p0, Ln3/e/a/f/h;->c:Ln3/e/a/e/z0;

    .line 8
    iput-object p2, p0, Ln3/e/a/f/h;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/a/d/a;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/f/h;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    .line 4
    iget-object v2, v2, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    .line 5
    sget-object v3, Ln3/e/a/d/a;->w:Ln3/e/b/j1/j0$a;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    sget-object v4, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v2, v3, v4, v1}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v1, p0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    invoke-virtual {v1}, Ln3/e/a/d/a$a;->a()Ln3/e/a/d/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ln3/h/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/e/a/f/h;->b:Z

    .line 2
    iget-object v0, p0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    .line 4
    iget-boolean p1, p0, Ln3/e/a/f/h;->a:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Ln3/e/a/f/h;->c:Ln3/e/a/e/z0;

    .line 6
    iget-object v1, p1, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/e/j0;

    invoke-direct {v2, p1}, Ln3/e/a/e/j0;-><init>(Ln3/e/a/e/z0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ln3/e/a/f/h;->b:Z

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "Camera2CameraControl was updated with new options."

    .line 8
    invoke-static {p1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    :cond_2
    return-void
.end method
