.class public Lcom/hiya/stingray/q/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/hiya/stingray/util/a0;

.field private c:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hiya/stingray/ui/login/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lh/a;Lcom/hiya/stingray/ui/login/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/util/a0;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/ui/login/o;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/b/u;->b:Lcom/hiya/stingray/util/a0;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/q/b/u;->c:Lh/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/q/b/u;->d:Lcom/hiya/stingray/ui/login/o;

    return-void
.end method

.method private a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "photo_uri"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v1

    const/4 v8, 0x0

    const-string v6, "contact_id = ?"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_2
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 5
    :cond_3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_4
    const-string p2, ""

    .line 8
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    throw p2
.end method

.method private c()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Failed to get contact data"

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v0, v1, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    const-string v12, "contact_id"

    const-string v13, "display_name"

    const-string v14, "data4"

    const-string v15, "data1"

    const-string v16, "data2"

    const-string v17, "photo_uri"

    .line 3
    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v6

    .line 4
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "account_type NOT IN (?,?)"

    const-string v0, "com.att.callprotect.account"

    const-string v8, "com.whitepages.nameid.account"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "contact_id"

    .line 7
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "display_name"

    .line 8
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-direct {v1, v11}, Lcom/hiya/stingray/q/b/u;->g(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data2"

    .line 10
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "photo_uri"

    .line 11
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ""

    if-nez v4, :cond_2

    move-object v4, v8

    :cond_2
    if-nez v7, :cond_3

    move-object v7, v8

    .line 12
    :cond_3
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 13
    new-instance v8, Lcom/hiya/stingray/q/c/e;

    invoke-direct {v8, v4, v7}, Lcom/hiya/stingray/q/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/hiya/stingray/q/c/e;

    .line 15
    :goto_2
    invoke-static {v5}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v8}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    invoke-virtual {v8}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 18
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v11, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-array v4, v10, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, v2, v4}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v4, v1, Lcom/hiya/stingray/q/b/u;->b:Lcom/hiya/stingray/util/a0;

    new-instance v5, Lcom/hiya/stingray/t/e1/c;

    sget-object v6, Lcom/hiya/stingray/exception/d;->READ_CONTACTS:Lcom/hiya/stingray/exception/d;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2, v0}, Lcom/hiya/stingray/t/e1/c;-><init>(Lcom/hiya/stingray/exception/d;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_7

    .line 21
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :goto_4
    if-eqz v11, :cond_8

    .line 23
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_8
    throw v0
.end method

.method private g(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, "data4"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "data1"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/q/b/u;->c:Lh/a;

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic h(Ljava/util/Set;Lcom/hiya/stingray/q/c/e;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic i(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "display_name"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 p1, 0x0

    const/4 v10, 0x0

    .line 4
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "account_type NOT IN (?,?)"

    const-string v4, "com.att.callprotect.account"

    const-string v8, "com.whitepages.nameid.account"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-static {v4}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-direct {p0, v3, v5}, Lcom/hiya/stingray/q/b/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Failed to get name photo data."

    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1, p1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/q/b/u;->b:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/c;

    sget-object v3, Lcom/hiya/stingray/exception/d;->READ_CONTACTS:Lcom/hiya/stingray/exception/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Failed to get name photo data"

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/hiya/stingray/t/e1/c;-><init>(Lcom/hiya/stingray/exception/d;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    .line 13
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_3
    throw p1
.end method

.method public static synthetic k(Lcom/hiya/stingray/q/b/u;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/q/b/u;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "display_name"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 6
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "account_type NOT IN (?,?)"

    const-string p1, "com.att.callprotect.account"

    const-string v4, "com.whitepages.nameid.account"

    filled-new-array {p1, v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-direct {p0, v3, v4}, Lcom/hiya/stingray/q/b/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v5, :cond_2

    const-string v5, ""

    .line 11
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 12
    new-instance v7, Lcom/hiya/stingray/q/c/e;

    invoke-direct {v7, v5, v6}, Lcom/hiya/stingray/q/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Lcom/hiya/stingray/q/c/e;->a()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/hiya/stingray/q/b/u;->o(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)V

    .line 14
    invoke-virtual {v7}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/hiya/stingray/q/b/u;->p(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    if-eqz v7, :cond_1

    .line 15
    invoke-virtual {v7}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_4

    .line 18
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get contact data."

    .line 19
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->b:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/c;

    sget-object v3, Lcom/hiya/stingray/exception/d;->READ_CONTACTS:Lcom/hiya/stingray/exception/d;

    const-class v4, Lcom/hiya/stingray/q/b/u;

    const-string v5, "Failed to get contact data"

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/hiya/stingray/t/e1/c;-><init>(Lcom/hiya/stingray/exception/d;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 21
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private n(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/e;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/b/e;-><init>(Lcom/hiya/stingray/q/b/u;Ljava/lang/String;)V

    return-object v0
.end method

.method private o(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 3
    :goto_2
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "data2"

    const-string v6, "data1"

    const-string v7, "data7"

    const-string v8, "data4"

    const-string v9, "data8"

    const-string v10, "data10"

    const-string v11, "data9"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v1

    const/4 v8, 0x0

    const-string v6, "contact_id = ?"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_3
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    :goto_4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "data1"

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p2, "data7"

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p2, "data8"

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p2, "data4"

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p2, "data9"

    .line 12
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "data10"

    .line 13
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object p2, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    const-string v6, "data2"

    .line 15
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 16
    invoke-static {v6}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/hiya/stingray/t/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/t/n;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    throw p2
.end method

.method private p(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 3
    :goto_2
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data1"

    const-string v3, "data4"

    const-string v9, "data2"

    filled-new-array {v2, v3, v9}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v1

    const/4 v8, 0x0

    const-string v6, "contact_id = ?"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_3
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    :goto_4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/u;->g(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 10
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    throw p2
.end method


# virtual methods
.method public b()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/stingray/q/b/h;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/h;-><init>(Lcom/hiya/stingray/q/b/u;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/u;->n(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->c:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/y;->d(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/q/b/u;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/q/b/f;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/q/b/f;-><init>(Ljava/util/Set;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/u;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/u;->a:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/stingray/q/b/g;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/b/g;-><init>(Lcom/hiya/stingray/q/b/u;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/u;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/u;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
