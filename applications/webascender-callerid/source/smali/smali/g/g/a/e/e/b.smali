.class public final Lg/g/a/e/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lg/g/a/e/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lg/g/a/e/e/l;

.field public static final c:Lg/g/a/e/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/e/e/b;

    invoke-direct {v0}, Lg/g/a/e/e/b;-><init>()V

    sput-object v0, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;
    .locals 4

    .line 1
    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p2, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lg/g/a/e/e/c;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 3
    :cond_1
    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "repo.values"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/a/e/e/c;

    .line 5
    invoke-virtual {v2}, Lg/g/a/e/e/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 6
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must call markCall first. Phone number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "LogAggregator"

    invoke-static {v0, p1, p2}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method private final b()Lg/g/a/e/e/c;
    .locals 2

    .line 1
    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "repo.entries"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->U(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/e/e/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic d(Lg/g/a/e/e/b;Ljava/lang/String;Lg/g/a/e/e/l;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg/g/a/e/e/b;->c(Ljava/lang/String;Lg/g/a/e/e/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lg/g/a/e/e/l;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "rawPhone"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "performanceManager"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imageUrl"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object v1, Lg/g/a/e/e/b;->b:Lg/g/a/e/e/l;

    .line 2
    sget-object v1, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lg/g/a/e/e/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfff

    const/16 v17, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lg/g/a/e/e/c;-><init>(Ljava/lang/String;Lg/g/a/e/e/k;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/k;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/j;ILkotlin/w/c/g;)V

    .line 4
    new-instance v3, Lg/g/a/e/e/o;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x6

    const/16 v25, 0x0

    const-string v19, "IncomingRingTerminated"

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJILkotlin/w/c/g;)V

    invoke-virtual {v1, v3}, Lg/g/a/e/e/c;->x(Lg/g/a/e/e/o;)V

    .line 5
    sget-object v3, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object/from16 v3, p0

    .line 6
    invoke-direct {v3, v0, v1}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v1, v2}, Lg/g/a/e/e/c;->q(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Lg/g/a/e/e/g;Lg/g/a/e/e/o;Ljava/lang/String;)V
    .locals 9

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lg/g/a/e/e/b;->b()Lg/g/a/e/e/c;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2
    invoke-virtual {p3}, Lg/g/a/e/e/c;->k()Lg/g/a/e/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/g/a/e/e/k;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lg/g/a/e/e/k;-><init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;ILkotlin/w/c/g;)V

    .line 3
    :goto_0
    sget-object v1, Lg/g/a/e/e/a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0, p2}, Lg/g/a/e/e/k;->f(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0, p2}, Lg/g/a/e/e/k;->h(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v0, p2}, Lg/g/a/e/e/k;->g(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0, p2}, Lg/g/a/e/e/k;->e(Lg/g/a/e/e/o;)V

    .line 8
    :goto_1
    invoke-virtual {p3, v0}, Lg/g/a/e/e/c;->u(Lg/g/a/e/e/k;)V

    :cond_5
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "rawPhone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lg/g/a/e/e/o;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "ImageRefFound"

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJILkotlin/w/c/g;)V

    invoke-virtual {p1, p2}, Lg/g/a/e/e/c;->p(Lg/g/a/e/e/o;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "rawPhone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lg/g/a/e/e/o;->e(J)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/j;)V
    .locals 9

    const-string v0, "rawPhone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheType"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lg/g/a/e/e/c;->e()Lg/g/a/e/e/o;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/g/a/e/e/o;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 3
    new-instance p2, Lg/g/a/e/e/o;

    invoke-virtual {p1}, Lg/g/a/e/e/c;->e()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/g/a/e/e/o;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v2, "ImageFound"

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJILkotlin/w/c/g;)V

    invoke-virtual {p1, p2}, Lg/g/a/e/e/c;->r(Lg/g/a/e/e/o;)V

    .line 4
    invoke-virtual {p1, p3}, Lg/g/a/e/e/c;->o(Lg/g/a/e/e/j;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final i(Ljava/lang/String;Lg/g/a/e/e/j;)V
    .locals 10

    const-string v0, "rawPhone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/a/e/e/o;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lg/g/a/e/e/o;

    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/g/a/e/e/o;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v3, "NameFound"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lg/g/a/e/e/c;->s(Lg/g/a/e/e/o;)V

    .line 4
    invoke-virtual {p1, p2}, Lg/g/a/e/e/c;->o(Lg/g/a/e/e/j;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public final j(Lg/g/a/e/e/g;Lg/g/a/e/e/o;)V
    .locals 10

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lg/g/a/e/e/b;->b()Lg/g/a/e/e/c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lg/g/a/e/e/c;->l()Lg/g/a/e/e/k;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/g/a/e/e/k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lg/g/a/e/e/k;-><init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;ILkotlin/w/c/g;)V

    .line 3
    :goto_0
    sget-object v2, Lg/g/a/e/e/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1, p2}, Lg/g/a/e/e/k;->f(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1, p2}, Lg/g/a/e/e/k;->h(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v1, p2}, Lg/g/a/e/e/k;->g(Lg/g/a/e/e/o;)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v1, p2}, Lg/g/a/e/e/k;->e(Lg/g/a/e/e/o;)V

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Lg/g/a/e/e/c;->v(Lg/g/a/e/e/k;)V

    :cond_5
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "rawPhone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileTag"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lg/g/a/e/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/e/e/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/a/e/e/o;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lg/g/a/e/e/o;

    invoke-virtual {p1}, Lg/g/a/e/e/c;->n()Lg/g/a/e/e/o;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/g/a/e/e/o;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v3, "NameShown"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lg/g/a/e/e/c;->t(Lg/g/a/e/e/o;)V

    .line 4
    invoke-virtual {p1, p2}, Lg/g/a/e/e/c;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "repo.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/e/e/c;

    .line 3
    sget-object v2, Lg/g/a/e/e/b;->b:Lg/g/a/e/e/l;

    if-eqz v2, :cond_0

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lg/g/a/e/e/l;->a(Lg/g/a/e/e/c;)V

    goto :goto_0

    :cond_0
    const-string v0, "performanceManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    sget-object v0, Lg/g/a/e/e/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
