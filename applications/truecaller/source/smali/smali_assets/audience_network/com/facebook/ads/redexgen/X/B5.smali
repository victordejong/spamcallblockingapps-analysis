.class public final Lcom/facebook/ads/redexgen/X/B5;
.super Lcom/facebook/ads/redexgen/X/Ul;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V
    .locals 2

    .line 23063
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/B5;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    .line 23064
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23065
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)V

    .line 23066
    iput p3, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    .line 23067
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    .line 23068
    return-void
.end method


# virtual methods
.method public final A7K()I
    .locals 1

    .line 23069
    const/4 v0, 0x0

    return v0
.end method
