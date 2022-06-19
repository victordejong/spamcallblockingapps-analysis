.class public final Le/a/l0/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/x/a;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/x/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public p()Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/x/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v3, "history_with_aggregated_contact_number_data"

    .line 3
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    :try_start_2
    const-string v5, "action NOT IN (5)  AND tc_flag!=3 AND type!=6"

    const/4 v6, 0x0

    const-string v7, "timestamp DESC LIMIT 20"

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 5
    :try_start_3
    invoke-static {v1, v0, v2, v2}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v2

    sget-object v3, Le/a/l0/x/b$a;->a:Le/a/l0/x/b$a;

    .line 6
    new-instance v4, Le/a/r2/y;

    invoke-direct {v4, v2, v3}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string v2, "Promise.wrap(cursor.toHi\u2026y = true)) { it.close() }"

    .line 7
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_0
    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_1
    move-object v1, v0

    .line 8
    :goto_2
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_0
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(null)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
