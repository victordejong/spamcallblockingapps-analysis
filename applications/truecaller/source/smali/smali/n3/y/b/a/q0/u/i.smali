.class public final Ln3/y/b/a/q0/u/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Landroidx/media2/exoplayer/external/Format;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field public final k:[Ln3/y/b/a/q0/u/j;


# direct methods
.method public constructor <init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Ln3/y/b/a/q0/u/j;I[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/u/i;->a:I

    .line 3
    iput p2, p0, Ln3/y/b/a/q0/u/i;->b:I

    .line 4
    iput-wide p3, p0, Ln3/y/b/a/q0/u/i;->c:J

    .line 5
    iput-wide p5, p0, Ln3/y/b/a/q0/u/i;->d:J

    .line 6
    iput-wide p7, p0, Ln3/y/b/a/q0/u/i;->e:J

    .line 7
    iput-object p9, p0, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    .line 8
    iput p10, p0, Ln3/y/b/a/q0/u/i;->g:I

    .line 9
    iput-object p11, p0, Ln3/y/b/a/q0/u/i;->k:[Ln3/y/b/a/q0/u/j;

    .line 10
    iput p12, p0, Ln3/y/b/a/q0/u/i;->j:I

    .line 11
    iput-object p13, p0, Ln3/y/b/a/q0/u/i;->h:[J

    .line 12
    iput-object p14, p0, Ln3/y/b/a/q0/u/i;->i:[J

    return-void
.end method


# virtual methods
.method public a(I)Ln3/y/b/a/q0/u/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/u/i;->k:[Ln3/y/b/a/q0/u/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
