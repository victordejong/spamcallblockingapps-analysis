.class public final Le/a/c/c/a/z0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_transactions_table ( id INTEGER NOT NULL, vendor TEXT NOT NULL, ref_id TEXT NOT NULL, type TEXT NOT NULL, sub_type TEXT, account_number TEXT NOT NULL, bill_amount REAL, aux_bill_amount REAL, amount_paid REAL, due_date INTEGER, generated_date INTEGER, payment_date INTEGER, status TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (id))"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_pay_transactions_table_id` ON `pay_transactions_table` (`id`)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_pay_transactions_table_type` ON `pay_transactions_table` (`type`)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS pdo_to_pay_map ( id INTEGER NOT NULL, pay_id INTEGER NOT NULL, pdo_id INTEGER NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (id) FOREIGN KEY (pay_id) REFERENCES pay_transactions_table (id) FOREIGN KEY (pdo_id) REFERENCES parsed_data_object_table (id))"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_pdo_to_pay_map_id` ON `pdo_to_pay_map` (`id`)"

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_pdo_to_pay_map_pdo_id` ON `pdo_to_pay_map` (`pdo_id`)"

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
