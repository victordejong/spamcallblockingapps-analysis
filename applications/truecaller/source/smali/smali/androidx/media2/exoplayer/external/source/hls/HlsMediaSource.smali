.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.super Ln3/y/b/a/t0/b;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/q0/r/i$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final f:Ln3/y/b/a/t0/q0/f;

.field public final g:Landroid/net/Uri;

.field public final h:Ln3/y/b/a/t0/q0/e;

.field public final i:Ln3/y/b/a/t0/l;

.field public final j:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:Ln3/y/b/a/w0/z;

.field public final l:Z

.field public final m:Z

.field public final n:Ln3/y/b/a/t0/q0/r/i;

.field public final o:Ljava/lang/Object;

.field public p:Ln3/y/b/a/w0/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "goog.exo.hls"

    .line 1
    sget-object v1, Ln3/y/b/a/w;->a:Ljava/util/HashSet;

    const-class v1, Ln3/y/b/a/w;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Ln3/y/b/a/w;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Ln3/y/b/a/w;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/w;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public constructor <init>(Landroid/net/Uri;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/l;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/q0/r/i;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/b;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->h:Ln3/y/b/a/t0/q0/e;

    .line 4
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->f:Ln3/y/b/a/t0/q0/f;

    .line 5
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Ln3/y/b/a/t0/l;

    .line 6
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ln3/y/b/a/p0/c;

    .line 7
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->k:Ln3/y/b/a/w0/z;

    .line 8
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    .line 9
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->l:Z

    .line 10
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->m:Z

    .line 11
    iput-object p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v0}, Ln3/y/b/a/t0/q0/r/i;->j()V

    return-void
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 10

    .line 1
    check-cast p1, Ln3/y/b/a/t0/q0/i;

    .line 2
    iget-object v0, p1, Ln3/y/b/a/t0/q0/i;->b:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v0, p1}, Ln3/y/b/a/t0/q0/r/i;->e(Ln3/y/b/a/t0/q0/r/i$b;)V

    .line 3
    iget-object v0, p1, Ln3/y/b/a/t0/q0/i;->q:[Ln3/y/b/a/t0/q0/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 4
    iget-boolean v6, v5, Ln3/y/b/a/t0/q0/n;->B:Z

    if-eqz v6, :cond_1

    .line 5
    iget-object v6, v5, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 6
    invoke-virtual {v9}, Ln3/y/b/a/t0/i0;->i()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, v5, Ln3/y/b/a/t0/q0/n;->s:[Ln3/y/b/a/t0/k;

    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 8
    invoke-virtual {v9}, Ln3/y/b/a/t0/k;->d()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v6, v5, Ln3/y/b/a/t0/q0/n;->h:Ln3/y/b/a/w0/a0;

    invoke-virtual {v6, v5}, Ln3/y/b/a/w0/a0;->e(Ln3/y/b/a/w0/a0$f;)V

    .line 10
    iget-object v6, v5, Ln3/y/b/a/t0/q0/n;->o:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, v5, Ln3/y/b/a/t0/q0/n;->J:Z

    .line 12
    iget-object v4, v5, Ln3/y/b/a/t0/q0/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iput-object v4, p1, Ln3/y/b/a/t0/q0/i;->n:Ln3/y/b/a/t0/s$a;

    .line 14
    iget-object p1, p1, Ln3/y/b/a/t0/q0/i;->g:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->q()V

    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->j(Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/c0$a;

    move-result-object v8

    .line 2
    new-instance v13, Ln3/y/b/a/t0/q0/i;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->f:Ln3/y/b/a/t0/q0/f;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->h:Ln3/y/b/a/t0/q0/e;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->p:Ln3/y/b/a/w0/e0;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ln3/y/b/a/p0/c;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->k:Ln3/y/b/a/w0/z;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Ln3/y/b/a/t0/l;

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->l:Z

    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->m:Z

    move-object v1, v13

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Ln3/y/b/a/t0/q0/i;-><init>(Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/q0/r/i;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/e0;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/w0/b;Ln3/y/b/a/t0/l;ZZ)V

    return-object v13
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->p:Ln3/y/b/a/w0/e0;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->j(Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/c0$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Ln3/y/b/a/t0/q0/r/i;->g(Landroid/net/Uri;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/q0/r/i$e;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v0}, Ln3/y/b/a/t0/q0/r/i;->stop()V

    return-void
.end method
