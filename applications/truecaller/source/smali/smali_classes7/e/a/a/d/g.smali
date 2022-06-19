.class public final Le/a/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/d/f;


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/f4/g/r;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/a/g/g;

.field public final e:Le/a/a/d/s;

.field public final f:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/f4/g/r;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/d/s;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/d/g;->a:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/a/d/g;->b:Le/a/f4/g/r;

    iput-object p3, p0, Le/a/a/d/g;->c:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/a/d/g;->d:Le/a/a/g/g;

    iput-object p5, p0, Le/a/a/d/g;->e:Le/a/a/d/s;

    iput-object p6, p0, Le/a/a/d/g;->f:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Le/a/a/g/j0/a0;
    .locals 7

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationSignal"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/d/g;->e:Le/a/a/d/s;

    .line 2
    instance-of v1, v0, Le/a/a/d/s$a;

    const-string v2, "im_enabled"

    const-string v3, "filter"

    const-string v4, "query_type"

    const-string v5, "new_conversation_items"

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/a/a/d/s$d;

    if-eqz v1, :cond_1

    .line 4
    :goto_0
    iget-object p4, p0, Le/a/a/d/g;->a:Le/a/b0/e/l;

    invoke-interface {p4}, Le/a/b0/e/l;->d()Z

    move-result p4

    .line 5
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "new_conversation"

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 10
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p4, "conversation_type"

    .line 11
    invoke-virtual {p1, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "NewConversationDestinati\u2026rsationType\n            )"

    .line 13
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v1, p1

    goto :goto_3

    .line 14
    :cond_1
    instance-of p3, v0, Le/a/a/d/s$c;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    instance-of p3, v0, Le/a/a/d/s$b;

    if-eqz p3, :cond_5

    .line 16
    :goto_2
    iget-object p3, p0, Le/a/a/d/g;->a:Le/a/b0/e/l;

    invoke-interface {p3}, Le/a/b0/e/l;->d()Z

    move-result p3

    const/4 v0, 0x2

    .line 17
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 18
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "forward"

    .line 20
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 22
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "exclude_im_group_roles"

    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 24
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string p4, "exclude_hidden_conversations"

    invoke-virtual {p1, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "NewConversationDestinati\u2026nversations\n            )"

    .line 26
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    const/4 p1, 0x0

    .line 27
    :try_start_0
    iget-object v0, p0, Le/a/a/d/g;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-object p2, p1

    :goto_4
    if-eqz p2, :cond_3

    const-string p3, "try {\n            conten\u2026\n        } ?: return null"

    .line 28
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p3, p0, Le/a/a/d/g;->d:Le/a/a/g/g;

    invoke-interface {p3, p2}, Le/a/a/g/g;->s(Landroid/database/Cursor;)Le/a/a/g/j0/a0;

    move-result-object p2

    goto :goto_5

    :cond_3
    move-object p2, p1

    :goto_5
    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    return-object p1

    .line 30
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/d/g;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Le/a/a/d/g;->c:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/m0/a1$k;->I()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, p1

    const/4 v7, 0x0

    const-string v5, "tc_id = ? AND im_business_state = ?"

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "it"

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_1

    move v1, p1

    :cond_1
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method public c(Ljava/lang/String;Z)Ls1/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ls1/k<",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/d/g;->b:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "UUID.randomUUID()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newConversation"

    invoke-interface {v1, v2, v3}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v1

    .line 2
    iput-boolean p2, v1, Le/a/f4/g/p;->g:Z

    .line 3
    iput-object p1, v1, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    const/4 p1, 0x4

    .line 5
    iput p1, v1, Le/a/f4/g/p;->o:I

    .line 6
    invoke-virtual {v1}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Le/a/f4/i/e$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    new-instance p2, Ls1/k;

    invoke-direct {p2, v0, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    iget p1, p1, Le/a/f4/i/e$a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    new-instance p2, Ls1/k;

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p2
.end method
