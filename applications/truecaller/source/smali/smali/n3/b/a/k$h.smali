.class public Ln3/b/a/k$h;
.super Ln3/b/a/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final c:Ln3/b/a/u;

.field public final synthetic d:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;Ln3/b/a/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$h;->d:Ln3/b/a/k;

    invoke-direct {p0, p1}, Ln3/b/a/k$g;-><init>(Ln3/b/a/k;)V

    .line 2
    iput-object p2, p0, Ln3/b/a/k$h;->c:Ln3/b/a/u;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/b/a/k$h;->c:Ln3/b/a/u;

    .line 2
    iget-object v2, v1, Ln3/b/a/u;->c:Ln3/b/a/u$a;

    .line 3
    iget-wide v3, v2, Ln3/b/a/u$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    iget-boolean v1, v2, Ln3/b/a/u$a;->a:Z

    goto/16 :goto_9

    .line 5
    :cond_1
    iget-object v3, v1, Ln3/b/a/u;->a:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->w(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    const-string v3, "network"

    .line 6
    :try_start_0
    iget-object v7, v1, Ln3/b/a/u;->b:Landroid/location/LocationManager;

    invoke-virtual {v7, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    iget-object v7, v1, Ln3/b/a/u;->b:Landroid/location/LocationManager;

    invoke-virtual {v7, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v3, v6

    .line 8
    :goto_1
    iget-object v7, v1, Ln3/b/a/u;->a:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->w(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "gps"

    .line 9
    :try_start_1
    iget-object v8, v1, Ln3/b/a/u;->b:Landroid/location/LocationManager;

    invoke-virtual {v8, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10
    iget-object v8, v1, Ln3/b/a/u;->b:Landroid/location/LocationManager;

    invoke-virtual {v8, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    :goto_2
    move-object v3, v6

    :cond_5
    if-eqz v3, :cond_c

    .line 12
    iget-object v1, v1, Ln3/b/a/u;->c:Ln3/b/a/u$a;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 14
    sget-object v6, Ln3/b/a/t;->d:Ln3/b/a/t;

    if-nez v6, :cond_6

    .line 15
    new-instance v6, Ln3/b/a/t;

    invoke-direct {v6}, Ln3/b/a/t;-><init>()V

    sput-object v6, Ln3/b/a/t;->d:Ln3/b/a/t;

    .line 16
    :cond_6
    sget-object v11, Ln3/b/a/t;->d:Ln3/b/a/t;

    const-wide/32 v22, 0x5265c00

    sub-long v16, v13, v22

    .line 17
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object v15, v11

    .line 18
    invoke-virtual/range {v15 .. v21}, Ln3/b/a/t;->a(JDD)V

    .line 19
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    move-object v6, v11

    move-wide v7, v13

    move-object v5, v11

    move-wide v11, v15

    invoke-virtual/range {v6 .. v12}, Ln3/b/a/t;->a(JDD)V

    .line 20
    iget v6, v5, Ln3/b/a/t;->c:I

    if-ne v6, v4, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 21
    :goto_3
    iget-wide v7, v5, Ln3/b/a/t;->b:J

    .line 22
    iget-wide v9, v5, Ln3/b/a/t;->a:J

    add-long v16, v13, v22

    .line 23
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object v15, v5

    .line 24
    invoke-virtual/range {v15 .. v21}, Ln3/b/a/t;->a(JDD)V

    .line 25
    iget-wide v11, v5, Ln3/b/a/t;->b:J

    const-wide/16 v15, 0x0

    const-wide/16 v17, -0x1

    cmp-long v3, v7, v17

    if-eqz v3, :cond_b

    cmp-long v3, v9, v17

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    cmp-long v3, v13, v9

    if-lez v3, :cond_9

    add-long/2addr v11, v15

    goto :goto_4

    :cond_9
    cmp-long v3, v13, v7

    if-lez v3, :cond_a

    add-long v11, v9, v15

    goto :goto_4

    :cond_a
    add-long v11, v7, v15

    :goto_4
    const-wide/32 v7, 0xea60

    add-long/2addr v11, v7

    goto :goto_6

    :cond_b
    :goto_5
    const-wide/32 v7, 0x2932e00

    add-long v11, v13, v7

    .line 26
    :goto_6
    iput-boolean v6, v1, Ln3/b/a/u$a;->a:Z

    .line 27
    iput-wide v11, v1, Ln3/b/a/u$a;->b:J

    .line 28
    iget-boolean v1, v2, Ln3/b/a/u$a;->a:Z

    goto :goto_9

    .line 29
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_e

    const/16 v2, 0x16

    if-lt v1, v2, :cond_d

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v5, v4

    :goto_8
    move v1, v5

    :goto_9
    if-eqz v1, :cond_f

    const/4 v4, 0x2

    :cond_f
    return v4
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$h;->d:Ln3/b/a/k;

    invoke-virtual {v0}, Ln3/b/a/k;->C()Z

    return-void
.end method
