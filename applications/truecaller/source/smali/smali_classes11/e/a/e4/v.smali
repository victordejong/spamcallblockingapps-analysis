.class public Le/a/e4/v;
.super Le/a/e4/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e4/v$a;
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public final t:Landroid/telephony/CarrierConfigManager;

.field public final u:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/telephony/CarrierConfigManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/e4/t;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;)V

    .line 2
    iput-object p5, p0, Le/a/e4/v;->t:Landroid/telephony/CarrierConfigManager;

    .line 3
    const-class p1, Landroid/telephony/TelephonyManager;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 p3, 0x0

    const-class p4, Landroid/telecom/PhoneAccount;

    aput-object p4, p2, p3

    const-string p3, "getSubIdForPhoneAccount"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Le/a/e4/v;->u:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public G(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/e4/t;->l:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public J(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e4/r;->b:Le/a/e4/f0/a;

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e4/f0/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/e4/t;->m:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 4
    iget-object v2, p0, Le/a/e4/t;->m:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 5
    iget-object v3, p0, Le/a/e4/v;->u:Ljava/lang/reflect/Method;

    iget-object v4, p0, Le/a/e4/t;->l:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Marshmallow"

    return-object v0
.end method

.method public i(Ljava/lang/String;)Le/a/e4/i;
    .locals 1

    const-string v0, "-1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/e4/v;->t:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e4/v;->t:Landroid/telephony/CarrierConfigManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    .line 5
    :cond_1
    new-instance v0, Le/a/e4/k;

    invoke-direct {v0, p1}, Le/a/e4/k;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public s(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Le/a/e4/v;->J(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 2

    .line 1
    new-instance v0, Le/a/e4/v$a;

    invoke-virtual {p0}, Le/a/e4/r;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Le/a/e4/v$a;-><init>(Le/a/e4/v;Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0
.end method
