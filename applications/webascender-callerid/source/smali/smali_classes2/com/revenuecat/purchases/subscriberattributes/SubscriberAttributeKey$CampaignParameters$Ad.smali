.class public final Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;
.super Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ad"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;

    invoke-direct {v0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "$ad"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters;-><init>(Ljava/lang/String;Lkotlin/w/c/g;)V

    return-void
.end method
