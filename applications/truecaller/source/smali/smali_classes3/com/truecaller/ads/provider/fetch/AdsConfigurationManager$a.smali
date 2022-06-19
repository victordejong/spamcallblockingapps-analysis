.class public final Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

.field public final b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V
    .locals 1

    const-string v0, "adsTargetingState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotionState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    iput-object p2, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    return-void
.end method

.method public static a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;I)Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "adsTargetingState"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "promotionState"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    invoke-direct {p0, p1, p2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;-><init>(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    iget-object v0, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    iget-object v1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    iget-object p1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "UserConsents(adsTargetingState="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
