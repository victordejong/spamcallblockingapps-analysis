.class public final Le/a/c/c/a/f;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xe

    const/16 v1, 0xf

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "CREATE TABLE IF NOT EXISTS `aggregation_buckets` (\n`query_name` TEXT NOT NULL,\n`columns` TEXT NOT NULL, \n`version` INTEGER NOT NULL, \n`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL )"

    const-string v2, "CREATE TABLE IF NOT EXISTS `aggregation_queries` (\n`query` TEXT NOT NULL,\n`column_list` TEXT NOT NULL,\n`query_name` TEXT NOT NULL, \n`version` INTEGER NOT NULL,\n`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
