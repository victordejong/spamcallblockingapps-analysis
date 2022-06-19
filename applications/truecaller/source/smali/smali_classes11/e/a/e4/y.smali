.class public Le/a/e4/y;
.super Le/a/e4/v;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final w:Ljava/lang/reflect/Method;


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

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "com.samsung.android.telephony.MultiSimManager"

    .line 2
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 p3, 0x0

    .line 3
    const-class p4, Landroid/content/Context;

    aput-object p4, p1, p3

    const-string p3, "getEnabledSimCount"

    invoke-virtual {p2, p3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Le/a/e4/y;->w:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 4
    :cond_0
    iput-object p1, p0, Le/a/e4/y;->w:Ljava/lang/reflect/Method;

    :goto_1
    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "sim_id"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "MarshmallowSamsung"

    return-object v0
.end method

.method public t()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e4/y;->w:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le/a/e4/t;->t()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/e4/t;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Le/a/e4/y;->w:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Le/a/e4/r;->a:Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v0, :cond_1

    move v1, v0

    :cond_1
    return v1

    :catch_0
    return v0

    :cond_2
    return v1
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 1

    .line 1
    new-instance v0, Le/a/e4/o;

    invoke-direct {v0, p1, p0}, Le/a/e4/o;-><init>(Landroid/database/Cursor;Le/a/e4/p;)V

    return-object v0
.end method
