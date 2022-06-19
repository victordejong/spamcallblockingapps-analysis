.class public Le/a/b0/p/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/p/b$b;,
        Le/a/b0/p/b$d;,
        Le/a/b0/p/b$c;,
        Le/a/b0/p/b$e;
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:Le/a/b0/p/b$c;


# instance fields
.field public final a:I

.field public final b:Le/a/b0/p/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "term"

    const-string v1, "tag_id"

    const-string v2, "relevance"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/b0/p/b;->c:[Ljava/lang/String;

    .line 2
    new-instance v0, Le/a/b0/p/b$c;

    .line 3
    invoke-direct {v0}, Le/a/b0/p/b$c;-><init>()V

    .line 4
    sput-object v0, Le/a/b0/p/b;->d:Le/a/b0/p/b$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/b0/p/b$c;

    .line 3
    invoke-direct {v0}, Le/a/b0/p/b$c;-><init>()V

    .line 4
    iput-object v0, p0, Le/a/b0/p/b;->b:Le/a/b0/p/b$c;

    const-string v0, "featureAutoTagging"

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 6
    iput v2, p0, Le/a/b0/p/b;->a:I

    return-void

    :cond_0
    const-wide/16 v3, -0x1

    const-string v0, "tagsKeywordsVersion"

    .line 7
    invoke-static {v0, v3, v4}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    .line 8
    invoke-static {p1}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 9
    sget-object v5, Le/a/b0/p/b;->c:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "tag_keywords"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Le/a/b0/p/b$b;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Le/a/b0/p/b$b;-><init>(ILjava/lang/String;D)V

    .line 13
    invoke-virtual {p0, v3}, Le/a/b0/p/b;->a(Le/a/b0/p/b$b;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    :try_start_1
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Le/a/b0/p/b;->b:Le/a/b0/p/b$c;

    .line 17
    iget-object v1, v0, Le/a/b0/p/b$c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 18
    iget-object v0, v0, Le/a/b0/p/b$c;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    throw v0

    :cond_3
    :goto_2
    move v2, v0

    .line 22
    :goto_3
    iput v2, p0, Le/a/b0/p/b;->a:I

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/p/b$b;)V
    .locals 7

    .line 1
    new-instance v0, Le/a/b0/p/b$e;

    iget-object v1, p1, Le/a/b0/p/b$b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Le/a/b0/p/b$e;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v1, p0, Le/a/b0/p/b;->b:Le/a/b0/p/b$c;

    .line 3
    :goto_0
    invoke-virtual {v0}, Le/a/b0/p/b$e;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Le/a/b0/p/b$e;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 6
    iget-object v3, v1, Le/a/b0/p/b$c;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Le/a/b0/p/b$d;

    invoke-virtual {v0}, Le/a/b0/p/b$e;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Le/a/b0/p/b$d;-><init>(Ljava/lang/String;Le/a/b0/p/b$a;)V

    .line 9
    new-instance v4, Le/a/b0/p/b$c;

    invoke-direct {v4}, Le/a/b0/p/b$c;-><init>()V

    iput-object v4, v5, Le/a/b0/p/b$d;->b:Le/a/b0/p/b$c;

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, v1, Le/a/b0/p/b$c;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, v5, Le/a/b0/p/b$d;->b:Le/a/b0/p/b$c;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v3, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 14
    new-instance v2, Le/a/b0/p/b$d;

    invoke-virtual {v0}, Le/a/b0/p/b$e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Le/a/b0/p/b$d;-><init>(Ljava/lang/String;Le/a/b0/p/b$a;)V

    .line 15
    new-instance v4, Le/a/b0/p/b$c;

    invoke-direct {v4}, Le/a/b0/p/b$c;-><init>()V

    iput-object v4, v2, Le/a/b0/p/b$d;->b:Le/a/b0/p/b$c;

    .line 16
    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/b0/p/b$d;

    .line 18
    :goto_1
    iget-object v1, v2, Le/a/b0/p/b$d;->b:Le/a/b0/p/b$c;

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, v1, Le/a/b0/p/b$c;->b:Ljava/util/List;

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Le/a/b0/p/b$c;->b:Ljava/util/List;

    .line 21
    :cond_3
    iget-object v0, v1, Le/a/b0/p/b$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Le/a/b0/p/b$c;Ln3/g/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/p/b$c;",
            "Ln3/g/i<",
            "Le/a/b0/p/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/a/b0/p/b$c;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p1, Le/a/b0/p/b$c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/p/b$b;

    .line 3
    iget v3, v2, Le/a/b0/p/b$b;->a:I

    invoke-virtual {p2, v3}, Ln3/g/i;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/p/a;

    if-eqz v3, :cond_1

    .line 4
    iget-wide v4, v3, Le/a/b0/p/a;->c:D

    iget-wide v6, v2, Le/a/b0/p/b$b;->c:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Le/a/b0/p/a;->c:D

    goto :goto_1

    .line 5
    :cond_1
    iget v3, v2, Le/a/b0/p/b$b;->a:I

    new-instance v4, Le/a/b0/p/a;

    iget-wide v5, v2, Le/a/b0/p/b$b;->c:D

    iget v2, p0, Le/a/b0/p/b;->a:I

    invoke-direct {v4, v3, v5, v6, v2}, Le/a/b0/p/a;-><init>(IDI)V

    invoke-virtual {p2, v3, v4}, Ln3/g/i;->a(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
