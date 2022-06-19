.class public Le/i/b/u2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Le/i/b/u2/y;

.field public final d:Le/i/b/s2/b;

.field public final e:Le/i/b/l2/b;

.field public final f:Le/i/b/s1/d;

.field public final g:Le/i/b/s2/f;

.field public final h:Le/i/b/d2/c;

.field public final i:Le/i/b/v1/b;

.field public final j:Le/i/b/v1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Le/i/b/u2/y;Le/i/b/s2/b;Le/i/b/l2/b;Le/i/b/s1/d;Le/i/b/s2/f;Le/i/b/d2/c;Le/i/b/v1/b;Le/i/b/v1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/r;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/i/b/u2/r;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/i/b/u2/r;->c:Le/i/b/u2/y;

    .line 5
    iput-object p4, p0, Le/i/b/u2/r;->d:Le/i/b/s2/b;

    .line 6
    iput-object p5, p0, Le/i/b/u2/r;->e:Le/i/b/l2/b;

    .line 7
    iput-object p6, p0, Le/i/b/u2/r;->f:Le/i/b/s1/d;

    .line 8
    iput-object p7, p0, Le/i/b/u2/r;->g:Le/i/b/s2/f;

    .line 9
    iput-object p8, p0, Le/i/b/u2/r;->h:Le/i/b/d2/c;

    .line 10
    iput-object p9, p0, Le/i/b/u2/r;->i:Le/i/b/v1/b;

    .line 11
    iput-object p10, p0, Le/i/b/u2/r;->j:Le/i/b/v1/c;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p1, v4

    .line 4
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, -0x1

    const-string v9, "\\."

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 6
    array-length v8, v7

    move v9, v3

    :goto_2
    const/4 v10, 0x1

    if-ge v9, v8, :cond_2

    aget-object v11, v7, v9

    .line 7
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    move v8, v10

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_3
    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v0

    move v8, v3

    .line 8
    :goto_4
    array-length v11, v7

    sub-int/2addr v11, v10

    if-ge v8, v11, :cond_5

    .line 9
    aget-object v11, v7, v8

    .line 10
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 11
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 12
    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 13
    check-cast v11, Ljava/util/Map;

    move-object v9, v11

    goto :goto_5

    .line 14
    :cond_4
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v12

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 17
    :cond_5
    array-length v8, v7

    sub-int/2addr v8, v10

    aget-object v7, v7, v8

    .line 18
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 19
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method
