.class public Le/a/e4/x;
.super Le/a/e4/v;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


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

    const-string p1, "com.lge.internal.telephony.LGGsmAlphabet"

    .line 2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "iccid"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "MarshmallowLg"

    return-object v0
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 1

    .line 1
    new-instance v0, Le/a/e4/n;

    invoke-direct {v0, p1, p0}, Le/a/e4/n;-><init>(Landroid/database/Cursor;Le/a/e4/p;)V

    return-object v0
.end method
