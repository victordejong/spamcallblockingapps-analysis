.class public Lcom/truecaller/ads/db/AdsDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ads/db/AdsDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ads/db/AdsDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/db/AdsDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `offline_ads` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_type` TEXT NOT NULL, `ad_html_content` TEXT, `ad_video_uri` TEXT, `ad_logo_uri` TEXT, `ad_image_uri` TEXT, `ad_title` TEXT, `ad_body` TEXT, `ad_landing_url` TEXT, `ad_external_landing_url` TEXT, `ad_cta` TEXT, `ad_ecpm` TEXT, `ad_raw_ecpm` TEXT, `ad_advertiser_name` TEXT, `ad_height` INTEGER, `ad_width` INTEGER, `ad_click` TEXT NOT NULL, `ad_impression` TEXT NOT NULL, `ad_view_impression` TEXT NOT NULL, `ad_video_impression` TEXT NOT NULL, `ad_thank_you_pixels` TEXT NOT NULL, `ad_ttl` INTEGER NOT NULL, `ad_expiry` INTEGER NOT NULL, `ad_partner` TEXT, `ad_campaign_type` TEXT, `ad_publisher` TEXT, `ad_partner_logo` TEXT, `ad_partner_privacy` TEXT, `ad_ui_config_available` INTEGER NOT NULL, `ad_imp_per_user` INTEGER, `ad_click_per_user` INTEGER)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `offline_tracker` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_pixel_type` TEXT NOT NULL, `ad_pixels` TEXT NOT NULL)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `cached_ads` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_placement` TEXT NOT NULL, `ad_type` TEXT NOT NULL, `ad_html_content` TEXT, `ad_video_url` TEXT, `ad_logo` TEXT, `ad_image` TEXT, `ad_title` TEXT, `ad_body` TEXT, `ad_landing_url` TEXT, `ad_cta` TEXT, `ad_ecpm` TEXT, `ad_raw_ecpm` TEXT, `ad_advertiser_name` TEXT, `ad_height` INTEGER, `ad_width` INTEGER, `ad_click` TEXT NOT NULL, `ad_impression` TEXT NOT NULL, `ad_view_impression` TEXT NOT NULL, `ad_video_impression` TEXT NOT NULL, `ad_ttl` INTEGER NOT NULL, `ad_expiry` INTEGER NOT NULL, `ad_partner` TEXT, `ad_campaign_type` TEXT, `ad_publisher` TEXT, `ad_partner_logo` TEXT, `ad_partner_privacy` TEXT)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `offline_ad_ui_config` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `lead_gen_id` TEXT NOT NULL, `ui_config` TEXT NOT NULL, `ui_assets` TEXT, `pixels` TEXT NOT NULL)"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `offline_leadgen` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `lead_gen_id` TEXT NOT NULL, `form_response` TEXT NOT NULL, `form_submitted` INTEGER NOT NULL)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `partner_ads` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_placement` TEXT NOT NULL, `ad_partner` TEXT NOT NULL, `ad_type` TEXT NOT NULL, `ad_response` TEXT NOT NULL, `ad_ecpm` TEXT NOT NULL, `ad_raw_ecpm` TEXT NOT NULL, `ad_expiry` INTEGER NOT NULL)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `predictive_ecpm_config` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `placement_id` TEXT NOT NULL, `partner_id` TEXT NOT NULL, `pricing_model` TEXT NOT NULL, `pricing_ecpm` TEXT, `ad_types` TEXT, `floor_price` TEXT NOT NULL, `ttl` INTEGER NOT NULL, `expires_at` INTEGER NOT NULL)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `ad_campaigns` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `campaign_id` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `placement_name` TEXT NOT NULL, `expires_at` INTEGER NOT NULL, `main_color` TEXT, `light_color` TEXT, `button_color` TEXT, `banner_background_color` TEXT, `image_url` TEXT, `brand_name` TEXT, `cta_text_color` TEXT, `cta_background_color` TEXT)"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'39638243cfe14a7dd6eb95d07eb4ada1\')"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS `offline_ads`"

    const-string v1, "DROP TABLE IF EXISTS `offline_tracker`"

    const-string v2, "DROP TABLE IF EXISTS `cached_ads`"

    const-string v3, "DROP TABLE IF EXISTS `offline_ad_ui_config`"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `offline_leadgen`"

    const-string v1, "DROP TABLE IF EXISTS `partner_ads`"

    const-string v2, "DROP TABLE IF EXISTS `predictive_ecpm_config`"

    const-string v3, "DROP TABLE IF EXISTS `ad_campaigns`"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 4
    sget v1, Lcom/truecaller/ads/db/AdsDatabase_Impl;->l:I

    .line 5
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 8
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->b(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 2
    sget v1, Lcom/truecaller/ads/db/AdsDatabase_Impl;->l:I

    .line 3
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 6
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->a(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 2
    sget v1, Lcom/truecaller/ads/db/AdsDatabase_Impl;->l:I

    .line 3
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 4
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 5
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 7
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;->a:Lcom/truecaller/ads/db/AdsDatabase_Impl;

    .line 10
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->c(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Ln3/e0/a/b;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Ln3/e0/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/c0/h0/b;->a(Ln3/e0/a/b;)V

    return-void
.end method

.method public onValidateSchema(Ln3/e0/a/b;)Ln3/c0/x$b;
    .locals 45

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v4, "_id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    move v7, v10

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "ad_type"

    const-string v9, "TEXT"

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    move v11, v14

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "ad_type"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "ad_html_content"

    const-string v13, "TEXT"

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v2

    move v15, v8

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "ad_html_content"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v6, "ad_video_uri"

    const-string v7, "TEXT"

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    move/from16 v9, v20

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ad_video_uri"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "ad_logo_uri"

    const-string v15, "TEXT"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v13, v2

    move/from16 v16, v20

    move/from16 v17, v8

    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "ad_logo_uri"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "ad_image_uri"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "ad_image_uri"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "ad_title"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "ad_title"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v14, "ad_body"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "ad_body"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v6, "ad_landing_url"

    const-string v7, "TEXT"

    const/16 v17, 0x0

    const/4 v14, 0x1

    move-object v5, v2

    move/from16 v9, v17

    move-object v15, v11

    move v11, v14

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ad_landing_url"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v6, "ad_external_landing_url"

    const-string v16, "TEXT"

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v2

    move-object v8, v15

    move-object v15, v6

    move/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "ad_external_landing_url"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v19, "ad_cta"

    const-string v20, "TEXT"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v18, v2

    move/from16 v21, v7

    move/from16 v22, v6

    move-object/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "ad_cta"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v19, "ad_ecpm"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "ad_ecpm"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v22, "ad_raw_ecpm"

    const-string v23, "TEXT"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v2

    move/from16 v24, v6

    move/from16 v25, v17

    invoke-direct/range {v21 .. v27}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "ad_raw_ecpm"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_advertiser_name"

    const-string v16, "TEXT"

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v2

    move/from16 v18, v21

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "ad_advertiser_name"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v19, "ad_height"

    const-string v20, "INTEGER"

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v18, v2

    move/from16 v22, v25

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "ad_height"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v23, "ad_width"

    const-string v24, "INTEGER"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "ad_width"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v16, "ad_click"

    const-string v17, "TEXT"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_click"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "ad_impression"

    const-string v18, "TEXT"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v16, v15

    const-string v15, "ad_impression"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v18, "ad_view_impression"

    const-string v19, "TEXT"

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v17, v15

    const-string v15, "ad_view_impression"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v19, "ad_video_impression"

    const-string v20, "TEXT"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v18, v15

    const-string v15, "ad_video_impression"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v20, "ad_thank_you_pixels"

    const-string v21, "TEXT"

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v19, v15

    const-string v15, "ad_thank_you_pixels"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v21, "ad_ttl"

    const-string v22, "INTEGER"

    const/4 v15, 0x1

    const/16 v30, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v20, v2

    move/from16 v23, v15

    move/from16 v24, v30

    move-object/from16 v25, v28

    move/from16 v26, v29

    invoke-direct/range {v20 .. v26}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_ttl"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "ad_expiry"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    const/16 v20, 0x1

    move/from16 v26, v20

    move/from16 v27, v30

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v20, v15

    const-string v15, "ad_expiry"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v24, "ad_partner"

    const-string v25, "TEXT"

    const/16 v34, 0x0

    move-object/from16 v23, v2

    move/from16 v26, v30

    move/from16 v27, v34

    invoke-direct/range {v23 .. v29}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v21, v15

    const-string v15, "ad_partner"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v32, "ad_campaign_type"

    const-string v33, "TEXT"

    const/16 v25, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v31, v2

    move/from16 v35, v25

    invoke-direct/range {v31 .. v37}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v29, v15

    const-string v15, "ad_campaign_type"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v23, "ad_publisher"

    const-string v24, "TEXT"

    const/16 v37, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v2

    move/from16 v26, v37

    invoke-direct/range {v22 .. v28}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v22, v15

    const-string v15, "ad_publisher"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_partner_logo"

    const-string v32, "TEXT"

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v30, v2

    move/from16 v33, v37

    move/from16 v34, v15

    move-object/from16 v35, v23

    move/from16 v36, v24

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_partner_logo"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_partner_privacy"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    const/4 v15, 0x0

    move/from16 v34, v15

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_partner_privacy"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v39, "ad_ui_config_available"

    const-string v40, "INTEGER"

    const/16 v41, 0x1

    move-object/from16 v38, v2

    const/4 v15, 0x0

    move/from16 v42, v15

    move-object/from16 v43, v23

    move/from16 v44, v24

    invoke-direct/range {v38 .. v44}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_ui_config_available"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v39, "ad_imp_per_user"

    const-string v40, "INTEGER"

    const/4 v15, 0x0

    move-object/from16 v38, v2

    move/from16 v41, v15

    const/16 v25, 0x0

    move/from16 v42, v25

    invoke-direct/range {v38 .. v44}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_imp_per_user"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v39, "ad_click_per_user"

    const-string v40, "INTEGER"

    move-object/from16 v38, v2

    const/4 v15, 0x0

    move/from16 v41, v15

    const/4 v15, 0x0

    move/from16 v42, v15

    invoke-direct/range {v38 .. v44}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_click_per_user"

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-static {v1, v15, v2, v14}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 33
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    new-instance v14, Ln3/c0/h0/e;

    move-object/from16 v24, v10

    const-string v10, "offline_ads"

    invoke-direct {v14, v10, v1, v2, v15}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "offline_ads"

    .line 35
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 36
    invoke-virtual {v14, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v10, "\n Found:\n"

    if-nez v2, :cond_0

    .line 37
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "offline_ads(com.truecaller.ads.offline.db.entity.OfflineAdsEntity).\n Expected:\n"

    invoke-static {v2, v14, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/16 v34, 0x1

    const/4 v15, 0x0

    const/16 v25, 0x1

    const-string v31, "_id"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    move/from16 v33, v14

    move-object/from16 v35, v15

    move/from16 v36, v25

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const-string v36, "ad_pixel_type"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_pixel_type"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v34, 0x0

    const-string v31, "ad_pixels"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    const/4 v14, 0x0

    move-object/from16 v35, v14

    move/from16 v36, v25

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "ad_pixels"

    const/4 v15, 0x0

    invoke-static {v1, v14, v2, v15}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 42
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 43
    new-instance v15, Ln3/c0/h0/e;

    move-object/from16 v25, v9

    const-string v9, "offline_tracker"

    invoke-direct {v15, v9, v1, v2, v14}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "offline_tracker"

    .line 44
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 45
    invoke-virtual {v15, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "offline_tracker(com.truecaller.ads.offline.db.entity.OfflineTrackerEntity).\n Expected:\n"

    invoke-static {v2, v15, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 47
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x1

    const/16 v34, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v31, "_id"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    move/from16 v33, v9

    move-object/from16 v35, v14

    move/from16 v36, v15

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v38, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v36, "ad_placement"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    move/from16 v39, v26

    move-object/from16 v40, v27

    move/from16 v41, v28

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "ad_placement"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v15, 0x0

    const-string v31, "ad_type"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    move/from16 v34, v15

    move-object/from16 v35, v14

    const/4 v9, 0x1

    move/from16 v36, v9

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x0

    const-string v31, "ad_html_content"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    move/from16 v33, v9

    move/from16 v34, v26

    move-object/from16 v35, v27

    move/from16 v36, v28

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x0

    const-string v36, "ad_video_url"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    move/from16 v38, v12

    move/from16 v39, v15

    move-object/from16 v40, v14

    const/16 v30, 0x1

    move/from16 v41, v30

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "ad_video_url"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_logo"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v9, 0x1

    move/from16 v41, v9

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "ad_logo"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_image"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v9, 0x1

    move/from16 v41, v9

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "ad_image"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_title"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v9, 0x1

    move/from16 v41, v9

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_body"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    const/4 v8, 0x0

    move/from16 v33, v8

    move-object/from16 v35, v27

    move/from16 v36, v28

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_landing_url"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v8, 0x1

    move/from16 v41, v8

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_cta"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    const/4 v5, 0x0

    move/from16 v33, v5

    move-object/from16 v35, v27

    move/from16 v36, v28

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_ecpm"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v5, 0x1

    move/from16 v41, v5

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_raw_ecpm"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    const/4 v5, 0x0

    move/from16 v33, v5

    move-object/from16 v35, v27

    move/from16 v36, v28

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v36, "ad_advertiser_name"

    const-string v37, "TEXT"

    move-object/from16 v35, v2

    const/4 v5, 0x1

    move/from16 v41, v5

    invoke-direct/range {v35 .. v41}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v5, v25

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v31, "ad_height"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    move/from16 v33, v5

    move/from16 v34, v12

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v24

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v33, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v31, "ad_width"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    move/from16 v34, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v11, v23

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x1

    const-string v31, "ad_click"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    move/from16 v33, v11

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v12, v16

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_impression"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v12, v17

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_view_impression"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v12, v18

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_video_impression"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v12, v19

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_ttl"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v5, v20

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v5, 0x0

    const-string v12, "ad_expiry"

    const-string v13, "INTEGER"

    move-object v11, v2

    move v15, v5

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v11, v21

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x0

    const-string v31, "ad_partner"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    move/from16 v33, v12

    move/from16 v34, v5

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v13, v29

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_campaign_type"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v14, v22

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_publisher"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "ad_publisher"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_partner_logo"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "ad_partner_logo"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v31, "ad_partner_privacy"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ad_partner_privacy"

    const/4 v8, 0x0

    invoke-static {v1, v5, v2, v8}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 75
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "cached_ads"

    invoke-direct {v8, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "cached_ads"

    .line 77
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 78
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "cached_ads(com.truecaller.ads.caching.CachedAdsEntity).\n Expected:\n"

    invoke-static {v2, v8, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 80
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v18, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v15, "_id"

    const-string v16, "INTEGER"

    move-object v14, v2

    move/from16 v17, v5

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "lead_gen_id"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "lead_gen_id"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x0

    const-string v15, "ui_config"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v18, v12

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ui_config"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v22, 0x0

    const-string v20, "ui_assets"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    move/from16 v23, v12

    move-object/from16 v24, v8

    move/from16 v25, v9

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ui_assets"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v22, 0x1

    const-string v20, "pixels"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "pixels"

    const/4 v8, 0x0

    invoke-static {v1, v5, v2, v8}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 86
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 87
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "offline_ad_ui_config"

    invoke-direct {v8, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "offline_ad_ui_config"

    .line 88
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 89
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "offline_ad_ui_config(com.truecaller.ads.offline.db.entity.OfflineAdUiConfigEntity).\n Expected:\n"

    invoke-static {v2, v8, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 91
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v18, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v15, "_id"

    const-string v16, "INTEGER"

    move-object v14, v2

    move/from16 v17, v5

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "lead_gen_id"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "lead_gen_id"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x0

    const-string v15, "form_response"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v18, v12

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "form_response"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "form_submitted"

    const-string v16, "INTEGER"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "form_submitted"

    const/4 v8, 0x0

    invoke-static {v1, v5, v2, v8}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 96
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 97
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "offline_leadgen"

    invoke-direct {v8, v9, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "offline_leadgen"

    .line 98
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 99
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "offline_leadgen(com.truecaller.ads.offline.db.entity.OfflineLeadGenEntity).\n Expected:\n"

    invoke-static {v2, v8, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 101
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v18, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v15, "_id"

    const-string v16, "INTEGER"

    move-object v14, v2

    move/from16 v17, v5

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v20, "ad_placement"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    move/from16 v22, v12

    move/from16 v23, v26

    move-object/from16 v24, v27

    move/from16 v25, v28

    invoke-direct/range {v19 .. v25}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "ad_placement"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v21, 0x0

    const-string v15, "ad_partner"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v18, v21

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_type"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v17, v12

    move/from16 v18, v26

    move-object/from16 v19, v27

    move/from16 v20, v28

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_response"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v17, v5

    move/from16 v18, v21

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "ad_response"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_ecpm"

    const-string v16, "TEXT"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_raw_ecpm"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v17, v12

    move/from16 v18, v26

    move-object/from16 v19, v27

    move/from16 v20, v28

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "ad_expiry"

    const-string v16, "INTEGER"

    move-object v14, v2

    move/from16 v17, v5

    move/from16 v18, v21

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v4, 0x0

    invoke-static {v1, v11, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 110
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 111
    new-instance v4, Ln3/c0/h0/e;

    const-string v6, "partner_ads"

    invoke-direct {v4, v6, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "partner_ads"

    .line 112
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 113
    invoke-virtual {v4, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 114
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "partner_ads(com.truecaller.ads.mediation.cache.PartnerAdsEntity).\n Expected:\n"

    invoke-static {v2, v4, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 115
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v4, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "_id"

    const-string v13, "INTEGER"

    move-object v11, v2

    move v15, v4

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "placement_id"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "placement_id"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v16, "partner_id"

    const-string v17, "TEXT"

    move-object v15, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "partner_id"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v16, "pricing_model"

    const-string v17, "TEXT"

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "pricing_model"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x0

    const-string v12, "pricing_ecpm"

    const-string v13, "TEXT"

    move-object v11, v2

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "pricing_ecpm"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "ad_types"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "ad_types"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x1

    const-string v12, "floor_price"

    const-string v13, "TEXT"

    move-object v11, v2

    move v14, v4

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "floor_price"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "ttl"

    const-string v13, "INTEGER"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "ttl"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "expires_at"

    const-string v13, "INTEGER"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "expires_at"

    invoke-static {v1, v4, v2, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 125
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 126
    new-instance v5, Ln3/c0/h0/e;

    const-string v6, "predictive_ecpm_config"

    invoke-direct {v5, v6, v1, v2, v4}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "predictive_ecpm_config"

    .line 127
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 128
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 129
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "predictive_ecpm_config(com.truecaller.ads.mediation.predictiveecpm.cache.PredictiveEcpmConfigEntity).\n Expected:\n"

    invoke-static {v2, v5, v10, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 130
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x1

    const/4 v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v12, "_id"

    const-string v13, "INTEGER"

    move-object v11, v2

    move v14, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "campaign_id"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "campaign_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v3, 0x0

    const-string v12, "phone_number"

    const-string v13, "TEXT"

    move-object v11, v2

    move v15, v3

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "phone_number"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "placement_name"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "placement_name"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v12, "expires_at"

    const-string v13, "INTEGER"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "expires_at"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x0

    const-string v17, "main_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    move/from16 v19, v4

    move/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "main_color"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "light_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "light_color"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "button_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "button_color"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "banner_background_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "banner_background_color"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "image_url"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "image_url"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "brand_name"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "brand_name"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "cta_text_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "cta_text_color"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "cta_background_color"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cta_background_color"

    invoke-static {v1, v3, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 145
    new-instance v4, Ln3/c0/h0/e;

    const-string v5, "ad_campaigns"

    invoke-direct {v4, v5, v1, v2, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "ad_campaigns"

    .line 146
    invoke-static {v0, v1}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 147
    invoke-virtual {v4, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 148
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "ad_campaigns(com.truecaller.ads.keywords.db.entity.AdCampaignEntity).\n Expected:\n"

    invoke-static {v2, v4, v10, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 149
    :cond_7
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
