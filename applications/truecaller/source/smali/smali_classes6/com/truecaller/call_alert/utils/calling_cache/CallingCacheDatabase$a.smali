.class public final Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;
.super Ln3/c0/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;
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
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n                            CREATE TABLE IF NOT EXISTS `call_cache_new` (\n                            `_id` INTEGER PRIMARY KEY AUTOINCREMENT,\n                            `number` TEXT NOT NULL,\n                            `timestamp` INTEGER NOT NULL,\n                            `state` TEXT NOT NULL,\n                            `maxAgeSeconds` INTEGER NOT NULL)\n                            "

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n                            INSERT INTO call_cache_new (\n                            number, timestamp, maxAgeSeconds, state)\n                            SELECT number, timestamp, maxAgeSeconds, \'initiated\'\n                            FROM call_cache\n                            "

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n                            INSERT INTO call_cache_new (\n                            number, timestamp, maxAgeSeconds, state)\n                            SELECT number, timestamp, maxAgeSeconds, \'ended\'\n                            FROM call_cache\n                            "

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE call_cache"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE call_cache_new RENAME TO call_cache"

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_call_cache_number_state` ON `call_cache` (`number`, `state`)"

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
