.class public final synthetic Lcom/facebook/appevents/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/facebook/appevents/x;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/i;->b:Lcom/facebook/appevents/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/facebook/appevents/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/i;->b:Lcom/facebook/appevents/x;

    const-string v2, "$context"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$logger"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.facebook.core.Core"

    const-string v4, "com.facebook.login.Login"

    const-string v5, "com.facebook.share.Share"

    const-string v6, "com.facebook.places.Places"

    const-string v7, "com.facebook.messenger.Messenger"

    const-string v8, "com.facebook.applinks.AppLinks"

    const-string v9, "com.facebook.marketing.Marketing"

    const-string v10, "com.facebook.gamingservices.GamingServices"

    const-string v11, "com.facebook.all.All"

    const-string v12, "com.android.billingclient.api.BillingClient"

    const-string v13, "com.android.vending.billing.IInAppBillingService"

    .line 3
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "core_lib_included"

    const-string v5, "login_lib_included"

    const-string v6, "share_lib_included"

    const-string v7, "places_lib_included"

    const-string v8, "messenger_lib_included"

    const-string v9, "applinks_lib_included"

    const-string v10, "marketing_lib_included"

    const-string v11, "gamingservices_lib_included"

    const-string v12, "all_lib_included"

    const-string v13, "billing_client_lib_included"

    const-string v14, "billing_service_lib_included"

    .line 4
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    add-int/lit8 v9, v7, 0x1

    .line 5
    aget-object v10, v3, v7

    .line 6
    aget-object v11, v4, v7

    .line 7
    :try_start_0
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v10, 0x1

    .line 8
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int v7, v10, v7

    or-int/2addr v8, v7

    :catch_0
    if-le v9, v5, :cond_1

    const-string v3, "com.facebook.sdk.appEventPreferences"

    .line 9
    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "kitsBitmask"

    .line 10
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 11
    invoke-static {v0, v3, v8}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    const/4 v0, 0x0

    const-string v3, "fb_sdk_initialize"

    .line 12
    invoke-virtual {v1, v3, v0, v2}, Lcom/facebook/appevents/x;->g(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    move v7, v9

    goto :goto_0
.end method
