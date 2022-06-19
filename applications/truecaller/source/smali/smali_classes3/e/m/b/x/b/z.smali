.class public Le/m/b/x/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/b/z$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Le/m/b/x/b/z$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/m/b/x/b/z;->a:Ljava/util/Map;

    .line 2
    invoke-static {}, Le/m/b/x/b/z$a;->values()[Le/m/b/x/b/z$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "/"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Le/m/b/x/b/f;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Le/m/b/x/b/f;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Le/m/b/x/b/f;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Le/m/b/x/b/f;->g:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Le/m/b/x/b/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    const-string v1, "http://"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static/range {p0 .. p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    :goto_0
    invoke-static/range {p2 .. p2}, Le/m/b/x/b/z;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_18

    const/16 v6, 0x7b

    .line 10
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    if-nez v5, :cond_3

    if-nez p3, :cond_3

    goto/16 :goto_d

    .line 11
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 12
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7d

    add-int/lit8 v7, v6, 0x2

    .line 13
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 14
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 15
    sget-object v6, Le/m/b/x/b/z;->a:Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/b/x/b/z$a;

    if-nez v6, :cond_5

    .line 16
    sget-object v6, Le/m/b/x/b/z$a;->m:Le/m/b/x/b/z$a;

    :cond_5
    const/16 v8, 0x2c

    .line 17
    new-instance v9, Lcom/google/common/base/CharMatcher$Is;

    invoke-direct {v9, v8}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    .line 18
    new-instance v8, Lcom/google/common/base/Splitter;

    new-instance v10, Lcom/google/common/base/Splitter$1;

    invoke-direct {v10, v9}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v8, v10}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 19
    iget-object v9, v8, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    check-cast v9, Lcom/google/common/base/Splitter$1;

    .line 20
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v10, Lcom/google/common/base/Splitter$1$1;

    invoke-direct {v10, v9, v8, v5}, Lcom/google/common/base/Splitter$1$1;-><init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_2
    invoke-virtual {v10}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 24
    invoke-virtual {v10}, Lcom/google/common/base/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_6
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 26
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    const/4 v8, 0x1

    move v9, v8

    .line 27
    :goto_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 28
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "*"

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    .line 30
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v12

    if-ne v12, v8, :cond_8

    .line 31
    iget-object v12, v6, Le/m/b/x/b/z$a;->a:Ljava/lang/Character;

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    move v12, v8

    goto :goto_5

    :cond_8
    :goto_4
    move v12, v4

    .line 32
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v11, :cond_9

    add-int/lit8 v13, v13, -0x1

    .line 33
    :cond_9
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_a

    goto :goto_3

    :cond_a
    if-nez v9, :cond_b

    .line 35
    iget-object v13, v6, Le/m/b/x/b/z$a;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 37
    :cond_b
    iget-object v9, v6, Le/m/b/x/b/z$a;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v4

    .line 39
    :goto_6
    instance-of v13, v12, Ljava/util/Iterator;

    if-eqz v13, :cond_c

    .line 40
    check-cast v12, Ljava/util/Iterator;

    .line 41
    invoke-static {v10, v12, v11, v6}, Le/m/b/x/b/z;->b(Ljava/lang/String;Ljava/util/Iterator;ZLe/m/b/x/b/z$a;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_b

    .line 42
    :cond_c
    instance-of v13, v12, Ljava/lang/Iterable;

    if-nez v13, :cond_16

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_d

    goto/16 :goto_a

    .line 43
    :cond_d
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 44
    move-object v11, v12

    check-cast v11, Ljava/lang/Enum;

    invoke-static {v11}, Le/m/b/x/d/j;->c(Ljava/lang/Enum;)Le/m/b/x/d/j;

    move-result-object v11

    .line 45
    iget-object v11, v11, Le/m/b/x/d/j;->d:Ljava/lang/String;

    if-eqz v11, :cond_e

    goto :goto_7

    .line 46
    :cond_e
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_7
    invoke-static {v10, v11, v6}, Le/m/b/x/b/z;->d(Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/z$a;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_b

    .line 47
    :cond_f
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Le/m/b/x/d/g;->d(Ljava/lang/reflect/Type;)Z

    move-result v13

    if-nez v13, :cond_15

    .line 48
    invoke-static {v12}, Le/m/b/x/b/z;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 49
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v10, ""

    goto/16 :goto_b

    .line 50
    :cond_10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "="

    const-string v15, ","

    if-eqz v11, :cond_11

    .line 51
    iget-object v15, v6, Le/m/b/x/b/z$a;->c:Ljava/lang/String;

    goto :goto_8

    .line 52
    :cond_11
    iget-boolean v11, v6, Le/m/b/x/b/z$a;->d:Z

    if-eqz v11, :cond_12

    .line 53
    sget-object v11, Le/m/b/x/d/y/a;->b:Le/m/b/x/d/y/d;

    invoke-virtual {v11, v10}, Le/m/b/x/d/y/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    move-object v14, v15

    .line 56
    :goto_8
    check-cast v12, Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 57
    :cond_13
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 58
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Le/m/b/x/b/z$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Le/m/b/x/b/z$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 61
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 65
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 66
    :cond_14
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 67
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v6}, Le/m/b/x/b/z;->d(Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/z$a;)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 68
    :cond_16
    :goto_a
    invoke-static {v12}, Le/m/b/x/d/l;->l(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 69
    invoke-static {v10, v12, v11, v6}, Le/m/b/x/b/z;->b(Ljava/lang/String;Ljava/util/Iterator;ZLe/m/b/x/b/z$a;)Ljava/lang/String;

    move-result-object v10

    .line 70
    :goto_b
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_17
    move v5, v7

    goto/16 :goto_1

    :cond_18
    :goto_c
    if-eqz p3, :cond_19

    .line 71
    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Le/m/b/x/b/f;->i(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 72
    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Iterator;ZLe/m/b/x/b/z$a;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;Z",
            "Le/m/b/x/b/z$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    if-eqz p2, :cond_1

    .line 3
    iget-object v2, p3, Le/m/b/x/b/z$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v2, p3, Le/m/b/x/b/z$a;->d:Z

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Le/m/b/x/d/y/a;->b:Le/m/b/x/d/y/d;

    invoke-virtual {v2, p0}, Le/m/b/x/d/y/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, ","

    .line 8
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    .line 9
    iget-boolean v3, p3, Le/m/b/x/b/z$a;->d:Z

    if-eqz v3, :cond_4

    .line 10
    sget-object v3, Le/m/b/x/d/y/a;->b:Le/m/b/x/d/y/d;

    invoke-virtual {v3, p0}, Le/m/b/x/d/y/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Le/m/b/x/b/z$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {p0}, Le/m/b/x/d/g;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Le/m/b/x/d/g;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/z$a;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p2, Le/m/b/x/b/z$a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p2, p1}, Le/m/b/x/b/z$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "%s=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Le/m/b/x/b/z$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
