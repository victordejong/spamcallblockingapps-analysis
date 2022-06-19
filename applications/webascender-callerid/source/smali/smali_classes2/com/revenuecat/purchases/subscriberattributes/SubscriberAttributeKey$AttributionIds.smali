.class public abstract Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;
.super Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttributionIds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$AppsFlyer;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Facebook;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Mparticle;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$OneSignal;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;-><init>(Ljava/lang/String;Lkotlin/w/c/g;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;-><init>(Ljava/lang/String;)V

    return-void
.end method
