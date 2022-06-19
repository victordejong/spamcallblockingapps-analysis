.class final Lcom/hiya/stingray/manager/u3$i0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$i0$a;->a(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3$i0$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$i0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 5
    new-instance v2, Lcom/hiya/stingray/manager/u3$j;

    iget-object v3, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object v3, v3, Lcom/hiya/stingray/manager/u3$i0$a;->f:Lcom/hiya/stingray/manager/u3$i0;

    iget-object v3, v3, Lcom/hiya/stingray/manager/u3$i0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v3}, Lcom/hiya/stingray/manager/u3;->g(Lcom/hiya/stingray/manager/u3;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/hiya/stingray/manager/u3$j;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$i0$a;->f:Lcom/hiya/stingray/manager/u3$i0;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$i0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p2, p1}, Lcom/hiya/stingray/manager/u3;->o(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$i0$a;->f:Lcom/hiya/stingray/manager/u3$i0;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$i0;->a:Lcom/hiya/stingray/manager/u3;

    new-instance v0, Lcom/hiya/stingray/manager/u3$k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/hiya/stingray/manager/u3$k;-><init>(Ljava/util/List;J)V

    invoke-static {p2, v0}, Lcom/hiya/stingray/manager/u3;->m(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/u3$k;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$i0$a;->g:Li/c/b0/b/f;

    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    const-string p1, "PremiumManagerLog"

    .line 9
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$i0$a;->f:Lcom/hiya/stingray/manager/u3$i0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$i0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->G()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Updated products: %s"

    invoke-virtual {p1, v0, p2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    sget-object p1, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/u3$i0$a$a$a;

    invoke-direct {p2}, Lcom/hiya/stingray/manager/u3$i0$a$a$a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/revenuecat/purchases/Purchases;->getOfferings(Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$i0$a$a;->a:Lcom/hiya/stingray/manager/u3$i0$a;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$i0$a;->g:Li/c/b0/b/f;

    new-instance v0, Lcom/hiya/stingray/manager/u3$e;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/u3$e;-><init>(Lcom/android/billingclient/api/g;)V

    invoke-interface {p2, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
