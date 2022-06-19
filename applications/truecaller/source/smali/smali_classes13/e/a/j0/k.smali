.class public final Le/a/j0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j0/j;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:J

.field public final c:J

.field public final d:Le/a/a/g/x;

.field public final e:Le/a/a/i0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;JJLe/a/a/g/x;Le/a/a/i0;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j0/k;->a:Landroid/content/ContentResolver;

    iput-wide p2, p0, Le/a/j0/k;->b:J

    iput-wide p4, p0, Le/a/j0/k;->c:J

    iput-object p6, p0, Le/a/j0/k;->d:Le/a/a/g/x;

    iput-object p7, p0, Le/a/j0/k;->e:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/j0/k;->a:Landroid/content/ContentResolver;

    .line 2
    iget-wide v0, p0, Le/a/j0/k;->b:J

    iget-wide v2, p0, Le/a/j0/k;->c:J

    .line 3
    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 4
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "messages_moved_to_spam_query"

    .line 5
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_date"

    invoke-virtual {v4, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_date"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MessagesMovedToSpamQuery\u2026i(startTimeMs, endTimeMs)"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Le/a/j0/k;->d:Le/a/a/g/x;

    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v1, v2}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v2, v1, v3}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 12
    iget-object v0, p0, Le/a/j0/k;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->E2()I

    move-result v0

    add-int/2addr v0, p1

    .line 13
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    return-object v3
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/j0/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Le/a/j0/i;

    const-string v2, "transport IN (2, 0, 4, 1, 7)"

    .line 2
    invoke-virtual {v1, v2}, Le/a/j0/k;->c(Ljava/lang/String;)I

    move-result v3

    const-string v2, "transport IN (2, 0, 4, 1, 7) AND (status & 1)!=0 AND (status & 2)=0"

    .line 3
    invoke-virtual {v1, v2}, Le/a/j0/k;->c(Ljava/lang/String;)I

    move-result v4

    const-string v2, "transport IN (2, 0, 4, 1, 7) AND (status & 1)=0"

    .line 4
    invoke-virtual {v1, v2}, Le/a/j0/k;->c(Ljava/lang/String;)I

    move-result v5

    const-string v2, "transport = 2"

    .line 5
    invoke-virtual {v1, v2}, Le/a/j0/k;->c(Ljava/lang/String;)I

    move-result v6

    const-string v2, "transport IN (0, 4, 1, 7)"

    .line 6
    invoke-virtual {v1, v2}, Le/a/j0/k;->c(Ljava/lang/String;)I

    move-result v7

    .line 7
    iget-object v8, v1, Le/a/j0/k;->a:Landroid/content/ContentResolver;

    .line 8
    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v9, "gif_stats"

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    .line 10
    iget-wide v13, v1, Le/a/j0/k;->b:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v12, v14

    const/4 v2, 0x1

    iget-wide v14, v1, Le/a/j0/k;->c:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v2

    const/4 v13, 0x0

    const-string v11, "message_date BETWEEN ? AND ?"

    .line 11
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    .line 12
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "it"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "count"

    invoke-static {v2, v9}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 13
    :goto_0
    invoke-static {v2, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move v8, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    const/4 v8, 0x0

    .line 14
    :goto_1
    iget-object v2, v1, Le/a/j0/k;->e:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->K2()I

    move-result v2

    iget-object v9, v1, Le/a/j0/k;->e:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->E2()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v2, v1, Le/a/j0/k;->e:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->c1()I

    move-result v2

    add-int/2addr v9, v2

    move-object v2, v0

    .line 15
    invoke-direct/range {v2 .. v9}, Le/a/j0/i;-><init>(IIIIIII)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/j0/k;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MessagesTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND date BETWEEN ? AND ?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    iget-wide v3, p0, Le/a/j0/k;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p0, Le/a/j0/k;->c:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "COUNT()"

    .line 5
    invoke-static {v0, v1, v3, p1, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_0
    return v4
.end method
