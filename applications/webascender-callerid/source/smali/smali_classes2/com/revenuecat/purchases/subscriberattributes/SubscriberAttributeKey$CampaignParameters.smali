.class public abstract Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;
.super Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CampaignParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$MediaSource;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Campaign;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$AdGroup;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Keyword;,
        Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Creative;
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
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;-><init>(Ljava/lang/String;)V

    return-void
.end method
