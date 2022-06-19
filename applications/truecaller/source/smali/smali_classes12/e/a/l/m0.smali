.class public final Le/a/l/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/l/n2/f;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

.field public final h:Le/a/l/n2/f;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/PremiumLaunchContext;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/l/n2/f;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;",
            "Le/a/l/n2/f;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    iput-object p2, p0, Le/a/l/m0;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/l/m0;->c:Ljava/util/List;

    iput-object p4, p0, Le/a/l/m0;->d:Le/a/l/n2/f;

    iput-boolean p5, p0, Le/a/l/m0;->e:Z

    iput-object p6, p0, Le/a/l/m0;->f:Ljava/lang/String;

    iput-object p7, p0, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    iput-object p8, p0, Le/a/l/m0;->h:Le/a/l/n2/f;

    iput-object p9, p0, Le/a/l/m0;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;I)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    const/4 v9, 0x0

    and-int/lit8 v1, v0, 0x40

    const/4 v10, 0x0

    and-int/lit16 v1, v0, 0x80

    const/4 v11, 0x0

    and-int/lit16 v0, v0, 0x100

    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2
    invoke-direct/range {v3 .. v12}, Le/a/l/m0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/m0;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/m0;

    iget-object v0, p0, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v1, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/m0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->c:Ljava/util/List;

    iget-object v1, p1, Le/a/l/m0;->c:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->d:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/m0;->e:Z

    iget-boolean v1, p1, Le/a/l/m0;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/m0;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/m0;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    iget-object v1, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->h:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/m0;->h:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/m0;->i:Ljava/lang/String;

    iget-object p1, p1, Le/a/l/m0;->i:Ljava/lang/String;

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

    iget-object v0, p0, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/m0;->e:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->h:Le/a/l/n2/f;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/m0;->i:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PremiumEventParams(launchContext="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oldSkus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->d:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hadPremiumBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/m0;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectedPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionPromoEventMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yearlyWelcomeSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->h:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseButtonSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/m0;->i:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
