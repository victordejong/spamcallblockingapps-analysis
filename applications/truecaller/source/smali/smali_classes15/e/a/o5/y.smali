.class public Le/a/o5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x;


# instance fields
.field public final a:Le/a/o5/i1;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/k3/j/b;

.field public final d:Landroid/content/ContentResolver;

.field public final e:Le/a/b0/m/d/a;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/k3/e;


# direct methods
.method public constructor <init>(Le/a/o5/i1;Le/a/r2/f;Le/a/k3/j/b;Landroid/content/ContentResolver;Le/a/k3/j/j;Le/a/b0/m/d/a;Le/a/p5/a0;Le/a/k3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/i1;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/k3/j/b;",
            "Landroid/content/ContentResolver;",
            "Le/a/k3/j/j;",
            "Le/a/b0/m/d/a;",
            "Le/a/p5/a0;",
            "Le/a/k3/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/y;->a:Le/a/o5/i1;

    .line 3
    iput-object p2, p0, Le/a/o5/y;->b:Le/a/r2/f;

    .line 4
    iput-object p3, p0, Le/a/o5/y;->c:Le/a/k3/j/b;

    .line 5
    iput-object p4, p0, Le/a/o5/y;->d:Landroid/content/ContentResolver;

    .line 6
    iput-object p6, p0, Le/a/o5/y;->e:Le/a/b0/m/d/a;

    .line 7
    iput-object p7, p0, Le/a/o5/y;->f:Le/a/p5/a0;

    .line 8
    iput-object p8, p0, Le/a/o5/y;->g:Le/a/k3/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Le/a/o5/u;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Le/a/o5/y1;

    invoke-direct {v0}, Le/a/o5/y1;-><init>()V

    .line 4
    new-instance v1, Le/d/d/c;

    invoke-direct {v1}, Le/d/d/c;-><init>()V

    .line 5
    iget-object v2, v1, Le/d/d/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Le/d/d/n;

    invoke-direct {v2}, Le/d/d/n;-><init>()V

    .line 7
    new-instance v3, Le/d/d/j;

    invoke-direct {v3}, Le/d/d/j;-><init>()V

    .line 8
    iget-object v4, v3, Le/d/d/j;->a:Le/d/d/g;

    .line 9
    iget-object v4, v4, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v4, Ln3/g/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ln3/g/a;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-nez v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, v5, v3}, Le/a/o5/y;->k(Landroid/net/Uri;Le/d/d/f;)V

    .line 13
    invoke-virtual {v2}, Le/d/d/n;->f()I

    move-result v6

    .line 14
    :try_start_0
    invoke-static {v6}, Le/d/d/o;->e(I)Le/d/d/f;

    move-result-object v6

    .line 15
    invoke-virtual {v6, v1}, Le/d/d/f;->a(Le/d/d/e;)V

    .line 16
    invoke-virtual {p0, v5, v6}, Le/a/o5/y;->k(Landroid/net/Uri;Le/d/d/f;)V

    .line 17
    iget-object v6, v0, Le/a/o5/y1;->a:Le/a/o5/u;

    if-eqz v6, :cond_1

    .line 18
    iput-object v5, v6, Le/a/o5/u;->a:Landroid/net/Uri;

    .line 19
    iget v7, v6, Le/a/o5/u;->e:I

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 20
    invoke-virtual {v4, v5, v6}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Le/d/d/p/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read vcard from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {v4}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/y;->c:Le/a/k3/j/b;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;)Le/a/r2/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/o5/y;->f:Le/a/p5/a0;

    const-string v2, "android.permission.READ_CONTACTS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Le/a/o5/y;->d:Landroid/content/ContentResolver;

    const-string v2, "display_name"

    const-string v3, "data1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v0, v1}, Le/a/o5/y;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    throw v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_3
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/y;->c:Le/a/k3/j/b;

    invoke-virtual {v0, p1, p2}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    .line 2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o5/y;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    .line 4
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-interface {v0, p1, v1}, Le/a/l0/c;->f(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/o5/y;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0, p1}, Le/a/l0/c;->n(Lcom/truecaller/data/entity/HistoryEvent;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/net/Uri;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/y;->a:Le/a/o5/i1;

    invoke-virtual {v0, p1}, Le/a/o5/i1;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/net/Uri;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Le/a/o5/u;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/o5/y;->f:Le/a/p5/a0;

    const-string v2, "android.permission.READ_CONTACTS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Le/a/o5/y;->d:Landroid/content/ContentResolver;

    const-string v2, "lookup"

    const-string v3, "display_name"

    const-string v7, "photo_thumb_uri"

    filled-new-array {v2, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    aput-object v2, v4, v1

    .line 7
    invoke-static {v4}, Lw3/c/a/a/a/h;->k([Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v0, Le/a/o5/u;

    invoke-direct {v0}, Le/a/o5/u;-><init>()V

    .line 9
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10
    iput-object v1, v0, Le/a/o5/u;->a:Landroid/net/Uri;

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Le/a/o5/u;->c:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 15
    iput-object v1, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Le/a/o5/u;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    throw v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_4
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/y;->c:Le/a/k3/j/b;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    .line 2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public i()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/y;->a:Le/a/o5/i1;

    invoke-virtual {v0}, Le/a/o5/i1;->e()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-static {v2}, Lw3/c/a/a/a/h;->k([Ljava/lang/CharSequence;)Z

    move-result v2

    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object p2, v4, v3

    .line 3
    invoke-static {v4}, Lw3/c/a/a/a/a;->e([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_2

    .line 4
    aget-object v6, v4, v5

    .line 5
    invoke-static {v6}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    xor-int/2addr v1, v3

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string p1, " (\t"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string p1, ")"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(Landroid/net/Uri;Le/d/d/f;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/o5/y;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Le/d/d/f;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catch Le/d/d/p/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 3
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read vcard from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :cond_0
    :goto_1
    invoke-static {v0}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v0}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    .line 5
    throw p1
.end method
