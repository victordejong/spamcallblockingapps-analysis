.class public final Le/a/i/f0/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/j/c;


# instance fields
.field public final a:Le/m/e/k;

.field public b:Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/j/d;->c:Le/a/u3/g;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/i/f0/j/d;->a:Le/m/e/k;

    return-void
.end method

.method public static c(Le/a/i/f0/j/d;Ljava/lang/String;Ljava/lang/String;DDZI)Le/a/i/l;
    .locals 11

    and-int/lit8 v0, p8, 0x2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, p3

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p5

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    .line 1
    :goto_2
    new-instance v0, Le/a/i/l;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Le/a/i/l;-><init>(Ljava/lang/String;Ljava/lang/String;DDZ)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/j/d;->c:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->R2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xc7

    aget-object v3, v2, v3

    invoke-virtual {v1, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Le/a/i/f0/j/d;->c:Le/a/u3/g;

    .line 5
    iget-object v1, v0, Le/a/u3/g;->L2:Le/a/u3/g$a;

    const/16 v3, 0xc1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 6
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/i/f0/j/d;->b:Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 8
    :try_start_0
    iget-object v1, p0, Le/a/i/f0/j/d;->a:Le/m/e/k;

    const-class v4, Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;

    invoke-virtual {v1, v0, v4}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;

    iput-object v0, p0, Le/a/i/f0/j/d;->b:Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Le/a/i/f0/j/d;->b:Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/truecaller/ads/provider/adunitid/AdUnitIdData;->getAdUnitIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/truecaller/ads/provider/adunitid/AdUnitId;

    invoke-virtual {v4}, Lcom/truecaller/ads/provider/adunitid/AdUnitId;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/truecaller/ads/provider/adunitid/AdUnitId;

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/ads/provider/adunitid/AdUnitId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Le/a/i/f0/j/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/truecaller/ads/provider/adunitid/AdUnitId;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {p0, p1}, Le/a/i/f0/j/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Le/a/i/f0/j/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public b(Lcom/truecaller/ads/provider/adunitid/PriceFloor;Ljava/lang/String;)Le/a/i/l;
    .locals 9

    const-string p1, "key"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Le/a/i/f0/j/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const-string v2, "1"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Le/a/i/f0/j/d;->c(Le/a/i/f0/j/d;Ljava/lang/String;Ljava/lang/String;DDZI)Le/a/i/l;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "numberOrNameSearchAdUnitId"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "afterCallCachingAdUnitId"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*ACS*Cached*GPS"

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "afterCallUnifiedAdUnitId"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*ACS*Unified*GPS"

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "promotionMsgAdUnitId"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Promotions*Unified*GPS"

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "inboxAdUnitId"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Inbox_1*Native*GPS"

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "blockAdUnitId"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Block*Native*GPS"

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "notificationAdUnitId"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Notifications*Native*GPS"

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "afterCallOfflineToOnlineAdUnitId"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*ACS*Unified*GPS_Offline_2"

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "blockUpdateAdUnitId"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Block_Update_2*Native*GPS"

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "callDetailsLargeUnifiedAdUnitId"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Detailed_view_2*Unified*GPS"

    goto :goto_1

    :sswitch_a
    const-string v0, "blockUnifiedAdUnitId"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Block*Unified*GPS"

    goto :goto_1

    :sswitch_b
    const-string v0, "historyAdUnitId"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    const-string p1, "/43067329/A*Search_history*Native*GPS"

    goto :goto_1

    :sswitch_c
    const-string v0, "afterCallOfflineAdUnitId"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*ACS*Unified*GPS_Offline"

    goto :goto_1

    :sswitch_d
    const-string v0, "fullscreenAfterCallAdUnitId"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*FACS*Unified*GPS"

    goto :goto_1

    :sswitch_e
    const-string v0, "contactsAdUnitId"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Contacts*Native*GPS"

    goto :goto_1

    :sswitch_f
    const-string v0, "afterCallFbDirectAdUnitId"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "126694440681943_5118184101532927"

    goto :goto_1

    :sswitch_10
    const-string v0, "spamMsgAdUnitId"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Spam*Unified*GPS"

    goto :goto_1

    :sswitch_11
    const-string v0, "callLogAdUnitId"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Call_log_2*Native*GPS"

    goto :goto_1

    :sswitch_12
    const-string v0, "inboxFallbackAdUnitId"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/43067329/A*Inbox_1*Unified*GPS"

    :goto_1
    return-object p1

    .line 21
    :cond_0
    :goto_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75afb896 -> :sswitch_12
        -0x64373218 -> :sswitch_11
        -0x5c66e8a6 -> :sswitch_10
        -0x56ec7edf -> :sswitch_f
        -0x419b9acb -> :sswitch_e
        -0x378cfa3f -> :sswitch_d
        -0x36942af5 -> :sswitch_c
        -0x2bece78a -> :sswitch_b
        -0x14ab40d9 -> :sswitch_a
        -0x64d523 -> :sswitch_9
        0x23b7d98 -> :sswitch_8
        0x24ffad9 -> :sswitch_7
        0x20ab75cd -> :sswitch_6
        0x2eabef6f -> :sswitch_5
        0x2ef24468 -> :sswitch_4
        0x31c115c0 -> :sswitch_3
        0x660469ba -> :sswitch_2
        0x68071ee7 -> :sswitch_1
        0x7ea48521 -> :sswitch_0
    .end sparse-switch
.end method
