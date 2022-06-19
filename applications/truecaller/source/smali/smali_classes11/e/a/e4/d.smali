.class public final synthetic Le/a/e4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/s;


# static fields
.field public static final synthetic a:Le/a/e4/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e4/d;

    invoke-direct {v0}, Le/a/e4/d;-><init>()V

    sput-object v0, Le/a/e4/d;->a:Le/a/e4/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;
    .locals 7

    .line 1
    sget v0, Le/a/e4/w;->x:I

    const-string v0, "telecom"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telecom/TelecomManager;

    const-string v0, "carrier_config"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 4
    :try_start_0
    new-instance v0, Le/a/e4/w;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/e4/w;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/telephony/CarrierConfigManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
