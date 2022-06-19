.class public final Ln3/y/b/a/v0/c;
.super Ln3/y/b/a/v0/b;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/y/b/a/v0/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2
    iput p3, p0, Ln3/y/b/a/v0/c;->g:I

    .line 3
    iput-object p4, p0, Ln3/y/b/a/v0/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(JJJLjava/util/List;[Ln3/y/b/a/t0/p0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Ln3/y/b/a/t0/p0/d;",
            ">;[",
            "Ln3/y/b/a/t0/p0/e;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/v0/c;->g:I

    return v0
.end method
