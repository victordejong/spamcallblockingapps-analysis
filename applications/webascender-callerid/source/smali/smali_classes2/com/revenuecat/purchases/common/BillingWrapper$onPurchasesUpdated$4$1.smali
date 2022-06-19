.class final Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->onPurchasesUpdated(Lcom/android/billingclient/api/g;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/android/billingclient/api/Purchase;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;

    invoke-direct {v0}, Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;->INSTANCE:Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/billingclient/api/Purchase;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;->invoke(Lcom/android/billingclient/api/Purchase;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
