.class public final synthetic Ln3/e/a/e/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/i2;

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:Ln3/e/b/i1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/i2;Ln3/h/a/b;Ln3/e/b/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/u0;->a:Ln3/e/a/e/i2;

    iput-object p2, p0, Ln3/e/a/e/u0;->b:Ln3/h/a/b;

    iput-object p3, p0, Ln3/e/a/e/u0;->c:Ln3/e/b/i1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/u0;->a:Ln3/e/a/e/i2;

    iget-object v1, p0, Ln3/e/a/e/u0;->b:Ln3/h/a/b;

    iget-object v2, p0, Ln3/e/a/e/u0;->c:Ln3/e/b/i1;

    .line 1
    iget-boolean v3, v0, Ln3/e/a/e/i2;->f:Z

    if-nez v3, :cond_0

    .line 2
    iget-object v3, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v2, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Ln3/e/a/e/j2;->b(F)V

    .line 4
    iget-object v2, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    invoke-static {v2}, Ln3/e/b/k1/d;->b(Ln3/e/b/i1;)Ln3/e/b/i1;

    move-result-object v2

    .line 5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0, v2}, Ln3/e/a/e/i2;->b(Ln3/e/b/i1;)V

    .line 7
    new-instance v0, Ln3/e/b/i0$a;

    const-string v2, "Camera is not active."

    invoke-direct {v0, v2}, Ln3/e/b/i0$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ln3/e/a/e/i2;->b(Ln3/e/b/i1;)V

    .line 10
    iget-object v3, v0, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    invoke-interface {v2}, Ln3/e/b/i1;->a()F

    move-result v2

    invoke-interface {v3, v2, v1}, Ln3/e/a/e/i2$b;->e(FLn3/h/a/b;)V

    .line 11
    iget-object v0, v0, Ln3/e/a/e/i2;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->r()V

    :goto_0
    return-void
.end method
