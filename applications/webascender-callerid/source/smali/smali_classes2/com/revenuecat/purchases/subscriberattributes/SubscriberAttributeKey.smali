.class public abstract Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Email;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DisplayName;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$PhoneNumber;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$FCMTokens;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Custom;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DeviceIdentifiers;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;
    }
.end annotation


# instance fields
.field private final backendKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBackendKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriberAttributeKey(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;->backendKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
