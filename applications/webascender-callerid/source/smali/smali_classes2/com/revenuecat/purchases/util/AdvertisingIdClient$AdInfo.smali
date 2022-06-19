.class public final Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/util/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final isLimitAdTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;Ljava/lang/String;ZILjava/lang/Object;)Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->copy(Ljava/lang/String;Z)Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    iget-boolean p1, p1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

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

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLimitAdTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
