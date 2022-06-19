.class public final Lcom/facebook/ads/redexgen/X/dk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/dj;

.field public A01:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/dm<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field

.field public final A02:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74055
    .local p1, "this":Lcom/facebook/ads/redexgen/X/dk;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p2, "model":Ljava/lang/Object;, "TModelType;"
    .local p3, "state":Ljava/lang/Object;, "TStateType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Ljava/util/List;

    .line 74057
    sget-object v0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/dj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A00:Lcom/facebook/ads/redexgen/X/dj;

    .line 74058
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dk;->A02:Ljava/lang/Object;

    .line 74059
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dk;->A03:Ljava/lang/Object;

    .line 74060
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dk;->A04:Ljava/lang/String;

    .line 74061
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/dk;)Lcom/facebook/ads/redexgen/X/dj;
    .locals 0

    .line 74062
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dk;->A00:Lcom/facebook/ads/redexgen/X/dj;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/dk;)Ljava/lang/Object;
    .locals 0

    .line 74063
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dk;->A02:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dk;)Ljava/lang/Object;
    .locals 0

    .line 74064
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dk;->A03:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dk;)Ljava/lang/String;
    .locals 0

    .line 74065
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dk;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/dk;)Ljava/util/List;
    .locals 0

    .line 74066
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/dm;)Lcom/facebook/ads/redexgen/X/dk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dm<",
            "TModelType;TStateType;>;)",
            "Lcom/facebook/ads/redexgen/X/dk<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 74067
    .local p1, "this":Lcom/facebook/ads/redexgen/X/dk;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local v0, "viewpointAction":Lcom/facebook/ads/redexgen/X/dm;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Ljava/util/List;

    .line 74069
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74070
    return-object p0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/dj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/dj<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 74071
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dk;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/dj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dj;-><init>(Lcom/facebook/ads/redexgen/X/dk;)V

    return-object v0
.end method
