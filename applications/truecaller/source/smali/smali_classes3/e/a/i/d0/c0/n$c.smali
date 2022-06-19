.class public Le/a/i/d0/c0/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/n;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/a/i/d0/c0/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/i/d0/c0/n;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/n;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/n$c;->b:Le/a/i/d0/c0/n;

    iput-object p2, p0, Le/a/i/d0/c0/n$c;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "value"

    .line 1
    iget-object v2, v1, Le/a/i/d0/c0/n$c;->b:Le/a/i/d0/c0/n;

    .line 2
    iget-object v2, v2, Le/a/i/d0/c0/n;->a:Ln3/c0/q;

    .line 3
    iget-object v3, v1, Le/a/i/d0/c0/n$c;->a:Ln3/c0/y;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "_id"

    .line 4
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ad_placement"

    .line 5
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v6, "ad_partner"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "ad_type"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ad_response"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "ad_ecpm"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ad_raw_ecpm"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "ad_expiry"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 13
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v13, v5

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 15
    :goto_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    :goto_1
    iget-object v6, v1, Le/a/i/d0/c0/n$c;->b:Le/a/i/d0/c0/n;

    .line 18
    iget-object v6, v6, Le/a/i/d0/c0/n;->c:Le/a/i/y/a;

    .line 19
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v4}, Lcom/truecaller/ads/mediation/model/AdPartner;->valueOf(Ljava/lang/String;)Lcom/truecaller/ads/mediation/model/AdPartner;

    move-result-object v14

    .line 21
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    .line 22
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 23
    :goto_2
    iget-object v6, v1, Le/a/i/d0/c0/n$c;->b:Le/a/i/d0/c0/n;

    .line 24
    iget-object v6, v6, Le/a/i/d0/c0/n;->c:Le/a/i/y/a;

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v4}, Lcom/truecaller/ads/adsrouter/ui/AdType;->valueOf(Ljava/lang/String;)Lcom/truecaller/ads/adsrouter/ui/AdType;

    move-result-object v15

    .line 27
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v16, v5

    goto :goto_3

    .line 28
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 29
    :goto_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v17, v5

    goto :goto_4

    .line 30
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 31
    :goto_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    move-object/from16 v18, v5

    goto :goto_6

    .line 32
    :cond_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 33
    :goto_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 34
    new-instance v5, Le/a/i/d0/c0/p;

    move-object v12, v5

    invoke-direct/range {v12 .. v20}, Le/a/i/d0/c0/p;-><init>(Ljava/lang/String;Lcom/truecaller/ads/mediation/model/AdPartner;Lcom/truecaller/ads/adsrouter/ui/AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 36
    iput-wide v3, v5, Le/a/i/d0/c0/p;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 38
    iget-object v0, v1, Le/a/i/d0/c0/n$c;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    iget-object v2, v1, Le/a/i/d0/c0/n$c;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 41
    throw v0
.end method
