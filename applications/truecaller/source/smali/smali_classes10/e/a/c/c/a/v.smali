.class public final Le/a/c/c/a/v;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1d

    const/16 v1, 0x1e

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `on_demand_aggregation_queries` \n    (`query` TEXT NOT NULL,\n    `column_list` TEXT NOT NULL,\n    `query_name` TEXT NOT NULL, \n    `version` INTEGER NOT NULL,\n    `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n    `created_at` INTEGER NOT NULL)"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
