.class public final Le/a/c/c/a/r0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS link_prune_tree ( run_type TEXT NOT NULL, tree_type TEXT NOT NULL, sub_tree_name TEXT NOT NULL, sub_tree_value TEXT, created_at INTEGER NOT NULL, PRIMARY KEY (run_type, tree_type,  sub_tree_name))"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_link_prune_tree_run_type` ON `link_prune_tree` (`run_type`)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_link_prune_tree_tree_type` ON `link_prune_tree` (`tree_type`)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_link_prune_tree_sub_tree_name` ON `link_prune_tree` (`sub_tree_name`)"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
