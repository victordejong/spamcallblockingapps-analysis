.class public final Ln3/y/b/a/t0/f0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/n;

.field public final b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public final c:[Z

.field public final d:[Z

.field public final e:[Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/n;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/f0$d;->a:Ln3/y/b/a/q0/n;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/f0$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/t0/f0$d;->c:[Z

    .line 5
    iget p1, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Ln3/y/b/a/t0/f0$d;->d:[Z

    .line 6
    new-array p1, p1, [Z

    iput-object p1, p0, Ln3/y/b/a/t0/f0$d;->e:[Z

    return-void
.end method
