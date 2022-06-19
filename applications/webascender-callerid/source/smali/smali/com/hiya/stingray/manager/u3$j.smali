.class public final Lcom/hiya/stingray/manager/u3$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/hiya/stingray/manager/u3$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skuDetails.sku"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 4
    :goto_1
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v4, v1

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v1, v3

    .line 7
    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3$p;->isAnnual()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lcom/hiya/stingray/manager/u3$p;

    .line 11
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xc

    goto :goto_4

    :cond_5
    const/4 p1, 0x1

    .line 12
    :goto_4
    new-instance v1, Lcom/hiya/stingray/manager/u3$i;

    invoke-direct {v1, p2, v5, p1}, Lcom/hiya/stingray/manager/u3$i;-><init>(Lcom/android/billingclient/api/SkuDetails;Lcom/hiya/stingray/manager/u3$p;I)V

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/manager/u3$j;-><init>(Ljava/lang/String;Lcom/hiya/stingray/manager/u3$i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hiya/stingray/manager/u3$i;)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/manager/u3$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/manager/u3$j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/manager/u3$j;

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j;->b:Lcom/hiya/stingray/manager/u3$i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
