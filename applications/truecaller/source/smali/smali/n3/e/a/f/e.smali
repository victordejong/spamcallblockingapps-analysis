.class public final synthetic Ln3/e/a/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/f/h;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/f/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/f/e;->a:Ln3/e/a/f/h;

    iput-boolean p2, p0, Ln3/e/a/f/e;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/a/f/e;->a:Ln3/e/a/f/h;

    iget-boolean v1, p0, Ln3/e/a/f/e;->b:Z

    .line 1
    iget-boolean v2, v0, Ln3/e/a/f/h;->a:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, v0, Ln3/e/a/f/h;->a:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, v0, Ln3/e/a/f/h;->b:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Ln3/e/a/f/h;->c:Ln3/e/a/e/z0;

    .line 5
    iget-object v2, v1, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/a/e/j0;

    invoke-direct {v3, v1}, Ln3/e/a/e/j0;-><init>(Ln3/e/a/e/z0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Ln3/e/a/f/h;->b:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Ln3/e/a/f/h;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    new-instance v2, Ln3/e/a/d/a$a;

    invoke-direct {v2}, Ln3/e/a/d/a$a;-><init>()V

    iput-object v2, v0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    if-eqz v1, :cond_2

    const-string v2, "The camera control has became inactive."

    .line 11
    invoke-static {v2, v1}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Ln3/e/a/f/h;->g:Ln3/h/a/b;

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
