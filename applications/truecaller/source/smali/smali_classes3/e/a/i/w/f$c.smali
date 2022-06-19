.class public Le/a/i/w/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/w/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/common/network/util/KnownEndpoints;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final synthetic i:Le/a/i/w/f;


# direct methods
.method public constructor <init>(Le/a/i/w/f;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;ILjava/util/Set;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Le/a/i/w/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/i/w/f$c;->a:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 3
    iput-object p3, p0, Le/a/i/w/f$c;->b:Ljava/lang/String;

    .line 4
    iput p4, p0, Le/a/i/w/f$c;->h:I

    .line 5
    iput-object p5, p0, Le/a/i/w/f$c;->c:Ljava/util/Set;

    .line 6
    iput-object p6, p0, Le/a/i/w/f$c;->d:Ljava/lang/Integer;

    .line 7
    iput-object p7, p0, Le/a/i/w/f$c;->e:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Le/a/i/w/f$c;->f:Ljava/lang/String;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 9
    invoke-static {p9, p1}, Lw3/c/a/a/a/h;->o(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/a/i/w/f$c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Le/a/k3/k/a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    .line 1
    :try_start_0
    iget-object v2, v1, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    .line 2
    invoke-virtual {v2}, Le/a/i/w/f;->a()Ljava/lang/String;

    move-result-object v4

    if-gez p8, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    .line 3
    :goto_0
    const-class v2, Le/a/i/w/b;

    move-object v3, p1

    invoke-static {p1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/i/w/b;

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 4
    invoke-interface/range {v3 .. v11}, Le/a/i/w/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lx3/b;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v2, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;

    sget-object v3, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;->CAMPAIGN_REQUEST_ILLEGAL_STATE:Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;-><init>(Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;)V

    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lx3/a0;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v0, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Le/a/k3/k/a;

    :cond_1
    return-object v0
.end method

.method public run()V
    .locals 31

    move-object/from16 v10, p0

    .line 1
    sget-object v11, Lw3/c/a/a/a/a;->b:[Ljava/lang/String;

    iget-object v0, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 8
    iget-object v0, v10, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    .line 9
    iget-object v0, v0, Le/a/i/w/f;->b:Le/a/i/w/a;

    .line 10
    iget-object v3, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    .line 11
    iget-object v5, v0, Le/a/i/w/a;->a:Le/a/b0/i/f/a;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v5}, Le/a/i/w/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {}, Le/a/b0/q/m;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v18, Le/a/i/w/a;->e:[Ljava/lang/String;

    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/String;

    aput-object v3, v7, v15

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v9, 0x3

    aput-object v0, v7, v9

    const/4 v13, 0x4

    aput-object v0, v7, v13

    const/4 v14, 0x5

    aput-object v0, v7, v14

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v17, "campaigns"

    const-string v19, "number=? AND placement=? AND ((start<end AND start<=? AND end>=?) OR (start>end AND (end>=? OR start<=?)))"

    move-object/from16 v16, v5

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    const-wide/16 v7, 0x0

    goto/16 :goto_7

    .line 15
    :cond_1
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v24, v16

    .line 16
    :goto_1
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v15, 0x7c

    if-nez v7, :cond_3

    .line 18
    new-instance v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;

    invoke-direct {v7, v0}, Lcom/truecaller/ads/campaigns/AdCampaign$b;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object v0, v11

    goto :goto_2

    .line 21
    :cond_2
    invoke-static {v0, v15}, Lw3/c/a/a/a/h;->v(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_2
    invoke-static {v0}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->b:[Ljava/lang/String;

    .line 23
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    .line 25
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    .line 27
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    const/4 v0, 0x7

    .line 29
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 31
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    const/16 v0, 0x8

    .line 33
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    const/16 v0, 0x9

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    const/16 v0, 0xa

    .line 37
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->k:Ljava/lang/String;

    const/16 v0, 0xb

    .line 39
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->l:Ljava/lang/String;

    const/16 v0, 0xc

    .line 41
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    iput-object v0, v7, Lcom/truecaller/ads/campaigns/AdCampaign$b;->h:Ljava/lang/String;

    .line 43
    invoke-virtual {v7}, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 44
    :cond_3
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, v11

    goto :goto_3

    .line 46
    :cond_4
    invoke-static {v0, v15}, Lw3/c/a/a/a/h;->v(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_3
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 48
    :goto_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v19, 0x0

    cmp-long v15, v6, v19

    if-eqz v15, :cond_5

    move-wide/from16 v8, v24

    .line 49
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    goto :goto_5

    :cond_5
    move-wide/from16 v8, v24

    move-wide/from16 v24, v8

    .line 50
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_6

    cmp-long v0, v24, v16

    if-eqz v0, :cond_7

    move-wide/from16 v13, v24

    goto :goto_6

    :cond_6
    const/4 v6, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v15, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    const-wide/16 v13, 0x0

    .line 52
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-wide v7, v13

    .line 53
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v7, v5

    if-lez v0, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 55
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 58
    iget-object v13, v10, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    iget-object v14, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/truecaller/ads/campaigns/AdCampaign;

    :goto_8
    move-object v5, v0

    .line 59
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/ads/campaigns/AdCampaigns;-><init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V

    .line 60
    invoke-static {v13, v14, v0}, Le/a/i/w/f;->f(Le/a/i/w/f;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaigns;)V

    goto/16 :goto_0

    .line 61
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 62
    throw v0

    .line 63
    :cond_9
    iget-object v0, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 64
    :try_start_2
    iget-object v2, v10, Le/a/i/w/f$c;->a:Lcom/truecaller/common/network/util/KnownEndpoints;

    iget-object v0, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->o(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Le/a/i/w/f$c;->d:Ljava/lang/Integer;

    iget-object v5, v10, Le/a/i/w/f$c;->e:Ljava/lang/String;

    iget-object v6, v10, Le/a/i/w/f$c;->f:Ljava/lang/String;

    iget-object v7, v10, Le/a/i/w/f$c;->g:Ljava/lang/String;

    iget-object v8, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    iget v9, v10, Le/a/i/w/f$c;->h:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Le/a/i/w/f$c;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Le/a/k3/k/a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 65
    iget-object v0, v0, Le/a/k3/k/a;->a:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k3/k/a$a;

    if-eqz v1, :cond_a

    .line 67
    iget-wide v2, v1, Le/a/k3/k/a$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iget-object v2, v1, Le/a/k3/k/a$a;->b:[Le/a/k3/k/a$a$a;

    if-eqz v2, :cond_a

    iget-object v2, v1, Le/a/k3/k/a$a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    .line 68
    :cond_b
    iget-object v2, v10, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    iget-object v3, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v3, v1}, Le/a/i/w/f;->g(Ljava/lang/String;Le/a/k3/k/a$a;)V

    .line 70
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 71
    :goto_b
    iget-object v3, v1, Le/a/k3/k/a$a;->b:[Le/a/k3/k/a$a$a;

    array-length v6, v3

    if-ge v2, v6, :cond_12

    .line 72
    aget-object v3, v3, v2

    .line 73
    iget-object v6, v3, Le/a/k3/k/a$a$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_d

    .line 74
    :cond_c
    invoke-static {}, Le/a/b0/q/m;->g()I

    move-result v6

    .line 75
    iget v7, v3, Le/a/k3/k/a$a$a;->c:I

    int-to-long v7, v7

    .line 76
    iget v9, v3, Le/a/k3/k/a$a$a;->d:I

    if-eqz v9, :cond_d

    int-to-long v13, v9

    goto :goto_c

    :cond_d
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x1

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v13

    :goto_c
    int-to-long v4, v6

    cmp-long v6, v7, v4

    if-gtz v6, :cond_e

    cmp-long v6, v13, v4

    if-gez v6, :cond_f

    :cond_e
    cmp-long v6, v7, v13

    if-lez v6, :cond_11

    cmp-long v6, v4, v13

    if-lez v6, :cond_f

    cmp-long v4, v4, v7

    if-gez v4, :cond_f

    goto :goto_d

    .line 77
    :cond_f
    new-instance v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;

    iget-object v5, v3, Le/a/k3/k/a$a$a;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/truecaller/ads/campaigns/AdCampaign$b;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v5, v3, Le/a/k3/k/a$a$a;->b:[Ljava/lang/String;

    .line 79
    invoke-static {v5}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->b:[Ljava/lang/String;

    .line 80
    iget-object v3, v3, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    if-eqz v3, :cond_10

    .line 81
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->a:Ljava/lang/String;

    .line 82
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    .line 83
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->b:Ljava/lang/String;

    .line 84
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    .line 85
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->c:Ljava/lang/String;

    .line 86
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    .line 87
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->f:Ljava/lang/String;

    .line 88
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 89
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->d:Ljava/lang/String;

    .line 90
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    .line 91
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->g:Ljava/lang/String;

    .line 92
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    .line 93
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->h:Ljava/lang/String;

    .line 94
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    .line 95
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->i:Ljava/lang/String;

    .line 96
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->k:Ljava/lang/String;

    .line 97
    iget-object v5, v3, Le/a/k3/k/a$a$a$a;->j:Ljava/lang/String;

    .line 98
    iput-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->l:Ljava/lang/String;

    .line 99
    iget-object v3, v3, Le/a/k3/k/a$a$a$a;->e:Ljava/lang/String;

    .line 100
    iput-object v3, v4, Lcom/truecaller/ads/campaigns/AdCampaign$b;->h:Ljava/lang/String;

    .line 101
    :cond_10
    invoke-virtual {v4}, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_d
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0x0

    goto/16 :goto_b

    .line 102
    :cond_12
    iget-object v2, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    :cond_13
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Le/a/k3/k/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 105
    iget-object v3, v1, Le/a/k3/k/a$a;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 107
    iget-object v5, v1, Le/a/k3/k/a$a;->d:[Ljava/lang/String;

    .line 108
    invoke-static {v5}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    iget-wide v13, v1, Le/a/k3/k/a$a;->c:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v13, v14}, Ljava/lang/Long;->signum(J)I

    mul-long/2addr v13, v7

    add-long v28, v13, v5

    .line 110
    :try_start_3
    iget-object v5, v10, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    iget-object v6, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v26, v4

    goto :goto_f

    :cond_14
    const/4 v4, 0x0

    new-array v7, v4, [Lcom/truecaller/ads/campaigns/AdCampaign;

    move-object/from16 v26, v7

    .line 111
    :goto_f
    new-instance v4, Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/16 v30, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v30}, Lcom/truecaller/ads/campaigns/AdCampaigns;-><init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V

    .line 112
    invoke-static {v5, v6, v4}, Le/a/i/w/f;->f(Le/a/i/w/f;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaigns;)V

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 115
    :cond_15
    iget-object v0, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 116
    iget-object v1, v10, Le/a/i/w/f$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 117
    iget-object v9, v10, Le/a/i/w/f$c;->i:Le/a/i/w/f;

    iget-object v12, v10, Le/a/i/w/f$c;->b:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 118
    new-instance v13, Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/4 v7, 0x0

    move-object v1, v13

    move-object v3, v0

    move-object v4, v11

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/ads/campaigns/AdCampaigns;-><init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V

    .line 119
    invoke-static {v9, v12, v13}, Le/a/i/w/f;->f(Le/a/i/w/f;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaigns;)V

    goto :goto_10

    :cond_16
    return-void
.end method
