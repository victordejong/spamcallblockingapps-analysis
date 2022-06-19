.class public final Lcom/hiya/client/callerid/ui/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "failed to disconnect the phone call"

    const-string v1, "$this$disconnect"

    invoke-static {p0, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_2

    const-string v0, "telecom"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/telecom/TelecomManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    check-cast v2, Landroid/telecom/TelecomManager;

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to end call."

    .line 4
    invoke-static {p0, v0, v2, v1}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return v3

    :cond_2
    const-string v1, "phone"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_5

    .line 6
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "Class.forName(telephony.javaClass.name)"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "getITelephony"

    new-array v5, v3, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "m"

    .line 8
    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 10
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v3

    goto :goto_2

    .line 11
    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.android.internal.telephony.ITelephony"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {p0, v1, v0, v2}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to disconnect the phone call due to invalid system permission"

    .line 13
    invoke-static {p0, v0, v2, v1}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_3
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {p0, v1, v0, v2}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_4
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {p0, v1, v0, v2}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return v3
.end method

.method public static final b(Landroid/telecom/Call;)Lg/g/b/c/k;
    .locals 1

    const-string v0, "$this$initialDirection"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    goto :goto_0

    :cond_0
    sget-object p0, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    :goto_0
    return-object p0
.end method

.method public static final c(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$rawPhoneNumber"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    const-string v0, "details"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static final d(Landroid/telecom/Call;)Lg/g/b/c/t;
    .locals 2

    const-string v0, "$this$verificationStatus"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    const-string v0, "details"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 3
    sget-object p0, Lg/g/b/c/t;->NOT_VERIFIED:Lg/g/b/c/t;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lg/g/b/c/t;->FAILED:Lg/g/b/c/t;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lg/g/b/c/t;->PASSED:Lg/g/b/c/t;

    :goto_0
    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lg/g/b/c/t;->NOT_VERIFIED:Lg/g/b/c/t;

    return-object p0
.end method

.method public static final e(Landroid/telecom/Call;)Z
    .locals 3

    const-string v0, "$this$isPrivate"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
