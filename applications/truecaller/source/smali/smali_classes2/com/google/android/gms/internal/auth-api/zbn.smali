.class public final Lcom/google/android/gms/internal/auth-api/zbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zba(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    const-string p1, "context must not be null"

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "request must not be null"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbax;->zba()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p1, "null reference"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.auth.api.credentials.PICKER"

    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "claimedCallingPackage"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "logSessionId"

    .line 9
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    const-string p3, "com.google.android.gms.credentials.HintRequest"

    .line 14
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 p2, 0x7d0

    .line 15
    sget p3, Lcom/google/android/gms/internal/auth-api/zbay;->zba:I

    const/high16 v0, 0x8000000

    or-int/2addr p3, v0

    invoke-static {p0, p2, p1, p3}, Lcom/google/android/gms/internal/auth-api/zbay;->zba(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
