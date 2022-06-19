.class public final Le/m/a/c/m1/r/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Le/m/a/c/m1/r/d;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/m1/r/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLe/m/a/c/m1/r/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/m/a/c/m1/r/b;->b:Ljava/lang/String;

    .line 4
    iput-object p10, p0, Le/m/a/c/m1/r/b;->i:Ljava/lang/String;

    .line 5
    iput-object p7, p0, Le/m/a/c/m1/r/b;->f:Le/m/a/c/m1/r/d;

    .line 6
    iput-object p8, p0, Le/m/a/c/m1/r/b;->g:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, Le/m/a/c/m1/r/b;->c:Z

    .line 8
    iput-wide p3, p0, Le/m/a/c/m1/r/b;->d:J

    .line 9
    iput-wide p5, p0, Le/m/a/c/m1/r/b;->e:J

    .line 10
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p9, p0, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/a/c/m1/r/b;->j:Ljava/util/HashMap;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/a/c/m1/r/b;->k:Ljava/util/HashMap;

    return-void
.end method

.method public static b(Ljava/lang/String;)Le/m/a/c/m1/r/b;
    .locals 12

    .line 1
    new-instance v11, Le/m/a/c/m1/r/b;

    const-string v0, "\n"

    const-string v1, "\r\n"

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " *\n *"

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ \t\\x0B\u000c\r]+"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-string v9, ""

    move-object v0, v11

    .line 6
    invoke-direct/range {v0 .. v10}, Le/m/a/c/m1/r/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJLe/m/a/c/m1/r/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static f(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method


# virtual methods
.method public a(Le/m/a/c/m1/r/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)Le/m/a/c/m1/r/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/m1/r/b;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Le/m/a/c/m1/r/b;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4
    :cond_0
    iget-wide v1, p0, Le/m/a/c/m1/r/b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-wide v1, p0, Le/m/a/c/m1/r/b;->e:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10
    iget-object v3, p0, Le/m/a/c/m1/r/b;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/m1/r/b;

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, p1, v4}, Le/m/a/c/m1/r/b;->e(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public g(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Le/m/a/c/m1/r/b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v4, p0, Le/m/a/c/m1/r/b;->e:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    :cond_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1

    iget-wide v4, p0, Le/m/a/c/m1/r/b;->e:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Le/m/a/c/m1/r/b;->e:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    :cond_2
    cmp-long v0, v0, p1

    if-gtz v0, :cond_4

    iget-wide v0, p0, Le/m/a/c/m1/r/b;->e:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(JLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2}, Le/m/a/c/m1/r/b;->g(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v1, "div"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/c/m1/r/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Le/m/a/c/m1/r/b;->i:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Le/m/a/c/m1/r/b;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Le/m/a/c/m1/r/b;->c(I)Le/m/a/c/m1/r/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Le/m/a/c/m1/r/b;->h(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final i(JLjava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/m1/r/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/c/m1/r/b;->g(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/m1/r/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Le/m/a/c/m1/r/b;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Le/m/a/c/m1/r/b;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v2

    .line 5
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_1

    .line 6
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object v5, p0, Le/m/a/c/m1/r/b;->f:Le/m/a/c/m1/r/d;

    iget-object v6, p0, Le/m/a/c/m1/r/b;->g:[Ljava/lang/String;

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    .line 8
    array-length v8, v6

    if-ne v8, v7, :cond_4

    .line 9
    aget-object v5, v6, v2

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/m1/r/d;

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    .line 10
    array-length v8, v6

    if-le v8, v7, :cond_5

    .line 11
    new-instance v5, Le/m/a/c/m1/r/d;

    invoke-direct {v5}, Le/m/a/c/m1/r/d;-><init>()V

    .line 12
    array-length v8, v6

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v10, v6, v9

    .line 13
    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/c/m1/r/d;

    invoke-virtual {v5, v10}, Le/m/a/c/m1/r/d;->a(Le/m/a/c/m1/r/d;)Le/m/a/c/m1/r/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 14
    array-length v8, v6

    if-ne v8, v7, :cond_6

    .line 15
    aget-object v6, v6, v2

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/m1/r/d;

    invoke-virtual {v5, v6}, Le/m/a/c/m1/r/d;->a(Le/m/a/c/m1/r/d;)Le/m/a/c/m1/r/d;

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 16
    array-length v8, v6

    if-le v8, v7, :cond_7

    .line 17
    array-length v8, v6

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_7

    aget-object v10, v6, v9

    .line 18
    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/c/m1/r/d;

    invoke-virtual {v5, v10}, Le/m/a/c/m1/r/d;->a(Le/m/a/c/m1/r/d;)Le/m/a/c/m1/r/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v5, :cond_1

    .line 19
    invoke-virtual {v5}, Le/m/a/c/m1/r/d;->b()I

    move-result v6

    const/16 v8, 0x21

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 20
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Le/m/a/c/m1/r/d;->b()I

    move-result v9

    invoke-direct {v6, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v6, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    :cond_8
    iget v6, v5, Le/m/a/c/m1/r/d;->f:I

    if-ne v6, v7, :cond_9

    move v6, v7

    goto :goto_5

    :cond_9
    move v6, v2

    :goto_5
    if-eqz v6, :cond_a

    .line 22
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3, v6, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23
    :cond_a
    iget v6, v5, Le/m/a/c/m1/r/d;->g:I

    if-ne v6, v7, :cond_b

    move v2, v7

    :cond_b
    if-eqz v2, :cond_c

    .line 24
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    :cond_c
    iget-boolean v2, v5, Le/m/a/c/m1/r/d;->c:Z

    if-eqz v2, :cond_e

    .line 26
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 27
    iget-boolean v6, v5, Le/m/a/c/m1/r/d;->c:Z

    if-eqz v6, :cond_d

    .line 28
    iget v6, v5, Le/m/a/c/m1/r/d;->b:I

    .line 29
    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 30
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Font color has not been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_e
    :goto_6
    iget-boolean v2, v5, Le/m/a/c/m1/r/d;->e:Z

    if-eqz v2, :cond_10

    .line 32
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 33
    iget-boolean v6, v5, Le/m/a/c/m1/r/d;->e:Z

    if-eqz v6, :cond_f

    .line 34
    iget v6, v5, Le/m/a/c/m1/r/d;->d:I

    .line 35
    invoke-direct {v2, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 36
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Background color has not been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_10
    :goto_7
    iget-object v2, v5, Le/m/a/c/m1/r/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 38
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 39
    iget-object v6, v5, Le/m/a/c/m1/r/d;->a:Ljava/lang/String;

    .line 40
    invoke-direct {v2, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41
    :cond_11
    iget-object v2, v5, Le/m/a/c/m1/r/d;->m:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_12

    .line 42
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    .line 43
    iget-object v6, v5, Le/m/a/c/m1/r/d;->m:Landroid/text/Layout$Alignment;

    .line 44
    invoke-direct {v2, v6}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    :cond_12
    iget v2, v5, Le/m/a/c/m1/r/d;->j:I

    if-eq v2, v7, :cond_15

    const/4 v6, 0x2

    if-eq v2, v6, :cond_14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_13

    goto/16 :goto_0

    .line 46
    :cond_13
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 47
    iget v5, v5, Le/m/a/c/m1/r/d;->k:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 48
    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 49
    :cond_14
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 50
    iget v5, v5, Le/m/a/c/m1/r/d;->k:F

    .line 51
    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 52
    :cond_15
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 53
    iget v5, v5, Le/m/a/c/m1/r/d;->k:F

    float-to-int v5, v5

    .line 54
    invoke-direct {v2, v5, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v2, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 55
    :cond_16
    :goto_8
    invoke-virtual {p0}, Le/m/a/c/m1/r/b;->d()I

    move-result v0

    if-ge v2, v0, :cond_17

    .line 56
    invoke-virtual {p0, v2}, Le/m/a/c/m1/r/b;->c(I)Le/m/a/c/m1/r/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Le/m/a/c/m1/r/b;->i(JLjava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method public final j(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/r/b;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Le/m/a/c/m1/r/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Le/m/a/c/m1/r/b;->h:Ljava/lang/String;

    .line 5
    :goto_0
    iget-boolean v0, p0, Le/m/a/c/m1/r/b;->c:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 6
    invoke-static {p4, p5}, Le/m/a/c/m1/r/b;->f(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Le/m/a/c/m1/r/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 7
    :cond_2
    iget-object v0, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0xa

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 8
    invoke-static {p4, p5}, Le/m/a/c/m1/r/b;->f(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/m/a/c/m1/r/b;->g(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    iget-object v2, p0, Le/m/a/c/m1/r/b;->j:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Le/m/a/c/m1/r/b;->a:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    .line 13
    :goto_2
    invoke-virtual {p0}, Le/m/a/c/m1/r/b;->d()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 14
    invoke-virtual {p0, v9}, Le/m/a/c/m1/r/b;->c(I)Le/m/a/c/m1/r/b;

    move-result-object v0

    if-nez p3, :cond_6

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v3, v8

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    move v3, v1

    :goto_4
    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Le/m/a/c/m1/r/b;->j(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    .line 15
    invoke-static {p4, p5}, Le/m/a/c/m1/r/b;->f(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_8

    .line 17
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-ne p3, p4, :cond_8

    goto :goto_5

    :cond_8
    if-ltz p2, :cond_9

    .line 18
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_9

    .line 19
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 20
    :cond_9
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 21
    iget-object p3, p0, Le/m/a/c/m1/r/b;->k:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    :goto_7
    return-void
.end method
