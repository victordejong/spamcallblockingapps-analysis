.class public abstract Ln3/y/b/a/t0/p0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/a0$e;


# instance fields
.field public final a:Ln3/y/b/a/w0/k;

.field public final b:I

.field public final c:Landroidx/media2/exoplayer/external/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field public final h:Ln3/y/b/a/w0/d0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/w0/d0;

    invoke-direct {v0, p1}, Ln3/y/b/a/w0/d0;-><init>(Ln3/y/b/a/w0/h;)V

    iput-object v0, p0, Ln3/y/b/a/t0/p0/b;->h:Ln3/y/b/a/w0/d0;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/t0/p0/b;->a:Ln3/y/b/a/w0/k;

    .line 5
    iput p3, p0, Ln3/y/b/a/t0/p0/b;->b:I

    .line 6
    iput-object p4, p0, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    .line 7
    iput p5, p0, Ln3/y/b/a/t0/p0/b;->d:I

    .line 8
    iput-object p6, p0, Ln3/y/b/a/t0/p0/b;->e:Ljava/lang/Object;

    .line 9
    iput-wide p7, p0, Ln3/y/b/a/t0/p0/b;->f:J

    .line 10
    iput-wide p9, p0, Ln3/y/b/a/t0/p0/b;->g:J

    return-void
.end method
