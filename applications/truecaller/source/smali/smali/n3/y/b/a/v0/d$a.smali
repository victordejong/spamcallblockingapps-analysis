.class public final Ln3/y/b/a/v0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method public constructor <init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/v0/d$a;->b:[I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 4
    array-length p1, p1

    iput p1, p0, Ln3/y/b/a/v0/d$a;->a:I

    return-void
.end method
