.class public Le/a/o5/t$a;
.super Le/a/j4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Lcom/truecaller/data/entity/Contact;

.field public final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/t$a;->d:Lcom/truecaller/data/entity/Contact;

    .line 3
    iput-object p2, p0, Le/a/o5/t$a;->e:Landroid/net/Uri;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 5
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    throw p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-boolean p1, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Le/a/o5/t$a;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Le/a/o5/t$a;->e:Landroid/net/Uri;

    invoke-static {p1, v3}, Le/a/o5/t$a;->b(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    .line 5
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v5

    invoke-interface {v5}, Le/a/j2;->e4()Le/a/l/a/q;

    move-result-object v5

    iget-object v6, p0, Le/a/o5/t$a;->d:Lcom/truecaller/data/entity/Contact;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Le/a/l/a/q;->b(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-static {p1, v1, v2}, Le/a/o5/q;->g(Landroid/content/Context;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    iget-object v5, p0, Le/a/o5/t$a;->d:Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v3, v4, v5}, Le/a/o5/q;->a(Landroid/content/Context;JLcom/truecaller/data/entity/Contact;)V

    .line 8
    :cond_1
    iget-object v5, p0, Le/a/o5/t$a;->d:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 9
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v5, "photo_uri"

    .line 10
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 12
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v5, v6

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 14
    throw p1

    :cond_4
    :goto_1
    move v5, v7

    :goto_2
    if-nez v5, :cond_8

    .line 15
    iget-object v5, p0, Le/a/o5/t$a;->d:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Le/a/z3/i/f;->a:Le/a/z3/i/f;

    const-string v9, "size"

    .line 16
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_7

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    move v7, v6

    :cond_5
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_7

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v0

    .line 18
    :goto_4
    new-instance v6, Le/a/z3/i/a;

    invoke-direct {v6, v5, v8}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v6, p1}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6, v3, v4}, Le/a/o5/q;->i(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;J)Z

    .line 20
    :cond_8
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v3

    invoke-interface {v3}, Le/a/j2;->k1()Le/a/o5/i1;

    move-result-object v3

    .line 21
    iget-object v4, p0, Le/a/o5/t$a;->e:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Le/a/o5/i1;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_9

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_9

    .line 22
    invoke-virtual {v3, v1, v2}, Le/a/o5/i1;->f(J)Landroid/net/Uri;

    move-result-object v4

    :cond_9
    if-eqz v4, :cond_a

    .line 23
    new-instance v1, Le/a/k3/j/b;

    invoke-direct {v1, p1}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v1, v4}, Le/a/k3/j/b;->k(Landroid/net/Uri;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_a
    return-object v0
.end method
