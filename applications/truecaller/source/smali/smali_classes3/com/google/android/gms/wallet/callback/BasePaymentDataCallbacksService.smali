.class public abstract Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;
.super Le/m/a/f/s/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/f/s/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/wallet/callback/CallbackInput;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/wallet/callback/OnCompleteListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/callback/CallbackInput;",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p1, p2, Lcom/google/android/gms/wallet/callback/CallbackInput;->a:I

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;->b()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;

    move-result-object p1

    .line 3
    iget p3, p2, Lcom/google/android/gms/wallet/callback/CallbackInput;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 4
    sget-object p3, Lcom/google/android/gms/wallet/PaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/wallet/callback/CallbackInput;->b:[B

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 7
    :goto_0
    check-cast v1, Lcom/google/android/gms/wallet/PaymentData;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->a()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 9
    sget-object p3, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    iget-object p2, p2, Lcom/google/android/gms/wallet/callback/CallbackInput;->b:[B

    if-nez p2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 12
    :goto_1
    check-cast v1, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->b()V

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown Callback Types"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback Types must be set"

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/a/f/s/a/d;->a:Landroid/os/Messenger;

    .line 2
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/m/a/f/s/a/d;->onCreate()V

    return-void
.end method
