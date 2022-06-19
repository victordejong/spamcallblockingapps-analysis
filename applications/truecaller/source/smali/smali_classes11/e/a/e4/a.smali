.class public final synthetic Le/a/e4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/s;


# static fields
.field public static final synthetic a:Le/a/e4/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e4/a;

    invoke-direct {v0}, Le/a/e4/a;-><init>()V

    sput-object v0, Le/a/e4/a;->a:Le/a/e4/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;
    .locals 3

    .line 1
    sget v0, Le/a/e4/t;->s:I

    const-string v0, "telecom"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 3
    :try_start_0
    new-instance v1, Le/a/e4/t;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2, v0}, Le/a/e4/t;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
