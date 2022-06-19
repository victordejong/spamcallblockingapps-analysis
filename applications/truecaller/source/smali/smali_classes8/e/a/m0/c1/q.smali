.class public final Le/a/m0/c1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(ZLe/a/u3/g;)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/m0/c1/q;->b:Z

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Character;

    const/16 p2, 0x28

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/16 p2, 0x29

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const/16 p2, 0x2d

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const/16 p2, 0x20

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const/16 p2, 0x2b

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, p1, v0

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/m0/c1/q;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    iget-object v3, p0, Le/a/m0/c1/q;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "filterNotTo(StringBuilder(), predicate).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "provider"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "helper"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filter"

    .line 1
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    const/4 v7, 0x0

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    if-eqz v2, :cond_1f

    const-string v6, "uri.getQueryParameter(Tr\u2026           ?: return null"

    .line 2
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "limit"

    .line 3
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v4

    :goto_4
    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_6

    const-string v6, " LIMIT "

    invoke-static {v6, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string v1, ""

    .line 4
    :goto_6
    iget-boolean v6, v0, Le/a/m0/c1/q;->b:Z

    const/16 v8, 0x30

    const/16 v9, 0x39

    const/4 v10, 0x2

    const/16 v11, 0x25

    if-eqz v6, :cond_f

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move v13, v5

    :goto_7
    if-ge v13, v12, :cond_b

    .line 7
    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-gt v8, v14, :cond_7

    if-ge v9, v14, :cond_8

    :cond_7
    const/16 v15, 0x2b

    if-ne v14, v15, :cond_9

    :cond_8
    move v15, v4

    goto :goto_8

    :cond_9
    move v15, v5

    :goto_8
    if-eqz v15, :cond_a

    .line 8
    invoke-interface {v6, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 9
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_c

    move v6, v4

    goto :goto_9

    :cond_c
    move v6, v5

    :goto_9
    if-nez v6, :cond_d

    goto :goto_a

    :cond_d
    move-object v2, v7

    :goto_a
    if-eqz v2, :cond_e

    new-array v6, v10, [Ljava/lang/String;

    .line 11
    invoke-static {v2, v11}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v6}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v4, Ls1/k;

    const-string v6, "WHERE t9_starts_with LIKE ? OR t9_anywhere LIKE ?"

    invoke-direct {v4, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_e
    return-object v7

    .line 13
    :cond_f
    invoke-virtual {v0, v2}, Le/a/m0/c1/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/2addr v12, v4

    if-eqz v12, :cond_14

    move v12, v5

    .line 14
    :goto_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_13

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-le v8, v13, :cond_10

    goto :goto_c

    :cond_10
    if-lt v9, v13, :cond_11

    move v13, v4

    goto :goto_d

    :cond_11
    :goto_c
    move v13, v5

    :goto_d
    if-nez v13, :cond_12

    move v6, v5

    goto :goto_e

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    move v6, v4

    :goto_e
    if-eqz v6, :cond_14

    move v6, v4

    goto :goto_f

    :cond_14
    move v6, v5

    :goto_f
    if-eqz v6, :cond_15

    .line 15
    invoke-static {v11}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Le/a/m0/c1/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 16
    new-instance v7, Ls1/k;

    const-string v8, "t9_anywhere LIKE ?"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 17
    :cond_15
    sget-object v6, Ls1/u/s;->a:Ls1/u/s;

    .line 18
    new-instance v8, Ls1/k;

    invoke-direct {v8, v7, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    .line 19
    :goto_10
    iget-object v6, v7, Ls1/k;->a:Ljava/lang/Object;

    .line 20
    check-cast v6, Ljava/lang/String;

    .line 21
    iget-object v7, v7, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast v7, Ljava/util/List;

    const/16 v8, 0x5c

    .line 23
    sget-object v9, Le/a/m0/c1/r;->a:[C

    .line 24
    array-length v11, v9

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v9

    const-string v11, "$this$escapeWith"

    .line 25
    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "charsToEscape"

    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-static {v11}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "$this$distinct"

    .line 27
    invoke-static {v9, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "$this$toMutableSet"

    .line 28
    invoke-static {v9, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v12, Ljava/util/LinkedHashSet;

    array-length v13, v9

    const/16 v14, 0x80

    if-le v13, v14, :cond_16

    move v13, v14

    :cond_16
    invoke-static {v13}, Le/q/f/a/d/a;->Y1(I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v13, "$this$toCollection"

    .line 30
    invoke-static {v9, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "destination"

    invoke-static {v12, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v13, v9

    move v14, v5

    :goto_11
    if-ge v14, v13, :cond_17

    aget-char v15, v9, v14

    .line 32
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 33
    :cond_17
    invoke-static {v12}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 34
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/Character;

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v14

    if-ne v14, v8, :cond_19

    move v14, v4

    goto :goto_13

    :cond_19
    move v14, v5

    :goto_13
    if-nez v14, :cond_18

    .line 36
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1a
    invoke-static {v11, v12}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 37
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    .line 38
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    invoke-static {v2, v12, v11, v5, v13}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1b
    new-array v8, v4, [C

    const/16 v9, 0x20

    aput-char v9, v8, v5

    const/4 v9, 0x6

    .line 39
    invoke-static {v2, v8, v5, v5, v9}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 40
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v5

    :goto_15
    if-ge v8, v10, :cond_1c

    const-string v9, "matched_value LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_1c
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const-string v12, " OR "

    invoke-static/range {v11 .. v18}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v5

    :goto_16
    if-ge v12, v9, :cond_1d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x28

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_1d
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const-string v12, " AND "

    invoke-static/range {v11 .. v18}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    .line 42
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 44
    check-cast v11, Ljava/lang/String;

    new-array v12, v10, [Ljava/lang/String;

    const/16 v13, 0x25

    .line 45
    invoke-static {v11, v13}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "% "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v4

    invoke-static {v12}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 46
    invoke-static {v9, v11}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_17

    :cond_1e
    new-array v2, v10, [Ljava/lang/String;

    aput-object v6, v2, v5

    aput-object v8, v2, v4

    .line 47
    invoke-static {v2}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const-string v11, " OR "

    const-string v12, "WHERE "

    invoke-static/range {v10 .. v17}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v7, v9}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 49
    new-instance v6, Ls1/k;

    invoke-direct {v6, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    .line 50
    :goto_18
    iget-object v2, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 53
    check-cast v4, Ljava/util/List;

    const-string v6, "\n            SELECT m.matched_value, a.*\n            FROM (\n                SELECT hit.matched_key, hit.aggregated_contact_id, hit.spam_score\n                FROM (\n                    SELECT m.rowid as matched_key, MAX(hit_priority) as max_hit_priority, aggregated_contact_id, \n                        IFNULL(MAX(contact_spam_score), 0) as spam_score\n                    FROM t9_mapping m\n                    INNER JOIN raw_contact r on m.raw_contact_id = r._id\n                    "

    const-string v7, "\n                    GROUP BY aggregated_contact_id\n                ) hit\n                LEFT JOIN contacts_with_call_count_extended most_called on hit.aggregated_contact_id = most_called.aggregated_contact_id\n                ORDER BY most_called.calls_count DESC, hit.max_hit_priority DESC, hit.spam_score, most_called.recent_call_timestamp DESC "

    const-string v8, "\n            ) limited\n            LEFT JOIN t9_mapping m on limited.matched_key = m.rowid\n            LEFT JOIN aggregated_contact a on limited.aggregated_contact_id = a._id\n            "

    .line 54
    invoke-static {v6, v2, v7, v1, v8}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "args = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    .line 57
    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v4, p8

    .line 58
    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_1f
    return-object v7
.end method
