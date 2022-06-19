.class public final Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Custom;
.super Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;-><init>(Ljava/lang/String;Lkotlin/w/c/g;)V

    return-void
.end method
