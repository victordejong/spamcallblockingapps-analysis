.class public final Lcom/hiya/client/database/db/b$b;
.super Landroidx/room/r/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/database/db/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/r/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf/t/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS caller_ids_temp (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `entity_type` TEXT, `phone_number` TEXT NOT NULL, `reputation_level` TEXT, `display_name` TEXT, `display_location` TEXT, `display_image_url` TEXT, `attribution_image` TEXT, `attribution_url` TEXT, `attribution_name` TEXT, `profile_tag` TEXT, `display_line_type` TEXT, `entity_expired_time_millis` INTEGER, `source_type` TEXT, `last_access_time_millis` INTEGER, `profile_icon_type` TEXT, `reputation_category_id` INTEGER, `category_name` TEXT, `display_category_name` TEXT, `line_type_id` TEXT, `display_detail` TEXT, `display_description` TEXT)"

    .line 1
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_caller_ids_phone_number` ON caller_ids_temp (`phone_number`)"

    .line 2
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "INSERT INTO caller_ids_temp  SELECT * FROM caller_ids"

    .line 3
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "DROP TABLE caller_ids"

    .line 4
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE caller_ids_temp RENAME TO caller_ids"

    .line 5
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS local_override_ids_temp (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `phone_number` TEXT NOT NULL, `reported_name` TEXT, `user_comment` TEXT, `category_name` TEXT, `reputation_category_id` INTEGER, `profile_tag` TEXT)"

    .line 6
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_local_override_ids_phone_number` ON local_override_ids_temp (`phone_number`)"

    .line 7
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "INSERT INTO local_override_ids_temp  SELECT * FROM local_override_ids"

    .line 8
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "DROP TABLE local_override_ids"

    .line 9
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE local_override_ids_temp RENAME TO local_override_ids"

    .line 10
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS translated_strings_temp (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `key` TEXT NOT NULL, `translated_text` TEXT)"

    .line 11
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_translated_strings_key` ON translated_strings_temp (`key`)"

    .line 12
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "INSERT INTO translated_strings_temp  SELECT * FROM translated_strings"

    .line 13
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "DROP TABLE translated_strings"

    .line 14
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE translated_strings_temp RENAME TO translated_strings"

    .line 15
    invoke-interface {p1, v0}, Lf/t/a/b;->w(Ljava/lang/String;)V

    return-void
.end method
