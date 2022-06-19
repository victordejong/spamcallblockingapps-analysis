.class public final Le/a/c/c/a/a1;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "ALTER TABLE parsed_data_object_table ADD COLUMN synthetic_record_id INTEGER DEFAULT NULL"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_synthetic_record_id` ON `parsed_data_object_table` (`synthetic_record_id`)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
