.class public final Le/m/a/c/m1/r/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/m1/e;


# instance fields
.field public final a:Le/m/a/c/m1/r/b;

.field public final b:[J

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/r/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/r/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/c/m1/r/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/m1/r/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/r/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/r/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/m1/r/e;->a:Le/m/a/c/m1/r/b;

    .line 3
    iput-object p3, p0, Le/m/a/c/m1/r/e;->d:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Le/m/a/c/m1/r/e;->e:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Le/m/a/c/m1/r/e;->c:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Le/m/a/c/m1/r/b;->e(Ljava/util/TreeSet;Z)V

    .line 9
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 10
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 11
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Le/m/a/c/m1/r/e;->b:[J

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/e;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/e;->b:[J

    array-length v0, v0

    return v0
.end method

.method public d(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/e;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Le/m/a/c/q1/d0;->b([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Le/m/a/c/m1/r/e;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public e(J)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    .line 1
    iget-object v9, v0, Le/m/a/c/m1/r/e;->a:Le/m/a/c/m1/r/b;

    iget-object v10, v0, Le/m/a/c/m1/r/e;->c:Ljava/util/Map;

    iget-object v11, v0, Le/m/a/c/m1/r/e;->d:Ljava/util/Map;

    iget-object v12, v0, Le/m/a/c/m1/r/e;->e:Ljava/util/Map;

    .line 2
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, v9, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    invoke-virtual {v9, v7, v8, v1, v13}, Le/m/a/c/m1/r/b;->h(JLjava/lang/String;Ljava/util/List;)V

    .line 5
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 6
    iget-object v5, v9, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Le/m/a/c/m1/r/b;->j(JZLjava/lang/String;Ljava/util/Map;)V

    .line 7
    invoke-virtual {v9, v7, v8, v10, v14}, Le/m/a/c/m1/r/b;->i(JLjava/util/Map;Ljava/util/Map;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 10
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 12
    array-length v6, v5

    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 13
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/m1/r/c;

    .line 14
    new-instance v4, Le/m/a/c/m1/b;

    iget v5, v3, Le/m/a/c/m1/r/c;->b:F

    const/16 v18, 0x0

    iget v6, v3, Le/m/a/c/m1/r/c;->c:F

    iget v7, v3, Le/m/a/c/m1/r/c;->e:I

    iget v8, v3, Le/m/a/c/m1/r/c;->f:F

    iget v3, v3, Le/m/a/c/m1/r/c;->g:F

    move-object v15, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v3

    invoke-direct/range {v15 .. v22}, Le/m/a/c/m1/b;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/m1/r/c;

    .line 17
    new-instance v6, Le/m/a/c/m1/b;

    .line 18
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/text/SpannableStringBuilder;

    .line 19
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v7, v4

    :goto_2
    const/16 v8, 0x20

    if-ge v7, v3, :cond_4

    .line 20
    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_3

    add-int/lit8 v9, v7, 0x1

    move v10, v9

    .line 21
    :goto_3
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-ge v10, v12, :cond_2

    invoke-virtual {v13, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    sub-int/2addr v10, v9

    if-lez v10, :cond_3

    add-int v8, v7, v10

    .line 22
    invoke-virtual {v13, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v3, v10

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-lez v3, :cond_5

    .line 23
    invoke-virtual {v13, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    .line 24
    invoke-virtual {v13, v4, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x1

    :cond_5
    move v7, v4

    :goto_4
    add-int/lit8 v9, v3, -0x1

    const/16 v10, 0xa

    if-ge v7, v9, :cond_7

    .line 25
    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_6

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v13, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_6

    add-int/lit8 v3, v7, 0x2

    .line 26
    invoke-virtual {v13, v10, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move v3, v9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    if-lez v3, :cond_8

    .line 27
    invoke-virtual {v13, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_8

    .line 28
    invoke-virtual {v13, v9, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move v7, v4

    move v3, v9

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    add-int/lit8 v9, v3, -0x1

    if-ge v7, v9, :cond_a

    .line 29
    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_9

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v13, v12}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v10, :cond_9

    .line 30
    invoke-virtual {v13, v7, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move v3, v9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    if-lez v3, :cond_b

    .line 31
    invoke-virtual {v13, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_b

    .line 32
    invoke-virtual {v13, v9, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_b
    const/4 v14, 0x0

    .line 33
    iget v3, v5, Le/m/a/c/m1/r/c;->c:F

    iget v7, v5, Le/m/a/c/m1/r/c;->d:I

    iget v8, v5, Le/m/a/c/m1/r/c;->e:I

    iget v9, v5, Le/m/a/c/m1/r/c;->b:F

    const/high16 v20, -0x80000000

    iget v10, v5, Le/m/a/c/m1/r/c;->f:F

    iget v15, v5, Le/m/a/c/m1/r/c;->h:I

    iget v5, v5, Le/m/a/c/m1/r/c;->i:F

    const/16 v16, 0x0

    const v24, -0x800001

    const/16 v25, 0x0

    const/high16 v26, -0x1000000

    move-object v12, v6

    move/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v5

    move/from16 v23, v10

    .line 34
    invoke-direct/range {v12 .. v26}, Le/m/a/c/m1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    .line 35
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    return-object v1
.end method
