.class final Lcom/revenuecat/purchases/common/BillingWrapper$sam$com_android_billingclient_api_ConsumeResponseListener$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/i;


# instance fields
.field private final synthetic function:Lkotlin/w/b/p;


# direct methods
.method constructor <init>(Lkotlin/w/b/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$sam$com_android_billingclient_api_ConsumeResponseListener$0;->function:Lkotlin/w/b/p;

    return-void
.end method


# virtual methods
.method public final synthetic onConsumeResponse(Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$sam$com_android_billingclient_api_ConsumeResponseListener$0;->function:Lkotlin/w/b/p;

    invoke-interface {v0, p1, p2}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invoke(...)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
