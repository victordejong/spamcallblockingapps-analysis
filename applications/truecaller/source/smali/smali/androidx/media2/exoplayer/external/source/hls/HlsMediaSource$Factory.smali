.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/e;

.field public b:Ln3/y/b/a/t0/q0/f;

.field public c:Ln3/y/b/a/t0/q0/r/h;

.field public d:Ln3/y/b/a/t0/q0/r/i$a;

.field public e:Ln3/y/b/a/t0/l;

.field public f:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Ln3/y/b/a/w0/z;

.field public h:Z

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/h$a;)V
    .locals 1

    .line 1
    new-instance v0, Ln3/y/b/a/t0/q0/b;

    invoke-direct {v0, p1}, Ln3/y/b/a/t0/q0/b;-><init>(Ln3/y/b/a/w0/h$a;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a:Ln3/y/b/a/t0/q0/e;

    .line 4
    new-instance p1, Ln3/y/b/a/t0/q0/r/a;

    invoke-direct {p1}, Ln3/y/b/a/t0/q0/r/a;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->c:Ln3/y/b/a/t0/q0/r/h;

    .line 5
    sget p1, Ln3/y/b/a/t0/q0/r/c;->p:I

    sget-object p1, Ln3/y/b/a/t0/q0/r/b;->a:Ln3/y/b/a/t0/q0/r/i$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->d:Ln3/y/b/a/t0/q0/r/i$a;

    .line 6
    sget-object p1, Ln3/y/b/a/t0/q0/f;->a:Ln3/y/b/a/t0/q0/f;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->b:Ln3/y/b/a/t0/q0/f;

    .line 7
    sget-object p1, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    .line 8
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->f:Ln3/y/b/a/p0/c;

    .line 9
    new-instance p1, Ln3/y/b/a/w0/t;

    invoke-direct {p1}, Ln3/y/b/a/w0/t;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->g:Ln3/y/b/a/w0/z;

    .line 10
    new-instance p1, Ln3/y/b/a/t0/l;

    invoke-direct {p1}, Ln3/y/b/a/t0/l;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Ln3/y/b/a/t0/l;

    return-void
.end method
