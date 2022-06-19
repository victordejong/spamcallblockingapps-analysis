.class public final Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;
.super Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adjust"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;

    invoke-direct {v0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "$adjustId"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;-><init>(Ljava/lang/String;Lkotlin/w/c/g;)V

    return-void
.end method
