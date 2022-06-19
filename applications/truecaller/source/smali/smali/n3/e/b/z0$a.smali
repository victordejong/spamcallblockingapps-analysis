.class public Ln3/e/b/z0$a;
.super Ln3/e/b/j1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/b/z0;


# direct methods
.method public constructor <init>(Ln3/e/b/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/z0$a;->a:Ln3/e/b/z0;

    invoke-direct {p0}, Ln3/e/b/j1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/e/b/j1/t;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/e/b/z0$a;->a:Ln3/e/b/z0;

    .line 2
    iget-object v1, v0, Ln3/e/b/z0;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-boolean v2, v0, Ln3/e/b/z0;->d:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Ln3/e/b/z0;->h:Landroid/util/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Ln3/e/a/e/y0;

    :try_start_1
    invoke-virtual {p1}, Ln3/e/a/e/y0;->a()J

    move-result-wide v3

    new-instance v5, Ln3/e/b/k1/b;

    invoke-direct {v5, p1}, Ln3/e/b/k1/b;-><init>(Ln3/e/b/j1/t;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ln3/e/b/z0;->f()V

    .line 7
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
