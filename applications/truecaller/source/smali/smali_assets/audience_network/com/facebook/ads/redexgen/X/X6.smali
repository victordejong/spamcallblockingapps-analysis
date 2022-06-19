.class public final Lcom/facebook/ads/redexgen/X/X6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8M;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X3;->A6R(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8J;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/X3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X3;Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0

    .line 65878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X6;->A01:Lcom/facebook/ads/redexgen/X/X3;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/X6;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4R()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X6;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A01(Lcom/facebook/ads/redexgen/X/8J;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A5f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65880
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A02()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A6m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65881
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6o()Ljava/lang/String;
    .locals 1

    .line 65882
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A00()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7u()Z
    .locals 1

    .line 65883
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hh;->A09()Z

    move-result v0

    return v0
.end method

.method public final A8N()Z
    .locals 1

    .line 65884
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LF;->A00()Lcom/facebook/ads/redexgen/X/LF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LF;->A03()Z

    move-result v0

    return v0
.end method
