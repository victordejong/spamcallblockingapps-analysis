.class public final Lcom/facebook/ads/redexgen/X/F2;
.super Lcom/facebook/ads/redexgen/X/cG;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/c8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/21;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/21;)V
    .locals 2

    .line 32797
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/21;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/F2;->A00(Lcom/facebook/ads/redexgen/X/21;)Lcom/facebook/ads/redexgen/X/20;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/cG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/20;)V

    .line 32798
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    .line 32799
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/21;)Lcom/facebook/ads/redexgen/X/20;
    .locals 1

    .line 32800
    new-instance v0, Lcom/facebook/ads/redexgen/X/c3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/21;)V

    return-object v0
.end method


# virtual methods
.method public final A05()V
    .locals 2

    .line 32801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_0

    .line 32802
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c8;->A0E()V

    .line 32803
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cG;->A00:Lcom/facebook/ads/redexgen/X/1u;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1t;->A04:Lcom/facebook/ads/redexgen/X/1t;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1u;->AEJ(Lcom/facebook/ads/redexgen/X/1t;)V

    .line 32804
    return-void
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/c8;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 32805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    return-object v0
.end method

.method public final A08()V
    .locals 4

    .line 32806
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cG;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/c8;-><init>(Lcom/facebook/ads/redexgen/X/21;Lcom/facebook/ads/redexgen/X/24;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    .line 32807
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/21;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/21;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/21;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c8;->A0I(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32808
    return-void
.end method

.method public final A09(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 32809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/21;->A03:Lcom/facebook/ads/RewardData;

    .line 32810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_0

    .line 32811
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c8;->A0G(Lcom/facebook/ads/RewardData;)V

    .line 32812
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cG;->A00:Lcom/facebook/ads/redexgen/X/1u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1u;->A5H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32814
    return-void

    .line 32815
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/21;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_1

    .line 32817
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/c8;->A0I(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32818
    return-void

    .line 32819
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/21;->A05:Ljava/lang/String;

    .line 32820
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/21;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 32821
    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/21;->A08:Z

    .line 32822
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F2;->A08()V

    .line 32823
    return-void
.end method

.method public final A0B()Z
    .locals 5

    .line 32824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_0

    .line 32825
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c8;->A0J()Z

    move-result v0

    return v0

    .line 32826
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/21;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 32827
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ly;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/21;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 32828
    :goto_0
    return v0

    .line 32829
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C()Z
    .locals 2

    .line 32830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_0

    .line 32831
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c8;->A0K()Z

    move-result v0

    return v0

    .line 32832
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cG;->A00:Lcom/facebook/ads/redexgen/X/1u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1u;->A5a()Lcom/facebook/ads/redexgen/X/1t;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1t;->A06:Lcom/facebook/ads/redexgen/X/1t;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    .line 32833
    check-cast p2, Lcom/facebook/ads/redexgen/X/5S;

    .line 32834
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5S;->A00()I

    move-result v4

    .line 32835
    .local p0, "appOrientation":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cG;->A00:Lcom/facebook/ads/redexgen/X/1u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1u;->A5I()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 32836
    return v3

    .line 32837
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/21;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    if-eqz v0, :cond_1

    .line 32839
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/c8;->A0L(I)Z

    move-result v0

    return v0

    .line 32840
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:Lcom/facebook/ads/redexgen/X/21;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cG;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/c8;-><init>(Lcom/facebook/ads/redexgen/X/21;Lcom/facebook/ads/redexgen/X/24;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    .line 32841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/c8;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/c8;->A0L(I)Z

    .line 32842
    return v3
.end method
