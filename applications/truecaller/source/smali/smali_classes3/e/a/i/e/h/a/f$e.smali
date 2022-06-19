.class public Le/a/i/e/h/a/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/f;->i(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/a/i/e/h/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/i/e/h/a/f;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/f;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    iput-object p2, p0, Le/a/i/e/h/a/f$e;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 65
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 2
    iget-object v0, v0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 3
    iget-object v2, v1, Le/a/i/e/h/a/f$e;->a:Ln3/c0/y;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    .line 4
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "ad_type"

    .line 5
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ad_html_content"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "ad_video_uri"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ad_logo_uri"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "ad_image_uri"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ad_title"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "ad_body"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ad_landing_url"

    .line 12
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "ad_external_landing_url"

    .line 13
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ad_cta"

    .line 14
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ad_ecpm"

    .line 15
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "ad_raw_ecpm"

    .line 16
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ad_advertiser_name"

    .line 17
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v0

    const-string v0, "ad_height"

    .line 18
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "ad_width"

    .line 19
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "ad_click"

    .line 20
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "ad_impression"

    .line 21
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "ad_view_impression"

    .line 22
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "ad_video_impression"

    .line 23
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "ad_thank_you_pixels"

    .line 24
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "ad_ttl"

    .line 25
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "ad_expiry"

    .line 26
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "ad_partner"

    .line 27
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "ad_campaign_type"

    .line 28
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "ad_publisher"

    .line 29
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "ad_partner_logo"

    .line 30
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "ad_partner_privacy"

    .line 31
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "ad_ui_config_available"

    .line 32
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "ad_imp_per_user"

    .line 33
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "ad_click_per_user"

    .line 34
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 36
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_0

    const/16 v34, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v5

    .line 38
    :goto_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v35, 0x0

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v5

    .line 40
    :goto_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    :goto_2
    iget-object v6, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 43
    iget-object v6, v6, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 44
    invoke-virtual {v6, v5}, Le/a/i/y/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 45
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    .line 46
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    :goto_3
    iget-object v6, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 48
    iget-object v6, v6, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 49
    invoke-virtual {v6, v5}, Le/a/i/y/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 50
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    .line 51
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    :goto_4
    iget-object v6, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 53
    iget-object v6, v6, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 54
    invoke-virtual {v6, v5}, Le/a/i/y/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 55
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v39, 0x0

    goto :goto_5

    .line 56
    :cond_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v39, v5

    .line 57
    :goto_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v40, 0x0

    goto :goto_6

    .line 58
    :cond_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v40, v5

    .line 59
    :goto_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v41, 0x0

    goto :goto_7

    .line 60
    :cond_7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v5

    .line 61
    :goto_7
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v42, 0x0

    goto :goto_8

    .line 62
    :cond_8
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v42, v5

    .line 63
    :goto_8
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v43, 0x0

    goto :goto_9

    .line 64
    :cond_9
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v43, v5

    .line 65
    :goto_9
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v44, 0x0

    goto :goto_a

    .line 66
    :cond_a
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v44, v5

    .line 67
    :goto_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v45, 0x0

    goto :goto_b

    .line 68
    :cond_b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v45, v3

    .line 69
    :goto_b
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v3, v17

    const/16 v46, 0x0

    goto :goto_c

    .line 70
    :cond_c
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v46, v3

    move/from16 v3, v17

    .line 71
    :goto_c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v18

    const/16 v47, 0x0

    goto :goto_d

    .line 72
    :cond_d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v47, v3

    move/from16 v3, v18

    .line 73
    :goto_d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v3, v19

    const/16 v48, 0x0

    goto :goto_e

    .line 74
    :cond_e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    move/from16 v3, v19

    .line 75
    :goto_e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v3, 0x0

    goto :goto_f

    .line 76
    :cond_f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    :goto_f
    iget-object v4, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 78
    iget-object v4, v4, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 79
    invoke-virtual {v4, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    move/from16 v3, v20

    .line 80
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v3, 0x0

    goto :goto_10

    .line 81
    :cond_10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    :goto_10
    iget-object v4, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 83
    iget-object v4, v4, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 84
    invoke-virtual {v4, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v50

    move/from16 v3, v21

    .line 85
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v3, 0x0

    goto :goto_11

    .line 86
    :cond_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    :goto_11
    iget-object v4, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 88
    iget-object v4, v4, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 89
    invoke-virtual {v4, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v51

    move/from16 v3, v22

    .line 90
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v3, 0x0

    goto :goto_12

    .line 91
    :cond_12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    :goto_12
    iget-object v4, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 93
    iget-object v4, v4, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 94
    invoke-virtual {v4, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v52

    move/from16 v3, v23

    .line 95
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v3, 0x0

    goto :goto_13

    .line 96
    :cond_13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    :goto_13
    iget-object v4, v1, Le/a/i/e/h/a/f$e;->b:Le/a/i/e/h/a/f;

    .line 98
    iget-object v4, v4, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 99
    invoke-virtual {v4, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v53

    move/from16 v3, v24

    .line 100
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v3, v25

    .line 101
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v3, v26

    .line 102
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v3, v27

    const/16 v57, 0x0

    goto :goto_14

    .line 103
    :cond_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v57, v3

    move/from16 v3, v27

    .line 104
    :goto_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v3, v28

    const/16 v58, 0x0

    goto :goto_15

    .line 105
    :cond_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v58, v3

    move/from16 v3, v28

    .line 106
    :goto_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v3, v29

    const/16 v59, 0x0

    goto :goto_16

    .line 107
    :cond_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v59, v3

    move/from16 v3, v29

    .line 108
    :goto_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move/from16 v3, v30

    const/16 v60, 0x0

    goto :goto_17

    .line 109
    :cond_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v60, v3

    move/from16 v3, v30

    .line 110
    :goto_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v3, v31

    const/16 v61, 0x0

    goto :goto_18

    .line 111
    :cond_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v61, v3

    move/from16 v3, v31

    .line 112
    :goto_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    move/from16 v62, v3

    move/from16 v3, v32

    goto :goto_19

    :cond_19
    move/from16 v3, v32

    const/16 v62, 0x0

    .line 113
    :goto_19
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v63, 0x0

    goto :goto_1a

    .line 114
    :cond_1a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v63, v3

    .line 115
    :goto_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v64, 0x0

    goto :goto_1b

    .line 116
    :cond_1b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v64, v4

    .line 117
    :goto_1b
    new-instance v4, Le/a/i/e/h/b/b;

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v64}, Le/a/i/e/h/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    move/from16 v0, v16

    .line 118
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 119
    iput-wide v5, v4, Le/a/i/e/h/b/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1c

    :cond_1c
    const/4 v4, 0x0

    .line 120
    :goto_1c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 121
    iget-object v0, v1, Le/a/i/e/h/a/f$e;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 122
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 123
    iget-object v2, v1, Le/a/i/e/h/a/f$e;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 124
    throw v0
.end method
