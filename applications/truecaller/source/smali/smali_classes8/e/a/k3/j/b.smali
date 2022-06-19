.class public Le/a/k3/j/b;
.super Le/a/k3/j/f;
.source "SourceFile"


# static fields
.field public static c:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string v2, "/"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/#"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static m()Landroid/content/UriMatcher;
    .locals 5

    .line 1
    sget-object v0, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/k3/j/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    .line 5
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 6
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 7
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v3}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 8
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    invoke-static {}, Le/a/m0/a1$a;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v4}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 9
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 10
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    .line 11
    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v4, "history_with_raw_contact"

    .line 12
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 13
    invoke-static {v1, v2, v3}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 14
    sget-object v1, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v3}, Le/a/k3/j/b;->c(Landroid/content/UriMatcher;Landroid/net/Uri;I)V

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Le/a/k3/j/b;->c:Landroid/content/UriMatcher;

    return-object v0
.end method

.method public static o(Lcom/truecaller/data/entity/Contact;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/truecaller/data/entity/Contact;->j:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Le/a/k3/j/b;->m()Landroid/content/UriMatcher;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 5
    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final varargs d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    array-length v1, p3

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    new-instance p2, Le/a/k3/j/d;

    invoke-direct {p2, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Le/a/k3/j/d;->h(Z)V

    .line 5
    invoke-virtual {p2, p1}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object p3

    .line 6
    :cond_1
    invoke-virtual {p2, p1, p3}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p3}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, p3

    .line 9
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    throw p2

    :cond_3
    :goto_1
    return-object v6
.end method

.method public e(J)Lcom/truecaller/data/entity/Contact;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Le/a/m0/a1$a;->d()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "_id=?"

    invoke-virtual {p0, v0, p1, v1}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public f(J)Lcom/truecaller/data/entity/Contact;
    .locals 6

    .line 1
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    .line 3
    iget-object v0, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    const-string p1, "history_aggregated_contact_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "_id=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 7
    throw p2

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    .line 1
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "contact_im_id=?"

    invoke-virtual {p0, v0, p1, v1}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "data1=? AND data_type=4"

    invoke-virtual {p0, v0, p1, v1}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public i(J)Lcom/truecaller/data/entity/Contact;
    .locals 2

    .line 1
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contact_phonebook_id="

    invoke-static {v1, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "tc_id=?"

    invoke-virtual {p0, v0, p1, v1}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/net/Uri;)Lcom/truecaller/data/entity/Contact;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Le/a/k3/j/b;->m()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-virtual {p0, v2, v3}, Le/a/k3/j/b;->f(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    invoke-virtual {p0, v2, v3}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "_id=?"

    invoke-virtual {p0, v0, v1, p1}, Le/a/k3/j/b;->d(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v1, p1, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v1}, Le/a/k3/j/b;->k(Landroid/net/Uri;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Le/a/k3/j/b;->i(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v0
.end method

.method public n(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/truecaller/data/entity/Contact;->j:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Le/a/k3/j/j;

    iget-object v1, p0, Le/a/k3/j/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 5
    invoke-virtual {p0, p1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
