.class public Le/a/e4/d0;
.super Le/a/e4/r;
.source "SourceFile"


# instance fields
.field public final k:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/e4/r;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final G()Lcom/truecaller/multisim/SimInfo;
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto :goto_0

    :catch_0
    move-object v9, v0

    .line 2
    :goto_0
    :try_start_1
    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v1

    goto :goto_1

    :catch_1
    move-object v10, v0

    .line 3
    :goto_1
    :try_start_2
    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-object v11, v0

    .line 4
    new-instance v0, Lcom/truecaller/multisim/SimInfo;

    const/4 v3, 0x0

    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    .line 6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    .line 9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v12

    const-string v4, "-1"

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/truecaller/multisim/SimInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Single"

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/multisim/SimInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/e4/d0;->G()Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/truecaller/multisim/SimInfo;
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/e4/d0;->G()Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/lang/String;)Le/a/e4/i;
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    new-instance v0, Le/a/e4/j;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-direct {v0, p1}, Le/a/e4/j;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public k(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p1, "-1"

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e4/d0;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/e4/d0;->G()Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    return-object p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p1, "-1"

    return-object p1
.end method
