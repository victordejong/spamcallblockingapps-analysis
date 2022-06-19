.class public final Le/a/c/c/a/b1;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "ALTER TABLE pay_transactions_table ADD COLUMN last_updated_at INTEGER NOT NULL DEFAULT 0"

    const-string v2, "CREATE UNIQUE INDEX IF NOT EXISTS `index_pay_transactions_table_ref_id` ON `pay_transactions_table` (`ref_id`)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
