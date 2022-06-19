.class public final Le/a/i/y/c$k;
.super Ln3/c0/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `cached_ads` (\n            `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_placement` TEXT NOT NULL, `ad_type` TEXT NOT NULL,\n            `ad_html_content` TEXT, `ad_video_url` TEXT, `ad_logo` TEXT, `ad_image` TEXT, `ad_title` TEXT, `ad_body` TEXT,\n            `ad_landing_url` TEXT, `ad_cta` TEXT, `ad_ecpm` TEXT, `ad_advertiser_name` TEXT, `ad_height` INTEGER, `ad_width` INTEGER,\n            `ad_click` TEXT NOT NULL, `ad_impression` TEXT NOT NULL, `ad_view_impression` TEXT NOT NULL, `ad_video_impression` TEXT NOT NULL,\n            `ad_ttl` INTEGER NOT NULL, `ad_expiry` INTEGER NOT NULL, `ad_partner` TEXT, `ad_campaign_type` TEXT, `ad_publisher` TEXT, `ad_partner_logo` TEXT\n            )"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
