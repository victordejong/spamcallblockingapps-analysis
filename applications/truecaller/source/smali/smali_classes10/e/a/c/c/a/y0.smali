.class public final Le/a/c/c/a/y0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `aggregate_analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `counts` INTEGER NOT NULL, `agg_event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `analytics_property_maps` (`parent_event_id` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` TEXT NOT NULL, `property_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, FOREIGN KEY(`parent_event_id`) REFERENCES `analytics_events`(`event_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_analytics_property_maps_parent_event_id_event_id` ON `analytics_property_maps` (`parent_event_id`)"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
