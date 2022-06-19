.class public final Le/a/j0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j0/d;


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j0/e;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(JJ)Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/j0/e;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "TruecallerContract.HistoryTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "COUNT()"

    const-string p2, "type IS 1 AND timestamp BETWEEN ? AND ?"

    .line 4
    invoke-static {v0, v1, p1, p2, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/e;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v4, p3

    const/4 v2, 0x0

    const-string v3, "type IS 2 AND timestamp BETWEEN ? AND ?"

    const/4 v5, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const-string p4, "contentResolver.query(\n \u2026\n        ) ?: return null"

    .line 5
    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 8
    invoke-static {p1, p3, p2, v0}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-wide v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1, p3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p4

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    return-object p3
.end method

.method public c(JJ)Lcom/truecaller/data/entity/Contact;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/j0/e;->a:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    .line 2
    invoke-static {v6}, Le/a/m0/a1$j;->a(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    const/4 v2, 0x0

    const-string v3, "timestamp BETWEEN ? AND ?"

    const/4 v5, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-ne p4, v6, :cond_0

    const/4 p4, 0x3

    .line 6
    invoke-static {p1, p3, p2, p4}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object p2

    invoke-virtual {p2}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-static {p1, p3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public d(JJ)Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/j0/e;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "TruecallerContract.HistoryTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "COUNT()"

    const-string p2, "type IS 2 AND timestamp BETWEEN ? AND ?"

    .line 4
    invoke-static {v0, v1, p1, p2, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
