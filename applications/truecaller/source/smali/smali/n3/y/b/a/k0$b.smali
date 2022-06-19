.class public final Ln3/y/b/a/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/y/c/a1;

.field public c:Ln3/y/b/a/x0/a;

.field public d:Ln3/y/b/a/v0/g;

.field public e:Ln3/y/b/a/d;

.field public f:Ln3/y/b/a/w0/d;

.field public g:Ln3/y/b/a/m0/a;

.field public h:Landroid/os/Looper;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/c/a1;)V
    .locals 11

    .line 1
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v1, Ln3/y/b/a/d;

    invoke-direct {v1}, Ln3/y/b/a/d;-><init>()V

    .line 2
    sget-object v2, Ln3/y/b/a/w0/n;->n:Ljava/util/Map;

    const-class v2, Ln3/y/b/a/w0/n;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-object v3, Ln3/y/b/a/w0/n;->s:Ln3/y/b/a/w0/n;

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ln3/y/b/a/w0/n$a;

    invoke-direct {v3, p1}, Ln3/y/b/a/w0/n$a;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v10, Ln3/y/b/a/w0/n;

    iget-object v5, v3, Ln3/y/b/a/w0/n$a;->a:Landroid/content/Context;

    iget-object v6, v3, Ln3/y/b/a/w0/n$a;->b:Landroid/util/SparseArray;

    iget v7, v3, Ln3/y/b/a/w0/n$a;->c:I

    iget-object v8, v3, Ln3/y/b/a/w0/n$a;->d:Ln3/y/b/a/x0/a;

    iget-boolean v9, v3, Ln3/y/b/a/w0/n$a;->e:Z

    move-object v4, v10

    .line 6
    invoke-direct/range {v4 .. v9}, Ln3/y/b/a/w0/n;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILn3/y/b/a/x0/a;Z)V

    .line 7
    sput-object v10, Ln3/y/b/a/w0/n;->s:Ln3/y/b/a/w0/n;

    .line 8
    :cond_0
    sget-object v3, Ln3/y/b/a/w0/n;->s:Ln3/y/b/a/w0/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 11
    :goto_0
    new-instance v4, Ln3/y/b/a/m0/a;

    sget-object v5, Ln3/y/b/a/x0/a;->a:Ln3/y/b/a/x0/a;

    invoke-direct {v4, v5}, Ln3/y/b/a/m0/a;-><init>(Ln3/y/b/a/x0/a;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ln3/y/b/a/k0$b;->a:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Ln3/y/b/a/k0$b;->b:Ln3/y/c/a1;

    .line 15
    iput-object v0, p0, Ln3/y/b/a/k0$b;->d:Ln3/y/b/a/v0/g;

    .line 16
    iput-object v1, p0, Ln3/y/b/a/k0$b;->e:Ln3/y/b/a/d;

    .line 17
    iput-object v3, p0, Ln3/y/b/a/k0$b;->f:Ln3/y/b/a/w0/d;

    .line 18
    iput-object v2, p0, Ln3/y/b/a/k0$b;->h:Landroid/os/Looper;

    .line 19
    iput-object v4, p0, Ln3/y/b/a/k0$b;->g:Ln3/y/b/a/m0/a;

    .line 20
    iput-object v5, p0, Ln3/y/b/a/k0$b;->c:Ln3/y/b/a/x0/a;

    return-void

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v2

    throw p1
.end method
