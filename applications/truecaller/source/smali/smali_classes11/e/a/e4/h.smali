.class public final synthetic Le/a/e4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/s;


# static fields
.field public static final synthetic a:Le/a/e4/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e4/h;

    invoke-direct {v0}, Le/a/e4/h;-><init>()V

    sput-object v0, Le/a/e4/h;->a:Le/a/e4/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;
    .locals 2

    .line 1
    sget p2, Le/a/e4/a0;->C:I

    const-string p2, "telecom"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    .line 3
    :try_start_0
    new-instance v0, Le/a/e4/a0;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Le/a/e4/a0;-><init>(Landroid/content/Context;Landroid/telecom/TelecomManager;Landroid/telephony/SubscriptionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
