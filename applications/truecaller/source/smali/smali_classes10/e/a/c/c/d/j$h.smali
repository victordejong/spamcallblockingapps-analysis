.class public Le/a/c/c/d/j$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/j;->g(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/j;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/j$h;->b:Le/a/c/c/d/j;

    iput-object p2, p0, Le/a/c/c/d/j$h;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/c/c/d/j$h;->b:Le/a/c/c/d/j;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 3
    iget-object v2, v1, Le/a/c/c/d/j$h;->a:Ln3/c0/y;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "feature"

    .line 4
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "event_category"

    .line 5
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "event_info"

    .line 6
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "context"

    .line 7
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "action_type"

    .line 8
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "action_info"

    .line 9
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "event_date"

    .line 10
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "counts"

    .line 11
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 12
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v14, v4

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    .line 16
    :goto_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    .line 18
    :goto_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v16, v4

    goto :goto_3

    .line 19
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 20
    :goto_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v17, v4

    goto :goto_4

    .line 21
    :cond_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    .line 22
    :goto_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v18, v4

    goto :goto_5

    .line 23
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    .line 24
    :goto_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v19, v4

    goto :goto_6

    .line 25
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v12

    .line 26
    :goto_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v4

    goto :goto_7

    .line 27
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 28
    :goto_7
    iget-object v13, v1, Le/a/c/c/d/j$h;->b:Le/a/c/c/d/j;

    .line 29
    iget-object v13, v13, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 30
    invoke-virtual {v13, v12}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    .line 31
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 32
    new-instance v12, Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    .line 33
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 34
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 35
    iget-object v0, v1, Le/a/c/c/d/j$h;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 37
    iget-object v2, v1, Le/a/c/c/d/j$h;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 38
    throw v0
.end method
