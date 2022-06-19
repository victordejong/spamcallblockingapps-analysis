.class public final Lcom/google/android/gms/wallet/WalletConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/WalletConstants$TotalPriceStatus;,
        Lcom/google/android/gms/wallet/WalletConstants$PaymentMethodTokenizationType;,
        Lcom/google/android/gms/wallet/WalletConstants$CardClass;,
        Lcom/google/android/gms/wallet/WalletConstants$PaymentMethod;,
        Lcom/google/android/gms/wallet/WalletConstants$BillingAddressFormat;,
        Lcom/google/android/gms/wallet/WalletConstants$CardNetwork;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "ACCOUNT_NO_WALLET"

    const-string v2, "com.google"

    .line 1
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
