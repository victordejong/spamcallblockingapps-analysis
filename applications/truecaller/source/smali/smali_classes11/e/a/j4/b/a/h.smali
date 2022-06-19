.class public final Le/a/j4/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Landroid/content/SharedPreferences;

.field public static c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public static A(Landroid/content/Context;Le/a/j4/b/b/b;)V
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 2
    iget-object p1, p1, Le/a/b0/k/c;->b:Ljava/lang/String;

    const-string v0, "language"

    .line 3
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    return-void
.end method

.method public static C()Z
    .locals 8

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v0

    const-string v1, "qaForceAds"

    .line 2
    invoke-static {v1}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "adsDisabledUntil"

    .line 4
    invoke-static {v0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Le/a/j4/b/a/h;->p()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public static D(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "languageAuto"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "language"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8
    new-instance v0, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aget-object v1, v1, v2

    invoke-direct {v0, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 10
    :goto_0
    invoke-static {p0, v0}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "global_settings_ver"

    .line 2
    invoke-static {v8, v0}, Le/a/j4/b/a/h;->j(Ljava/lang/String;I)I

    move-result v9

    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ge v9, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/b0/g/a;

    .line 4
    move-object v3, v1

    check-cast v3, Le/a/w1;

    invoke-interface {v3}, Le/a/w1;->s()Le/a/j2;

    move-result-object v10

    const-string v3, "version"

    const-string v4, "7.60"

    .line 5
    invoke-static {v3, v4}, Le/a/j4/b/a/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VERSION_CODE"

    .line 6
    invoke-static {v5, v0}, Le/a/j4/b/a/h;->j(Ljava/lang/String;I)I

    move-result v5

    .line 7
    invoke-interface {v10}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v11

    .line 8
    invoke-interface {v10}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v12

    .line 9
    invoke-interface {v10}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v13

    .line 10
    invoke-interface {v10}, Le/a/j2;->b()Le/a/u3/g;

    const-string v14, "2.99"

    .line 11
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_2

    const-string v14, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 12
    invoke-static {v14}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_2
    const-string v14, "3.0"

    .line 13
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_3

    const-string v14, "clearTCHistory"

    .line 14
    invoke-static {v14, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :cond_3
    const-string v14, "3.32"

    .line 15
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_4

    const/16 v14, 0x64

    const-string v15, "backupBatchSize"

    .line 16
    invoke-interface {v12, v15, v14}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v12, "4.0"

    .line 17
    invoke-virtual {v4, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_5

    const-string v12, "notificationPush"

    .line 18
    invoke-static {v12, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :cond_5
    const-string v12, "4.04"

    .line 19
    invoke-virtual {v4, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_a

    const-string v12, "collaborativeUserTimestamp"

    .line 20
    invoke-static {v12}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 21
    invoke-interface {v10}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v12

    const-string v14, "CALL_FILTER_TOP"

    .line 22
    invoke-static {v14}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "SMS_FILTER_TOP"

    invoke-static {v14}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_1

    :cond_6
    move v14, v0

    goto :goto_2

    :cond_7
    :goto_1
    move v14, v2

    :goto_2
    const-string v15, "CALL_FILTER_UNKNOWN"

    .line 23
    invoke-static {v15}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "SMS_FILTER_UNKNOWN"

    invoke-static {v15}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    move v0, v2

    .line 24
    :cond_9
    invoke-interface {v12, v14}, Le/a/h0/m;->k(Z)V

    .line 25
    invoke-interface {v12, v0}, Le/a/h0/m;->j(Z)V

    :cond_a
    const-string v0, "4.10"

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v12, "wizardStep"

    const-wide/16 v14, 0x0

    if-gez v0, :cond_c

    const-string v0, "profileVerified"

    .line 27
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static/range {p0 .. p0}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 28
    invoke-static {v6, v2}, Le/a/r/t/c;->Da(Landroid/content/Context;Z)V

    goto :goto_3

    .line 29
    :cond_b
    invoke-static {v12, v14, v15}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    :cond_c
    :goto_3
    const-string v0, "4.34"

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v14, "language"

    if-gez v0, :cond_d

    .line 31
    invoke-static {v14}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    sget-object v0, Le/a/j4/b/a/c;->d:Ljava/util/Locale;

    .line 33
    invoke-static {v0}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object v0

    invoke-static {v6, v0}, Le/a/j4/b/a/h;->A(Landroid/content/Context;Le/a/j4/b/b/b;)V

    :cond_d
    const-string v0, "4.40"

    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v15, "hasShownWelcome"

    if-gez v0, :cond_e

    .line 35
    invoke-static {v15, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "countryHash"

    const-string v2, "37e8d09fd4a669e5d4b3337e926b76ce"

    .line 36
    invoke-static {v0, v2}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v0, "5.10"

    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    .line 38
    new-instance v0, Le/a/j4/b/a/f;

    invoke-direct {v0, v6}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v0}, Le/a/j4/b/a/f;->n()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    invoke-virtual {v0}, Le/a/j4/b/a/f;->l()I

    move-result v0

    sub-int/2addr v2, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    int-to-long v7, v2

    const-string v0, "notificationsSeenCount"

    invoke-static {v0, v7, v8}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    const-string v0, "certValidationError"

    .line 40
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "toast"

    .line 41
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "theme_name"

    .line 42
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "toastDuration"

    .line 43
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "FEEDBACK_DISMISSED_COUNT"

    const-wide/16 v7, 0x0

    .line 44
    invoke-static {v0, v7, v8}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    const-string v0, "GOOGLE_REVIEW_DONE"

    .line 45
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "FEEDBACK_LIKES_TRUECALLER"

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 46
    invoke-static {v2, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    .line 47
    invoke-static {v2, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :goto_4
    const-string v2, "HAS_SHARED"

    .line 48
    invoke-static {v2, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_10
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :goto_5
    const-string v0, "5.30"

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    const-string v0, "clipboardSearchEnabled"

    const/4 v2, 0x1

    .line 50
    invoke-interface {v11, v0, v2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    const-string v0, "5.40"

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_12

    const-string v0, "truecaller.data.History.s3db"

    .line 52
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "truecaller.data.CallersPb.s3db"

    .line 53
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_12
    const-string v0, "5.81"

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    const-string v0, "TC.logview.3.11.s3db"

    .line 55
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_13
    const-string v0, "6.03"

    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_16

    const-string v0, "BlockedSms.s3db"

    .line 57
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 58
    invoke-interface {v10}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v0

    const-string v2, "TOP_SPAMMERS_SETTINGS"

    .line 59
    invoke-static {v2}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0, v2}, Le/a/h0/m;->k(Z)V

    const-string v2, "UNKNOWN_SETTINGS"

    .line 60
    invoke-static {v2}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0, v2}, Le/a/h0/m;->j(Z)V

    .line 61
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    invoke-static/range {p0 .. p0}, Le/a/b0/p/h/a;->d(Landroid/content/Context;)V

    :cond_16
    const-string v0, "6.09"

    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1b

    const-string v0, "TC.settings.3.0.beta5"

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 68
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_17

    .line 69
    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v2}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 70
    :cond_17
    instance-of v8, v2, Ljava/lang/Boolean;

    if-eqz v8, :cond_18

    .line 71
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v7, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :goto_9
    move/from16 v18, v9

    goto :goto_a

    .line 72
    :cond_18
    instance-of v8, v2, Ljava/lang/Long;

    if-eqz v8, :cond_19

    .line 73
    check-cast v2, Ljava/lang/Long;

    move/from16 v18, v9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    goto :goto_a

    :cond_19
    move/from16 v18, v9

    .line 74
    instance-of v8, v2, Ljava/lang/Integer;

    if-eqz v8, :cond_1a

    .line 75
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    invoke-static {v7, v8, v9}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    :cond_1a
    :goto_a
    move/from16 v9, v18

    goto :goto_8

    :cond_1b
    move/from16 v18, v9

    const-string v0, "6.17"

    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-gez v0, :cond_1e

    .line 77
    invoke-static {v12}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1c

    const/4 v0, 0x1

    .line 78
    invoke-static {v6, v0}, Le/a/r/t/c;->Da(Landroid/content/Context;Z)V

    :cond_1c
    const-string v0, "truecaller.data.NameSuggestion.s3db"

    .line 79
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 80
    invoke-virtual {v1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->G()Le/a/b0/k/f;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/k/f;->f()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 81
    invoke-static {v0}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object v0

    .line 82
    iget-object v0, v0, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 83
    iget-object v0, v0, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 84
    invoke-static {v14}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_b

    :cond_1d
    const/4 v0, 0x0

    :goto_b
    const-string v1, "languageAuto"

    .line 85
    invoke-static {v1, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 86
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 87
    invoke-interface {v10}, Le/a/j2;->H0()Le/a/h0/t;

    move-result-object v0

    invoke-interface {v0}, Le/a/h0/t;->d()V

    :cond_1e
    const-string v0, "6.21"

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1f

    const-string v0, "truecaller.data.cms.s3db"

    .line 89
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_1f
    const-string v0, "6.24"

    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_20

    .line 91
    invoke-static/range {p0 .. p0}, Le/a/b0/p/h/a;->d(Landroid/content/Context;)V

    :cond_20
    const-string v0, "6.50"

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_22

    const-string v0, "profileAcceptAuto"

    .line 93
    invoke-interface {v13, v0}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "0"

    .line 94
    invoke-interface {v13, v0, v1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v0, "blockCallMode"

    .line 95
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/g0;->K(Ljava/lang/String;)I

    move-result v1

    const-string v2, "blockCallMethod"

    .line 96
    invoke-interface {v11, v2, v1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    .line 97
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_22
    const-string v0, "7.00"

    .line 98
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_23

    const-string v0, "DISPLAY_CALL_TAB"

    .line 99
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_23
    const-string v0, "7.01"

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_24

    const-string v0, "CHECK_DEVICE_ID"

    .line 101
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_24
    const-string v0, "7.30"

    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_25

    const-string v0, "adKeywords.db"

    .line 103
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 104
    invoke-static {v15, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :cond_25
    const-string v0, "7.50"

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_26

    const-string v0, "INMOBI_ID"

    .line 106
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "INVITE_PEOPLE_LAST_DISMISSED"

    .line 107
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "INVITE_PEOPLE_DISMISSED"

    .line 108
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "clearNativeCallLog"

    .line 109
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "nudgeEnableTopSpammersCounter"

    .line 110
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "blockHintCounter"

    .line 111
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "updatePhonebookJobLastRun"

    .line 112
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "linkedinLoggedIn"

    .line 113
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "firstSearchDone"

    .line 114
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "counterLoyalUser"

    .line 115
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v1, "dualSimSlotId"

    .line 116
    invoke-static {v1}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v1, "dualSimProviderField"

    .line 117
    invoke-static {v1}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v1, "dualSimProviderIndexing"

    .line 118
    invoke-static {v1}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v1, "ui_lang"

    .line 119
    invoke-static {v1}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "click_item_action_dialer"

    .line 121
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "multi_sim_call_log_sim_field"

    .line 122
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "multi_sim_call_log_sim_indexing"

    .line 123
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "selected_theme"

    .line 124
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "has_cleared_using_backspace_count"

    .line 125
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "hasShownRatingDialog"

    .line 126
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "ratingDialogDate"

    .line 127
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "hasShownInviteDialog"

    .line 128
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "inviteDialogDate"

    .line 129
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "hasPlusOned"

    .line 130
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "plusOneDialogDate"

    .line 131
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "force_show_rate"

    .line 132
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "force_show_invite"

    .line 133
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "force_show_google_plus"

    .line 134
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "truecaller.data.CommonConnectionsListDao.s3db"

    .line 135
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "truecaller.data.Whitelist.s3db"

    .line 136
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_26
    const/16 v0, 0x1b3

    if-gt v5, v0, :cond_27

    const-string v0, "12.21.6"

    .line 137
    invoke-static {v3, v0}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "truecaller.data.LogCounterEvent.s3db"

    .line 138
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "truecaller.data.LogEvent.s3db"

    .line 139
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "batchLoggingBatchId"

    .line 140
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "batchLoggingBatchSize"

    .line 141
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "checkIfLogEventCountersLastRun"

    .line 142
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "key_show_ringtone_onboarding"

    .line 143
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "enhancedNotificationsEnabled"

    const/4 v1, 0x1

    .line 144
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "callLogTapBehavior"

    const-string v1, "call"

    .line 145
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastCallMadeWithTcTime"

    .line 146
    invoke-interface {v11, v0}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    const-string v0, "lastDialerPromotionTime"

    .line 147
    invoke-interface {v11, v0}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    const-string v0, "dialerTipsShownCount"

    .line 148
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_27
    const/16 v0, 0x1c2

    if-ge v5, v0, :cond_28

    .line 149
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    const-string v1, "showMissedCallsNotifications"

    invoke-static {v1, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "showAlternativeMissedCallNotification"

    .line 151
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "removeDoubleMissedCallNotifications"

    .line 152
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_28
    const/16 v0, 0x1c6

    if-ge v5, v0, :cond_29

    const-string v0, "showMissedCallReminders"

    const/4 v1, 0x1

    .line 153
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :cond_29
    const/16 v0, 0x514

    if-ge v5, v0, :cond_2a

    const-string v0, "blockUpdateLastPressed"

    .line 154
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "blockUpdateLastPerformed"

    .line 155
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "blockUpdateCount"

    .line 156
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "blockUpdateCountLastIncremented"

    .line 157
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "regionCode"

    .line 158
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "TC_SEARCH_TIMESTAMP"

    .line 159
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "callerIdTheme"

    .line 160
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    .line 161
    invoke-static/range {p0 .. p0}, Le/a/l0/o;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 162
    invoke-interface {v10}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0}, Le/a/l0/c;->t()V

    :cond_2a
    const/16 v0, 0x522

    if-ge v5, v0, :cond_2b

    const-string v0, "last_successful_availability_update"

    .line 163
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "last_successful_time_zone_update"

    .line 164
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_busy_reason"

    .line 165
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_2b
    const/16 v0, 0x526

    if-ge v5, v0, :cond_2c

    const/4 v0, 0x1

    .line 166
    invoke-static {v6, v0}, Lcom/truecaller/service/SyncPhoneBookService;->a(Landroid/content/Context;Z)V

    :cond_2c
    const/16 v0, 0x537

    if-ge v5, v0, :cond_2e

    const-string v1, "availability_disabled"

    .line 167
    invoke-interface {v13, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "flash_disabled"

    invoke-interface {v13, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "missed_calls.db"

    .line 168
    invoke-virtual {v6, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2d
    const-string v1, "missed_calls.db-journal"

    .line 171
    invoke-virtual {v6, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2e
    const/4 v1, 0x2

    if-eq v5, v0, :cond_2f

    const/16 v0, 0x538

    if-ne v5, v0, :cond_31

    :cond_2f
    const-string v0, "afterCallWarnFriends"

    const-string v2, "afterCallPromoteTcCounter"

    .line 174
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_31

    .line 175
    aget-object v3, v0, v2

    .line 176
    :try_start_0
    sget-object v4, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const/high16 v7, -0x80000000

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_30

    .line 177
    sget-object v7, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    int-to-long v8, v4

    invoke-interface {v7, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    const/16 v0, 0x53c

    if-gt v5, v0, :cond_32

    const-string v0, "blockCount"

    .line 178
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_32
    const/16 v0, 0x54e

    if-gt v5, v0, :cond_33

    const-string v0, "FEEDBACK_PLUS_ONE_FIRST_CHECKED"

    .line 179
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "FEEDBACK_PLUS_ONE_DONE"

    .line 180
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "FEEDBACK_PLUS_ONE_DISMISS_COUNT"

    .line 181
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_33
    const/4 v0, 0x1

    move/from16 v7, v18

    if-ge v7, v0, :cond_34

    .line 182
    new-instance v2, Le/a/j4/b/a/j;

    invoke-direct {v2, v6}, Le/a/j4/b/a/j;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v2, v0}, Le/a/j4/b/a/a;->c(Z)V

    const-string v0, "PROFILE_MANUALLY_DEACTIVATED"

    .line 184
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "updatePhonebookTimestamp"

    .line 185
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "updatePhonebookEnabled"

    .line 186
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "syncPictures"

    .line 187
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "syncPicturesOverwrite"

    .line 188
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "facebookFriendsTimestamp"

    .line 189
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "linkedinFriendsTimestamp"

    .line 190
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "googleFriendsTimestamp"

    .line 191
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "twitterFriendsTimestamp"

    .line 192
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "whatsNewDialogShownTimestamp"

    .line 193
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "whatsNewDialogShownTimes"

    .line 194
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_has_shown_default_dialer_sticky"

    .line 195
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "showDefaultDialerPopupAfterDial"

    .line 196
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "forceDefaultDialerPopup"

    .line 197
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_has_shown_truecaller_notification"

    .line 198
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_force_show_truecaller_notification"

    .line 199
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_truecaller_notification_click_count"

    .line 200
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "key_has_shown_identify_unknown_senders"

    .line 201
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "last_banner_dismiss_timestamp"

    .line 202
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "TC.friend.2.90.s3db"

    .line 203
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "truecaller.data.automataStorage.s3db"

    .line 204
    invoke-virtual {v6, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "featureDisableOnboarding"

    .line 205
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "dialerPromotionStartTime"

    .line 206
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "callerIdHintCount"

    .line 207
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_34
    if-ge v7, v1, :cond_35

    const-string v0, "suppressAftercall"

    .line 208
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "callerIdDialerPromoFirstShow"

    .line 209
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "callerIdDialerPromoLastShow"

    .line 210
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_35
    const/4 v0, 0x3

    if-ge v7, v0, :cond_36

    const-string v0, "referralsDisabledUntil"

    .line 211
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    :cond_36
    const/4 v0, 0x5

    if-ge v7, v0, :cond_37

    const-string v1, "shortcutsInboxShownTimes"

    .line 212
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    const-string v1, "general_requestPinMessagesShortcutShown"

    .line 213
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    :cond_37
    const/4 v1, 0x6

    if-ge v7, v1, :cond_38

    const-string v1, "HAS_INVITED"

    .line 214
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    :cond_38
    const/4 v1, 0x7

    if-ge v7, v1, :cond_39

    const-string v1, "Promo{Referral}DismissCount"

    .line 215
    invoke-static {v1}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v2

    const-string v3, "PromoReferralDismissCount"

    invoke-static {v3, v2}, Le/a/n/g0;->x0(Ljava/lang/String;I)V

    const-string v2, "Promo{Defaultsms}DismissCount"

    .line 216
    invoke-static {v2}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v3

    const-string v4, "PromoDefaultsmsDismissCount"

    invoke-static {v4, v3}, Le/a/n/g0;->x0(Ljava/lang/String;I)V

    const-string v3, "Promo{Buypro}DismissCount"

    .line 217
    invoke-static {v3}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v4

    const-string v5, "PromoBuyproDismissCount"

    invoke-static {v5, v4}, Le/a/n/g0;->x0(Ljava/lang/String;I)V

    .line 218
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    .line 219
    invoke-static {v2}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    .line 220
    invoke-static {v3}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    const-string v1, "home_screen_banner_close_count"

    .line 221
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    :cond_39
    const/16 v1, 0x8

    if-ge v7, v1, :cond_3a

    const-string v1, "lastDialerPromotionInteractionTime_onboarding"

    .line 222
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastDialerPromotionInteractionTime_frequentlyCalled"

    .line 223
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastDialerPromotionInteractionTime_missed"

    .line 224
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastDialerPromotionInteractionTime_outgoingUnanswered"

    .line 225
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastDialerPromotionInteractionTime_incoming"

    .line 226
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_3a
    const/16 v1, 0x9

    if-ge v7, v1, :cond_3b

    .line 227
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->f()Le/a/n/g;

    move-result-object v1

    check-cast v1, Le/a/t1$c;

    .line 228
    iget-object v1, v1, Le/a/t1$c;->t:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/n/m;

    .line 229
    invoke-interface {v1}, Le/a/n/m;->l()V

    :cond_3b
    const/16 v1, 0xa

    if-ge v7, v1, :cond_3c

    const-string v1, "profileNumberBackEnd"

    .line 230
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_3c
    const/16 v1, 0xb

    if-ge v7, v1, :cond_3e

    const-string v1, "wizard_StartPage"

    .line 231
    invoke-static {v1}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Page_CallVerification"

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "Page_SmsVerification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 233
    :cond_3d
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    :cond_3e
    const/16 v1, 0xc

    if-ge v7, v1, :cond_3f

    const-string v1, "featureAdUnifiedSearchHistory"

    .line 234
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v1, "featureAdUnifiedBlock"

    .line 235
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v1, "featureAdUnifiedCallLog"

    .line 236
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v1, "featureAdUnifiedInbox"

    .line 237
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_3f
    const/16 v1, 0xd

    if-ge v7, v1, :cond_40

    const-string v1, "presenceSettingNeedSync"

    .line 238
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_40
    const/16 v1, 0xf

    if-ge v7, v1, :cond_41

    .line 239
    invoke-static {}, Lcom/truecaller/service/t9/RefreshT9MappingWorker;->n()V

    :cond_41
    const/16 v1, 0x10

    if-ge v7, v1, :cond_42

    const-string v1, "featureBusinessSuggestion"

    .line 240
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_42
    const/16 v1, 0x11

    if-ge v7, v1, :cond_43

    const-string v1, "HeartBeatLastTime"

    .line 241
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_43
    const/16 v1, 0x12

    if-ge v7, v1, :cond_44

    const-string v1, "filter_scheduledFilterSyncingEnabled"

    .line 242
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v1, "filter_settingsLastVisitTimestamp"

    .line 243
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_44
    const/16 v1, 0x13

    if-ge v7, v1, :cond_45

    const-string v1, "whatsAppCallsEnabled"

    const/4 v2, 0x1

    .line 244
    invoke-interface {v11, v1, v2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    :cond_45
    const/16 v1, 0x14

    if-ge v7, v1, :cond_46

    const-string v1, "filter_filterJustActivated"

    .line 245
    invoke-interface {v13, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_46
    const/16 v1, 0x15

    if-ge v7, v1, :cond_47

    const-string v1, "call_counter"

    .line 246
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastCallMeBackTime"

    .line 247
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "MsgMastSyncTime"

    .line 248
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_47
    const/16 v1, 0x17

    if-ge v7, v1, :cond_48

    const-string v1, "backupWhatsNewShown"

    .line 249
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_48
    const/16 v1, 0x18

    if-ge v7, v1, :cond_49

    const-string v1, "featureShowOptInReadMore"

    .line 250
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_49
    const/16 v1, 0x19

    if-ge v7, v1, :cond_4a

    const-string v1, "debugLoggingUploadTriggered"

    .line 251
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "lastTracingFeatureTime"

    .line 252
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_4a
    const/16 v1, 0x1a

    if-ge v7, v1, :cond_4b

    const-string v1, "initializeJobLastRun"

    .line 253
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_4b
    const/16 v1, 0x1b

    if-ge v7, v1, :cond_4c

    const-string v1, "EmojiBarTipWasShown"

    .line 254
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "EmojiBarEverUsed"

    .line 255
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "ConversationScreenOpenCount"

    .line 256
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_4c
    const/16 v1, 0x1c

    if-ge v7, v1, :cond_4e

    const-string v1, "backupNeedsSync"

    .line 257
    invoke-static {v1}, Le/a/j4/b/a/h;->h(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "backupSyncValue"

    if-eqz v2, :cond_4d

    .line 258
    invoke-static {v3}, Le/a/j4/b/a/h;->h(Ljava/lang/String;)Z

    move-result v2

    .line 259
    invoke-static {v2, v6}, Lcom/truecaller/ugc/EnhancedSearchStateWorker;->n(ZLandroid/content/Context;)V

    .line 260
    :cond_4d
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    .line 261
    invoke-static {v3}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_4e
    const/16 v1, 0x1d

    if-ge v7, v1, :cond_4f

    const-string v1, "UNUSED_DIRECTORIES_DELETED_ON_UPGRADE"

    .line 262
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_4f
    const/16 v1, 0x1e

    if-ge v7, v1, :cond_50

    .line 263
    invoke-static/range {p0 .. p0}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    const-string v1, "filter_filtersRestored"

    .line 264
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_50
    const/16 v1, 0x1f

    if-ge v7, v1, :cond_51

    const-string v1, "imTooltipShown"

    .line 265
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_51
    const/16 v1, 0x20

    if-ge v7, v1, :cond_52

    .line 266
    invoke-interface {v10}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v2}, Le/a/a/k/a/a/m;->d(ZZ)V

    :cond_52
    const/16 v1, 0x21

    if-ge v7, v1, :cond_53

    const-string v1, "tcQuick.db"

    .line 267
    invoke-virtual {v6, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v1, "tcInstant.db"

    .line 268
    invoke-virtual {v6, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_53
    const/16 v1, 0x22

    if-ge v7, v1, :cond_54

    .line 269
    invoke-interface {v10}, Le/a/j2;->H4()Le/a/l/p2/o0;

    move-result-object v1

    invoke-interface {v1}, Le/a/l/p2/o0;->c()V

    :cond_54
    const/16 v1, 0x23

    if-ge v7, v1, :cond_55

    .line 270
    invoke-static/range {p0 .. p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "ContactsPremiumStatusFetchWorkAction"

    .line 271
    invoke-static {v1, v2, v6}, Le/a/y2/q/c;->a(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;)Ln3/m0/s;

    :cond_55
    const/16 v1, 0x25

    if-ge v7, v1, :cond_56

    .line 272
    invoke-interface {v10}, Le/a/j2;->S0()Le/a/a0/i;

    move-result-object v1

    invoke-interface {v1}, Le/a/a0/i;->b()V

    :cond_56
    const/16 v1, 0x26

    if-ge v7, v1, :cond_57

    const-string v1, "key_call_alert_promo_shown"

    .line 273
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_57
    const/16 v1, 0x27

    if-ge v7, v1, :cond_58

    const-string v1, "contactListPromoteBackupCount"

    .line 274
    invoke-interface {v11, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    const-string v1, "restoreOnboardingShown"

    const/4 v2, 0x1

    .line 275
    invoke-interface {v13, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_58
    const/16 v1, 0x29

    if-ge v7, v1, :cond_59

    const-string v1, "showDefaultSmsScreen"

    .line 276
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "imPromo"

    .line 277
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_59
    const/16 v1, 0x2a

    if-ge v7, v1, :cond_5a

    const-string v1, "imGifDisplayType"

    .line 278
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v1, "imGifPreviewType"

    .line 279
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_5a
    const/16 v1, 0x2b

    if-ge v7, v1, :cond_5b

    const-string v1, "voiceClipOnboardingTIpShown"

    .line 280
    invoke-static {v1}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_5b
    const/16 v1, 0x2c

    if-ge v7, v1, :cond_5c

    .line 281
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    :cond_5c
    const/16 v0, 0x2d

    if-ge v7, v0, :cond_5d

    :try_start_1
    const-string v0, "jobscheduler"

    .line 282
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5d
    const/16 v0, 0x2e

    if-ge v7, v0, :cond_5e

    const-string v0, "afterCall"

    .line 283
    invoke-static {v0}, Le/a/j4/b/a/h;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "afterCallForPbContacts"

    .line 284
    invoke-interface {v11, v1, v0}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    :cond_5e
    const/16 v0, 0x31

    const-string v8, "deleteBackupDuplicates"

    const/4 v9, 0x4

    if-ge v7, v0, :cond_5f

    const/4 v0, 0x1

    .line 285
    invoke-interface {v13, v8, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    :cond_5f
    const/16 v0, 0x32

    if-ge v7, v0, :cond_60

    const-string v0, "subscriptionStatusChangedIsFreeTrial"

    .line 287
    invoke-interface {v13, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "qaEngagementRewardEnv"

    .line 288
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "qa_engagement_reward_state"

    .line 289
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "EngagementRewards"

    const/4 v1, 0x0

    .line 290
    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_60
    const/16 v0, 0x33

    if-ge v7, v0, :cond_61

    const-string v0, "fcmRegisteredOnServer"

    .line 291
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_61
    const/16 v0, 0x34

    if-ge v7, v0, :cond_62

    const-string v0, "alwaysDownloadImages"

    .line 292
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_62
    const/16 v0, 0x35

    const-string v1, "context"

    if-ge v7, v0, :cond_63

    .line 293
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v18, Lq3/a/h1;->a:Lq3/a/h1;

    .line 295
    sget-object v19, Lq3/a/t0;->d:Lq3/a/g0;

    const/16 v20, 0x0

    .line 296
    new-instance v0, Le/a/o5/b2/a;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Le/a/o5/b2/a;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v23}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_63
    const/16 v0, 0x36

    if-ge v7, v0, :cond_64

    const-string v0, "pendingSpamProtectionOffNotificationsCount"

    .line 297
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "latestSpamProtectionOffNotificationShowtime"

    .line 298
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_64
    const/16 v0, 0x38

    if-ge v7, v0, :cond_65

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 300
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v16

    .line 301
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v2

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    goto :goto_d

    :cond_65
    move-object/from16 v11, v16

    :goto_d
    const/16 v0, 0x39

    if-ge v7, v0, :cond_66

    .line 303
    invoke-interface {v10}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Le/a/a/i0;->q2(Z)V

    goto :goto_e

    :cond_66
    const/4 v2, 0x1

    :goto_e
    const/16 v0, 0x3a

    if-ge v7, v0, :cond_67

    const-string v0, "translatedAtLeastOnce"

    .line 304
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_67
    const/16 v0, 0x3b

    if-ge v7, v0, :cond_68

    .line 305
    invoke-interface {v13, v8, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    :cond_68
    const/16 v0, 0x3c

    if-ge v7, v0, :cond_69

    .line 307
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-static/range {p0 .. p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 309
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "FetchSearchWarningsWorkAction"

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    :cond_69
    const/16 v0, 0x3d

    if-ge v7, v0, :cond_6a

    const-string v0, "groupChatsUnavailablePromo"

    .line 310
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_6a
    const/16 v0, 0x3e

    if-ge v7, v0, :cond_6b

    const-string v0, "messageSignature"

    .line 311
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_6b
    const/16 v0, 0x3f

    if-ge v7, v0, :cond_6c

    const-string v0, "hasCompletedTcxOnboarding"

    .line 312
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "tcxPromoDismissCount"

    .line 313
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "tcxPromoDismissDate"

    .line 314
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "tcxPromoImpressionCount"

    .line 315
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "tcxOnboardingTooltipId"

    .line 316
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "tcxOnboardingTooltipDismissTime"

    .line 317
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_6c
    const/16 v0, 0x40

    if-ge v7, v0, :cond_6d

    .line 318
    invoke-interface {v10}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    invoke-interface {v0}, Le/a/a/k/a/a/m;->p()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    :cond_6d
    const/16 v0, 0x41

    if-ge v7, v0, :cond_6e

    .line 319
    new-instance v0, Le/a/j4/b/a/g;

    invoke-direct {v0, v6}, Le/a/j4/b/a/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/j4/b/a/g;->f(I)V

    :cond_6e
    const/16 v0, 0x42

    if-ge v7, v0, :cond_6f

    const-string v0, "showAfterCallForPBContacts"

    .line 320
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_6f
    const/16 v0, 0x43

    if-ge v7, v0, :cond_70

    .line 321
    invoke-static {}, Lcom/truecaller/service/t9/RefreshT9MappingWorker;->n()V

    :cond_70
    const/16 v0, 0x44

    if-ge v7, v0, :cond_71

    const/4 v0, 0x1

    .line 322
    invoke-interface {v13, v8, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    goto :goto_f

    :cond_71
    const/4 v0, 0x1

    :goto_f
    const/16 v1, 0x45

    if-ge v7, v1, :cond_72

    .line 324
    invoke-interface {v13, v8, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 326
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v10}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Le/a/a/g/m;->V(ZLjava/util/Set;)V

    goto :goto_10

    :cond_72
    const/4 v2, 0x0

    :goto_10
    const/16 v0, 0x46

    if-ge v7, v0, :cond_73

    const-string v0, "messageLinksMigrated"

    .line 329
    invoke-interface {v13, v0, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_73
    const/16 v0, 0x47

    if-ge v7, v0, :cond_74

    const-string v0, "getUrlSpamScoreThreshold"

    .line 330
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "whitelisted_urls.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    :cond_74
    const/16 v0, 0x48

    if-ge v7, v0, :cond_76

    .line 332
    invoke-interface {v10}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    invoke-interface {v0}, Le/a/a/i0;->y()I

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "manualCleanupSpamPeriod"

    .line 333
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    .line 334
    :cond_75
    invoke-interface {v10}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    invoke-interface {v0}, Le/a/a/i0;->R1()I

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "manualCleanupOtpPeriod"

    .line 335
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_76
    const/16 v0, 0x49

    if-ge v7, v0, :cond_77

    const-string v0, "notDefaultSmsBadgeShown"

    .line 336
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_77
    const/16 v0, 0x4a

    if-ge v7, v0, :cond_78

    const-string v0, "hasTruedialerIntegration"

    .line 337
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_78
    const/16 v0, 0x4b

    if-ge v7, v0, :cond_79

    const-string v0, "key_add_account_sticky_times"

    .line 338
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "key_add_account_sticky_last_time"

    .line 339
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_79
    const/16 v0, 0x4e

    if-ge v7, v0, :cond_7a

    const-string v0, "messagesShortcutInstalled"

    const/4 v1, 0x1

    .line 340
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    :cond_7a
    const/16 v0, 0x4f

    if-ge v7, v0, :cond_7b

    const-string v0, "historyMessagesTcYMigrated"

    .line 341
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const/16 v0, 0x4c

    if-lt v7, v0, :cond_7b

    .line 342
    invoke-interface {v10}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->g1(Z)V

    :cond_7b
    const/16 v0, 0x50

    if-ge v7, v0, :cond_7c

    const-string v0, "scheduleSmsPromo"

    .line 343
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "featurePromoSpamOffCount"

    .line 344
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_7c
    const/16 v0, 0x51

    if-ge v7, v0, :cond_7d

    const-string v0, "mdauPromoShownTimes"

    .line 345
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    const-string v0, "mdauPromoShownTimestamp"

    .line 346
    invoke-static {v0}, Le/a/j4/b/a/h;->v(Ljava/lang/String;)V

    :cond_7d
    const/16 v0, 0x52

    if-ge v7, v0, :cond_7e

    .line 347
    invoke-interface {v10}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->H(Z)V

    :cond_7e
    const-wide/16 v0, 0x52

    move-object/from16 v2, v17

    .line 348
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Le/a/j4/b/a/h;->a:Z

    .line 2
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;J)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Le/a/j4/b/a/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "truecaller.alarm.notification."

    const-string v1, ".fired"

    .line 1
    invoke-static {v0, p0, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "truecaller.alarm.notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static j(Ljava/lang/String;I)I
    .locals 3

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    int-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static k(Landroid/content/Context;)I
    .locals 3

    const-string v0, "dialpad_feedback_index_str"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "-1"

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "t9_lang"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "tc.settings"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    .line 2
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    .line 5
    invoke-interface {v3}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v4

    const-string v5, "defaultsLoaded"

    .line 6
    invoke-static {v5}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-static/range {p0 .. p0}, Le/a/j4/b/a/h;->E(Landroid/content/Context;)V

    return-void

    :cond_0
    const-wide/32 v6, 0x12a18e

    const-string v8, "VERSION_CODE"

    .line 8
    invoke-static {v8, v6, v7}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 9
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "osVersion"

    invoke-static {v7, v6}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x52

    const-string v8, "global_settings_ver"

    .line 10
    invoke-static {v8, v6, v7}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "key_init_timestamp"

    invoke-interface {v4, v8, v6, v7}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    const-string v6, "clipboardSearchEnabled"

    const/4 v7, 0x1

    .line 12
    invoke-interface {v0, v6, v7}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "afterCall"

    .line 13
    invoke-interface {v0, v6, v7}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "afterCallForPbContacts"

    .line 14
    invoke-interface {v0, v6, v7}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "notificationPush"

    .line 15
    invoke-static {v0, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 16
    sget-object v0, Le/a/j4/b/a/c;->d:Ljava/util/Locale;

    .line 17
    invoke-static {v0}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object v0

    invoke-static {v1, v0}, Le/a/j4/b/a/h;->A(Landroid/content/Context;Le/a/j4/b/b/b;)V

    const-string v0, "clearTCHistory"

    .line 18
    invoke-static {v0, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const/16 v0, 0x64

    const-string v6, "backupBatchSize"

    .line 19
    invoke-interface {v4, v6, v0}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    const-string v0, "countryHash"

    const-string v6, "37e8d09fd4a669e5d4b3337e926b76ce"

    .line 20
    invoke-static {v0, v6}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "collaborativeUserTimestamp"

    .line 21
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    const/16 v0, 0x1e

    const-string v6, "whatsNewDialogShownRevision"

    .line 22
    invoke-interface {v4, v6, v0}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    add-long/2addr v8, v10

    const-string v0, "addPhotoBadgeTimestamp"

    invoke-static {v0, v8, v9}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    const-string v0, "languageAuto"

    .line 24
    invoke-static {v0, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "enhancedNotificationsEnabled"

    .line 25
    invoke-static {v0, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "showMissedCallsNotifications"

    .line 26
    invoke-static {v0, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v0, "callLogTapBehavior"

    const-string v4, "call"

    .line 27
    invoke-static {v0, v4}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "showMissedCallReminders"

    .line 28
    invoke-static {v0, v2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 29
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-string v4, "TC.settings.3.0.beta5.s3db"

    .line 30
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/4 v8, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v1, v4, v2, v8}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v10, "preferences"

    const-string v0, "key"

    const-string v9, "value"

    const-string v11, "type"

    .line 34
    filled-new-array {v0, v9, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, v17

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 35
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v10, 0x2

    .line 38
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 39
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v11, v10, :cond_5

    const/4 v0, 0x4

    if-eq v11, v0, :cond_4

    const/16 v0, 0x8

    if-eq v11, v0, :cond_3

    const/16 v0, 0x10

    if-eq v11, v0, :cond_2

    const/16 v0, 0x20

    if-eq v11, v0, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-interface {v6, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-interface {v6, v9, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 43
    :cond_4
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 44
    :cond_5
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v10, v0

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 45
    :try_start_3
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to read value with key "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from DB prefs"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v10}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_1
    :try_start_4
    invoke-static {v12}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    goto :goto_0

    :goto_2
    invoke-static {v12}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    .line 47
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 51
    invoke-virtual {v1, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 52
    invoke-static/range {p0 .. p0}, Le/a/j4/b/a/h;->E(Landroid/content/Context;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    .line 53
    :goto_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v8, :cond_7

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v17, :cond_8

    .line 55
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    :cond_8
    invoke-virtual {v1, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 57
    invoke-static/range {p0 .. p0}, Le/a/j4/b/a/h;->E(Landroid/content/Context;)V

    .line 58
    throw v0

    .line 59
    :cond_9
    :goto_4
    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    invoke-interface {v0, v7}, Le/a/f/b;->o(Z)V

    .line 60
    invoke-static {v5, v7}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static p()Z
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->v()Le/a/c3/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/buildinfo/BuildName;->toBuildName(Ljava/lang/String;)Lcom/truecaller/buildinfo/BuildName;

    move-result-object v0

    sget-object v1, Lcom/truecaller/buildinfo/BuildName;->WILEYFOX:Lcom/truecaller/buildinfo/BuildName;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "featureAvailability"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "availability_disabled"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static r(Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "featureFlash"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "flash_disabled"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    sget-boolean p0, Le/a/j4/b/a/h;->a:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    sget-boolean p0, Le/a/j4/b/a/h;->a:Z

    if-eqz p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    return-void
.end method

.method public static w(Ljava/lang/String;J)V
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2
    sget-boolean p0, Le/a/j4/b/a/h;->a:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    sget-boolean p0, Le/a/j4/b/a/h;->a:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    return-void
.end method

.method public static y(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    sget-boolean p0, Le/a/j4/b/a/h;->a:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    return-void
.end method

.method public static z(Ljava/lang/String;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "truecaller.alarm.notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 3
    invoke-static {p0}, Le/a/j4/b/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method
