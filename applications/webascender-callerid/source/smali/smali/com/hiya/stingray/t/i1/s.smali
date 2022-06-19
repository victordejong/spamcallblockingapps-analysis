.class public Lcom/hiya/stingray/t/i1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/q0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/i1/q0;)V
    .locals 1

    const-string v0, "ratingMapper"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/t/i1/s;->a:Lcom/hiya/stingray/t/i1/q0;

    return-void
.end method

.method private final a(Lg/g/a/a/i/l/a;)Lcom/hiya/stingray/t/n;
    .locals 4

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n;->a()Lcom/hiya/stingray/t/n$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/a;->getCity()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, ""

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/a;->getState()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/l/a;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/l/a;->getCountry()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 6
    invoke-virtual {v0, v3}, Lcom/hiya/stingray/t/n$a;->b(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    if-eqz p1, :cond_8

    .line 7
    invoke-virtual {p1}, Lg/g/a/a/i/l/a;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    move-object v3, v1

    :cond_9
    invoke-virtual {v0, v3}, Lcom/hiya/stingray/t/n$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n$a;->a()Lcom/hiya/stingray/t/n;

    move-result-object p1

    const-string v0, "AddressComponent.builder\u2026ddress.orEmpty()).build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Lg/g/a/a/i/l/b;)Lcom/hiya/stingray/t/h1/a;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/b;->getAttributionName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    move-object v2, v0

    .line 4
    :cond_5
    new-instance p1, Lcom/hiya/stingray/t/h1/a;

    invoke-direct {p1, v1, v3, v2}, Lcom/hiya/stingray/t/h1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final c(Lg/g/a/a/i/l/e;)Lcom/hiya/stingray/t/h1/d;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    const-string v1, "directoryDTO.businessId"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "directoryDTO.name"

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getType()Lg/g/a/a/i/j/a;

    move-result-object v1

    const-string v4, "directoryDTO.type"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/s;->d(Lg/g/a/a/i/j/a;)Lcom/hiya/stingray/t/h1/d$a;

    move-result-object v4

    .line 4
    iget-object v1, v0, Lcom/hiya/stingray/t/i1/s;->a:Lcom/hiya/stingray/t/i1/q0;

    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getRatingDTO()Lg/g/a/a/i/l/m;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hiya/stingray/t/i1/q0;->a(Lg/g/a/a/i/l/m;)Lcom/hiya/stingray/t/h1/h;

    move-result-object v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getPrice()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    if-eqz v1, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v6

    .line 7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getPhoneDTOs()Ljava/util/List;

    move-result-object v1

    const-string v9, "it"

    if-eqz v1, :cond_2

    .line 8
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 10
    check-cast v12, Lg/g/a/a/i/l/k;

    .line 11
    invoke-static {v12, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lg/g/a/a/i/l/k;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :cond_3
    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    .line 12
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getDisplayCategories()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    :goto_4
    move-object v12, v1

    .line 13
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v13, v1

    goto :goto_5

    :cond_6
    move-object v13, v6

    .line 14
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getDistance()D

    move-result-wide v14

    .line 15
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getAddressDTO()Lg/g/a/a/i/l/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/s;->a(Lg/g/a/a/i/l/a;)Lcom/hiya/stingray/t/n;

    move-result-object v16

    .line 16
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getDisplayUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v17, v1

    goto :goto_6

    :cond_7
    move-object/from16 v17, v6

    .line 17
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object/from16 v19, v1

    goto :goto_7

    :cond_8
    move-object/from16 v19, v6

    .line 18
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getAttributionDTO()Lg/g/a/a/i/l/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/s;->b(Lg/g/a/a/i/l/b;)Lcom/hiya/stingray/t/h1/a;

    move-result-object v20

    .line 19
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getLabels()Ljava/util/List;

    move-result-object v1

    const/16 v18, 0x0

    if-eqz v1, :cond_c

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Lg/g/a/a/i/l/i;

    .line 21
    invoke-static {v6, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/g/a/a/i/l/i;->getType()Lg/g/a/a/i/j/c;

    move-result-object v6

    sget-object v10, Lg/g/a/a/i/j/c;->RESERVATION:Lg/g/a/a/i/j/c;

    if-ne v6, v10, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_9

    goto :goto_9

    :cond_b
    const/16 v21, 0x0

    .line 22
    :goto_9
    check-cast v21, Lg/g/a/a/i/l/i;

    move-object/from16 v1, v21

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    .line 23
    :goto_a
    sget-object v6, Lcom/hiya/stingray/t/h1/g;->RESERVATION:Lcom/hiya/stingray/t/h1/g;

    invoke-direct {v0, v1, v6}, Lcom/hiya/stingray/t/i1/s;->f(Lg/g/a/a/i/l/i;Lcom/hiya/stingray/t/h1/g;)Lcom/hiya/stingray/t/h1/f;

    move-result-object v21

    .line 24
    invoke-virtual/range {p1 .. p1}, Lg/g/a/a/i/l/e;->getLabels()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lg/g/a/a/i/l/i;

    .line 26
    invoke-static {v10, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lg/g/a/a/i/l/i;->getType()Lg/g/a/a/i/j/c;

    move-result-object v10

    move-object/from16 p1, v1

    sget-object v1, Lg/g/a/a/i/j/c;->DELIVERY:Lg/g/a/a/i/j/c;

    if-ne v10, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_e

    move-object v10, v6

    goto :goto_d

    :cond_e
    move-object/from16 v1, p1

    goto :goto_b

    :cond_f
    const/4 v10, 0x0

    .line 27
    :goto_d
    check-cast v10, Lg/g/a/a/i/l/i;

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    .line 28
    :goto_e
    sget-object v1, Lcom/hiya/stingray/t/h1/g;->DELIVERY:Lcom/hiya/stingray/t/h1/g;

    invoke-direct {v0, v10, v1}, Lcom/hiya/stingray/t/i1/s;->f(Lg/g/a/a/i/l/i;Lcom/hiya/stingray/t/h1/g;)Lcom/hiya/stingray/t/h1/f;

    move-result-object v18

    .line 29
    new-instance v22, Lcom/hiya/stingray/t/h1/d;

    move-object/from16 v1, v22

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-wide v11, v14

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-direct/range {v1 .. v18}, Lcom/hiya/stingray/t/h1/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/d$a;Lcom/hiya/stingray/t/h1/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;DLcom/hiya/stingray/t/n;Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/a;Lcom/hiya/stingray/t/h1/f;Lcom/hiya/stingray/t/h1/f;)V

    return-object v22
.end method

.method private final d(Lg/g/a/a/i/j/a;)Lcom/hiya/stingray/t/h1/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/i1/r;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/t/h1/d$a;->ORGANIC:Lcom/hiya/stingray/t/h1/d$a;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/hiya/stingray/t/h1/d$a;->AFFILIATE:Lcom/hiya/stingray/t/h1/d$a;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/hiya/stingray/t/h1/d$a;->AD:Lcom/hiya/stingray/t/h1/d$a;

    :goto_0
    return-object p1
.end method

.method private final f(Lg/g/a/a/i/l/i;Lcom/hiya/stingray/t/h1/g;)Lcom/hiya/stingray/t/h1/f;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/i;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/i;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 3
    :cond_3
    new-instance p1, Lcom/hiya/stingray/t/h1/f;

    invoke-direct {p1, v1, v2, p2}, Lcom/hiya/stingray/t/h1/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/g;)V

    return-object p1
.end method


# virtual methods
.method public e(Lg/g/a/a/i/l/g;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/l/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    const-string v0, "directoryResponseDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/g;->getDirectorySearchResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lg/g/a/a/i/l/e;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/hiya/stingray/t/i1/s;->c(Lg/g/a/a/i/l/e;)Lcom/hiya/stingray/t/h1/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
