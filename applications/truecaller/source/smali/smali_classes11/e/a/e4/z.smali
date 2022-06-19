.class public Le/a/e4/z;
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

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "iccid"

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "-1"

    .line 1
    invoke-virtual {p0, v0}, Le/a/e4/z;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "MarshmallowYu"

    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/e4/t;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/multisim/SimInfo;

    .line 2
    iget-object v2, v1, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 1

    .line 1
    new-instance v0, Le/a/e4/n;

    invoke-direct {v0, p1, p0}, Le/a/e4/n;-><init>(Landroid/database/Cursor;Le/a/e4/p;)V

    return-object v0
.end method
