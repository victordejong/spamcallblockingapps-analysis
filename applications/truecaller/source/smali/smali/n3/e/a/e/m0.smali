.class public final synthetic Ln3/e/a/e/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/c2;

.field public final synthetic b:Ln3/e/a/e/b2;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/c2;Ln3/e/a/e/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/m0;->a:Ln3/e/a/e/c2;

    iput-object p2, p0, Ln3/e/a/e/m0;->b:Ln3/e/a/e/b2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/m0;->a:Ln3/e/a/e/c2;

    iget-object v1, p0, Ln3/e/a/e/m0;->b:Ln3/e/a/e/b2;

    .line 1
    iget-object v2, v0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 2
    iget-object v3, v2, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, v2, Ln3/e/a/e/s1;->c:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, v2, Ln3/e/a/e/s1;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0, v1}, Ln3/e/a/e/c2;->r(Ln3/e/a/e/b2;)V

    .line 7
    iget-object v0, v0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, v1}, Ln3/e/a/e/b2$a;->n(Ln3/e/a/e/b2;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
