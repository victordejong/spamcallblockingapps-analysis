.class public Le/a/a/k/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/j;


# static fields
.field public static final c:Landroid/net/Uri;

.field public static final d:[Ljava/lang/String;

.field public static final e:Landroid/net/Uri;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le/a/a/k/k;->c:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "recipient_ids"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/k;->d:[Ljava/lang/String;

    const-string v0, "content://mms-sms/canonical-addresses"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le/a/a/k/k;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/k/k;->b:Ln3/g/e;

    .line 3
    iput-object p1, p0, Le/a/a/k/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/a/k/k;->b:Ln3/g/e;

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/a/k/k;->c()Ln3/g/e;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ln3/g/e;->m()I

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v2, Ln3/g/e;

    invoke-direct {v2, v0}, Ln3/g/e;-><init>(I)V

    iput-object v2, p0, Le/a/a/k/k;->b:Ln3/g/e;

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-object v3, p0, Le/a/a/k/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Le/a/a/k/k;->c:Landroid/net/Uri;

    sget-object v6, Le/a/a/k/k;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 6
    :try_start_1
    new-instance v4, Ln3/g/e;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ln3/g/e;-><init>(I)V

    iput-object v4, p0, Le/a/a/k/k;->b:Ln3/g/e;

    .line 7
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lw3/c/a/a/a/h;->v(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v6, v4

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    .line 11
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 13
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object v8, p0, Le/a/a/k/k;->b:Ln3/g/e;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Ln3/g/e;->k(JLjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, p0, Le/a/a/k/k;->b:Ln3/g/e;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_1
    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    .line 17
    invoke-static {v2, v4}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_6

    .line 18
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_6
    new-instance v2, Ln3/g/e;

    invoke-direct {v2, v0}, Ln3/g/e;-><init>(I)V

    iput-object v2, p0, Le/a/a/k/k;->b:Ln3/g/e;

    .line 20
    :goto_3
    invoke-virtual {v2, p1, p2, v1}, Ln3/g/e;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_7

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_7
    return-object p1

    :catchall_1
    move-exception p1

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_8

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_8
    throw p1
.end method

.method public b(JLandroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/k/k;->a(J)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :try_start_0
    iget-object p2, p0, Le/a/a/k/k;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p2, "addr"

    .line 6
    invoke-static {p3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p2, "address"

    const-string p3, "charset"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "type=137"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-static {p2, p3}, Ln3/g0/y;->A0(Ljava/lang/String;I)[B

    move-result-object p2

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 11
    invoke-static {p2, p3}, Ln3/g0/y;->h0([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_4
    throw p2
.end method

.method public final c()Ln3/g/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/g/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/a/k/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Le/a/a/k/k;->e:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "address"

    .line 2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    .line 3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 4
    new-instance v4, Ln3/g/e;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ln3/g/e;-><init>(I)V

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Ln3/g/e;->a(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    new-array v3, v0, [Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    new-instance v1, Ln3/g/e;

    invoke-direct {v1, v0}, Ln3/g/e;-><init>(I)V

    return-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_3
    throw v0
.end method
