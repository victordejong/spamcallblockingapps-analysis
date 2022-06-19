.class public final Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientFactory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final buildClient(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/c;->g(Landroid/content/Context;)Lcom/android/billingclient/api/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$b;->b()Lcom/android/billingclient/api/c$b;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/c$b;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$b;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/c$b;->a()Lcom/android/billingclient/api/c;

    move-result-object p1

    const-string v0, "BillingClient.newBuilder\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
