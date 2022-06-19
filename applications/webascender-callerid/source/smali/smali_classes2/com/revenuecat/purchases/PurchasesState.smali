.class public final Lcom/revenuecat/purchases/PurchasesState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowSharingPlayStoreAccount:Ljava/lang/Boolean;

.field private final appInBackground:Z

.field private final firstTimeInForeground:Z

.field private final lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

.field private final productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

.field private final purchaseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/revenuecat/purchases/PurchasesState;-><init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;",
            ">;",
            "Lcom/revenuecat/purchases/interfaces/ProductChangeListener;",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "purchaseCallbacks"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    iput-object p3, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    iput-object p4, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    iput-object p5, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    iput-boolean p6, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    iput-boolean p7, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILkotlin/w/c/g;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lkotlin/s/b0;->e()Ljava/util/Map;

    move-result-object p3

    :cond_2
    move-object v2, p3

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, p4

    :goto_2
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p5

    :goto_3
    and-int/lit8 p1, p8, 0x20

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move v4, p6

    :goto_4
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    const/4 p8, 0x1

    goto :goto_5

    :cond_6
    move p8, p7

    :goto_5
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v0

    move p7, v4

    .line 3
    invoke-direct/range {p1 .. p8}, Lcom/revenuecat/purchases/PurchasesState;-><init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-boolean p7, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/revenuecat/purchases/PurchasesState;->copy(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZ)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method public final component4()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    return-object v0
.end method

.method public final component5()Lcom/revenuecat/purchases/PurchaserInfo;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    return v0
.end method

.method public final copy(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZ)Lcom/revenuecat/purchases/PurchasesState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;",
            ">;",
            "Lcom/revenuecat/purchases/interfaces/ProductChangeListener;",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "ZZ)",
            "Lcom/revenuecat/purchases/PurchasesState;"
        }
    .end annotation

    const-string v0, "purchaseCallbacks"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/PurchasesState;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/revenuecat/purchases/PurchasesState;-><init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/PurchasesState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/PurchasesState;

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    iget-object v1, p1, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    iget-object v1, p1, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    iget-object v1, p1, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    iget-object v1, p1, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    iget-boolean v1, p1, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    iget-boolean p1, p1, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAllowSharingPlayStoreAccount()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAppInBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    return v0
.end method

.method public final getFirstTimeInForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    return v0
.end method

.method public final getLastSentPurchaserInfo()Lcom/revenuecat/purchases/PurchaserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    return-object v0
.end method

.method public final getProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    return-object v0
.end method

.method public final getPurchaseCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method public final getUpdatedPurchaserInfoListener()Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchasesState(allowSharingPlayStoreAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/PurchasesState;->allowSharingPlayStoreAccount:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedPurchaserInfoListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/PurchasesState;->updatedPurchaserInfoListener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/PurchasesState;->purchaseCallbacks:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productChangeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/PurchasesState;->productChangeCallback:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastSentPurchaserInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/PurchasesState;->lastSentPurchaserInfo:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appInBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/revenuecat/purchases/PurchasesState;->appInBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstTimeInForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/revenuecat/purchases/PurchasesState;->firstTimeInForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
