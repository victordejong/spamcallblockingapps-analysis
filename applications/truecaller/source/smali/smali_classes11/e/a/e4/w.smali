.class public Le/a/e4/w;
.super Le/a/e4/v;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public w:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/telephony/CarrierConfigManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/e4/v;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/telephony/CarrierConfigManager;)V

    .line 2
    iput-object p2, p0, Le/a/e4/w;->w:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "MarshmallowHuawei"

    return-object v0
.end method

.method public s(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Le/a/e4/v;->J(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result p2

    const-string v1, "subscription"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/e4/t;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/e4/w;->w:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ACTIVE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, p0, Le/a/e4/w;->w:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Le/a/e4/w;->w:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 5
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mStatus"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-le v4, v0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 1

    .line 1
    new-instance v0, Le/a/e4/o;

    invoke-direct {v0, p1, p0}, Le/a/e4/o;-><init>(Landroid/database/Cursor;Le/a/e4/p;)V

    return-object v0
.end method
