.class public final Le/a/c/c/a/l;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE parsed_data_object_table ADD COLUMN state TEXT NOT NULL DEFAULT \'\' "

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE link_prune_table (parent_id INTEGER NOT NULL, child_id INTEGER NOT NULL, link_type TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (parent_id, child_id), FOREIGN KEY (parent_id) REFERENCES parsed_data_object_table (id), FOREIGN KEY (child_id) REFERENCES parsed_data_object_table (id))"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_link_prune_table_parent_id ON link_prune_table (parent_id)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_link_prune_table_child_id ON link_prune_table (child_id)"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE states_table (owner TEXT NOT NULL, last_updated_at INTEGER NOT NULL, last_updated_data TEXT, created_at INTEGER NOT NULL, PRIMARY KEY (owner))"

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
