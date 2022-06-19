.class public final Le/a/i/y/c$i;
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
    .locals 3

    const-string v0, "database"

    const-string v1, "DROP TABLE IF EXISTS `ad_campaigns`"

    const-string v2, "CREATE TABLE IF NOT EXISTS `ad_campaigns` (\n                `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n                `campaign_id` TEXT NOT NULL,\n                `phone_number` TEXT NOT NULL,\n                `placement_name` TEXT NOT NULL,\n                `expires_at` INTEGER NOT NULL,\n                `main_color` TEXT,\n                `light_color` TEXT,\n                `button_color` TEXT,\n                `banner_background_color` TEXT,\n                `image_url` TEXT,\n                `brand_name` TEXT,\n                `cta_text_color` TEXT,\n                `cta_background_color` TEXT\n                )"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
