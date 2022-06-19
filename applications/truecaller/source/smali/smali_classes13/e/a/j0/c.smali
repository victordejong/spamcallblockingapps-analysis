.class public final Le/a/j0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j0/b;


# instance fields
.field public final a:Le/a/j0/d;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Le/a/j0/d;JJ)V
    .locals 1

    const-string v0, "callingStatsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j0/c;->a:Le/a/j0/d;

    iput-wide p2, p0, Le/a/j0/c;->b:J

    iput-wide p4, p0, Le/a/j0/c;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/j0/c;->a:Le/a/j0/d;

    iget-wide v1, p0, Le/a/j0/c;->b:J

    iget-wide v3, p0, Le/a/j0/c;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/j0/d;->a(JJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/j0/c;->a:Le/a/j0/d;

    iget-wide v1, p0, Le/a/j0/c;->b:J

    iget-wide v3, p0, Le/a/j0/c;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/j0/d;->b(JJ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ls1/k;

    const v3, 0x7f121100

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4
    new-instance v7, Ls1/k;

    invoke-direct {v7, v4, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v5

    const/4 v4, 0x1

    const v6, 0x7f1210fe

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 6
    new-instance v9, Ls1/k;

    invoke-direct {v9, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v4

    const/4 v4, 0x2

    const v7, 0x7f1210ff

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 8
    new-instance v10, Ls1/k;

    invoke-direct {v10, v8, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v4

    const v4, 0x7f121101

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 10
    new-instance v9, Ls1/k;

    invoke-direct {v9, v8, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v9, v2, v5

    .line 11
    invoke-static {v2}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const-string v11, "calendar"

    .line 14
    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v9, 0xb

    .line 16
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xa

    if-le v5, v10, :cond_1

    goto :goto_1

    :cond_1
    if-lt v11, v10, :cond_2

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v2

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {p0, v10}, Le/a/j0/c;->e(Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v11, 0xe

    if-le v9, v10, :cond_3

    goto :goto_2

    :cond_3
    if-lt v11, v10, :cond_4

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v2

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {p0, v10}, Le/a/j0/c;->e(Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_2
    const/16 v9, 0x16

    const/16 v11, 0xf

    if-le v11, v10, :cond_5

    goto :goto_3

    :cond_5
    if-lt v9, v10, :cond_6

    .line 19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v2

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {p0, v10}, Le/a/j0/c;->e(Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 20
    :cond_6
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v2

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {p0, v10}, Le/a/j0/c;->e(Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_7
    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v1

    goto :goto_4

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge v3, v5, :cond_b

    move-object v2, v4

    move v3, v5

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    :goto_4
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    :cond_c
    :goto_5
    return-object v1
.end method

.method public c()Lcom/truecaller/data/entity/Contact;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/j0/c;->a:Le/a/j0/d;

    iget-wide v1, p0, Le/a/j0/c;->b:J

    iget-wide v3, p0, Le/a/j0/c;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/j0/d;->c(JJ)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/j0/c;->a:Le/a/j0/d;

    iget-wide v1, p0, Le/a/j0/c;->b:J

    iget-wide v3, p0, Le/a/j0/c;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/j0/d;->d(JJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Integer;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
