.class public final Lcom/hiya/client/callerid/ui/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b(Lg/g/d/e;ZLg/g/b/c/f;)V
    .locals 1

    const-string v0, "$this$setCallerId"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0, p2}, Lg/g/d/e;->b(Lg/g/b/c/f;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, p2}, Lg/g/d/e;->n(Lg/g/b/c/f;)V

    :goto_0
    return-void
.end method

.method public static final c(Lg/g/d/e;Landroid/content/Context;)V
    .locals 4

    const-string v0, "$this$setConnectivityStatus"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-lt v1, v2, :cond_5

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    invoke-interface {p0, v1}, Lg/g/d/e;->i(Z)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/e;->a(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    .line 8
    sget-object p1, Lg/g/d/j/b;->UNKNOWN:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object p1, Lg/g/d/j/b;->DATA_5G:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object p1, Lg/g/d/j/b;->DATA_3G:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object p1, Lg/g/d/j/b;->DATA_LTE:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    goto :goto_1

    .line 12
    :cond_4
    sget-object p1, Lg/g/d/j/b;->OFF:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    invoke-interface {p0, v3}, Lg/g/d/e;->i(Z)V

    goto :goto_1

    .line 16
    :cond_7
    sget-object p1, Lg/g/d/j/b;->UNKNOWN:Lg/g/d/j/b;

    invoke-interface {p0, p1}, Lg/g/d/e;->l(Lg/g/d/j/b;)V

    :cond_8
    :goto_1
    return-void

    .line 17
    :cond_9
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
