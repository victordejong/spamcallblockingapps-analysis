.class public final Lcom/facebook/ads/redexgen/X/Wm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J9;
.implements Lcom/facebook/ads/redexgen/X/BG;
.implements Lcom/facebook/ads/redexgen/X/GO;
.implements Lcom/facebook/ads/redexgen/X/E6;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tENgV7sVRmCggStQb7ahqyncu3McMlqx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EBCLDe86SI67l2WgLGk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xc2z6PWfFp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZjGJvfPpi7mMWyj8ThC73X2hXIQsvVeY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wm4K2NOZzdg8zteNHm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uxR1U8t68FFaIgGW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZP1sAESULwb937k6ya35I8qp57tsUFN9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    .line 64890
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DA;)V
    .locals 0

    .line 64891
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Al;)V
    .locals 0

    .line 64892
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Lcom/facebook/ads/redexgen/X/DA;)V

    return-void
.end method


# virtual methods
.method public final A9s(Ljava/lang/String;JJ)V
    .locals 8

    .line 64893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/BG;

    .line 64894
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/BG;->A9s(Ljava/lang/String;JJ)V

    .line 64895
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    .line 64896
    :cond_0
    return-void
.end method

.method public final A9t(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 5

    .line 64897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Pw7sEp82k0vieihjeRw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64898
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "rZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/BG;->A9t(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 64899
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    .line 64900
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "AJXnTxM8Cjr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/DA;->A04(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/DA;->A06(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;

    .line 64902
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A00(Lcom/facebook/ads/redexgen/X/DA;I)I

    .line 64903
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9u(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 64904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A06(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;

    .line 64905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BG;

    .line 64906
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BG;->A9u(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 64907
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    .line 64908
    :cond_0
    return-void
.end method

.method public final A9v(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 64909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A04(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BG;

    .line 64911
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BG;->A9v(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64912
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    .line 64913
    :cond_0
    return-void
.end method

.method public final A9w(I)V
    .locals 5

    .line 64914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A00(Lcom/facebook/ads/redexgen/X/DA;I)I

    .line 64915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    .line 64916
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "0C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/BG;->A9w(I)V

    .line 64917
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64918
    :cond_1
    return-void
.end method

.method public final A9x(IJJ)V
    .locals 8

    .line 64919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0D(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/BG;

    .line 64920
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    move-wide v4, p2

    move-wide v6, p4

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/BG;->A9x(IJJ)V

    .line 64921
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/BG;
    goto :goto_0

    .line 64922
    :cond_0
    return-void
.end method

.method public final AAG(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;)V"
        }
    .end annotation

    .line 64923
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A08(Lcom/facebook/ads/redexgen/X/DA;Ljava/util/List;)Ljava/util/List;

    .line 64924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A09(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GO;

    .line 64925
    .local p1, "textOutput":Lcom/facebook/ads/redexgen/X/GO;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GO;->AAG(Ljava/util/List;)V

    .line 64926
    .end local p1    # "textOutput":Lcom/facebook/ads/redexgen/X/GO;
    goto :goto_0

    .line 64927
    :cond_0
    return-void
.end method

.method public final AAS(IJ)V
    .locals 2

    .line 64928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J9;

    .line 64929
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/J9;->AAS(IJ)V

    .line 64930
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_0

    .line 64931
    :cond_0
    return-void
.end method

.method public final ABJ(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 64932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0A(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/E6;

    .line 64933
    .local p1, "metadataOutput":Lcom/facebook/ads/redexgen/X/E6;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/E6;->ABJ(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 64934
    .end local p1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/E6;
    goto :goto_0

    .line 64935
    :cond_0
    return-void
.end method

.method public final ABs(Landroid/view/Surface;)V
    .locals 2

    .line 64936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A01(Lcom/facebook/ads/redexgen/X/DA;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 64937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0C(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64938
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/J0;
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 64939
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J9;

    .line 64940
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J9;->ABs(Landroid/view/Surface;)V

    .line 64941
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_1

    .line 64942
    :cond_1
    return-void
.end method

.method public final ACP(Ljava/lang/String;JJ)V
    .locals 8

    .line 64943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/J9;

    .line 64944
    .local v3, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/J9;->ACP(Ljava/lang/String;JJ)V

    .line 64945
    .end local v3    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_0

    .line 64946
    :cond_0
    return-void
.end method

.method public final ACQ(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 64947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J9;

    .line 64948
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J9;->ACQ(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 64949
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_0

    .line 64950
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DA;->A03(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DA;->A05(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;

    .line 64952
    return-void
.end method

.method public final ACR(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 5

    .line 64953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A05(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/Bj;)Lcom/facebook/ads/redexgen/X/Bj;

    .line 64954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/J9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64955
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "6iGRC7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/J9;->ACR(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 64956
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_0

    .line 64957
    :cond_1
    return-void
.end method

.method public final ACU(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 5

    .line 64958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A03(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/J9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 64960
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A01:[Ljava/lang/String;

    const-string v1, "M1lNqMtLlEQhDRLPZV8vitTN6y5pnm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/J9;->ACU(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64961
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64962
    :cond_1
    return-void
.end method

.method public final ACZ(IIIF)V
    .locals 2

    .line 64963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0C(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 64964
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/J0;->ACZ(IIIF)V

    .line 64965
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 64966
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DA;->A0B(Lcom/facebook/ads/redexgen/X/DA;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J9;

    .line 64967
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/J9;->ACZ(IIIF)V

    .line 64968
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J9;
    goto :goto_1

    .line 64969
    :cond_1
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 64970
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0H(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/Surface;Z)V

    .line 64971
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 64972
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DA;->A0H(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/Surface;Z)V

    .line 64973
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 64974
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 64975
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 64976
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 64977
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0H(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/Surface;Z)V

    .line 64978
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 64979
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A0H(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/Surface;Z)V

    .line 64980
    return-void
.end method
