.class final Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$Companion;->isBillingSupported(Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;

    invoke-direct {v0}, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;->INSTANCE:Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
