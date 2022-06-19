.class public Lcom/hiya/stingray/t/i1/q;
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

    iput-object p1, p0, Lcom/hiya/stingray/t/i1/q;->a:Lcom/hiya/stingray/t/i1/q0;

    return-void
.end method

.method private final a(Lg/g/a/a/i/l/j;)Lcom/hiya/stingray/t/h1/b;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/j;->getTitle()Ljava/lang/String;

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
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/j;->getDiscountedPriceDTO()Lg/g/a/a/i/l/l;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lg/g/a/a/i/l/l;->getValue()D

    move-result-wide v5

    move-wide v8, v5

    goto :goto_2

    :cond_2
    move-wide v8, v3

    :goto_2
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/j;->getOriginalPriceDTO()Lg/g/a/a/i/l/l;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lg/g/a/a/i/l/l;->getValue()D

    move-result-wide v3

    :cond_3
    move-wide v10, v3

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/l/j;->getOriginalPriceDTO()Lg/g/a/a/i/l/l;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lg/g/a/a/i/l/l;->getIsoCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_5

    move-object v12, v3

    goto :goto_4

    :cond_5
    move-object v12, v2

    .line 5
    :goto_4
    new-instance v3, Lcom/hiya/stingray/t/h1/b$b;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/hiya/stingray/t/h1/b$b;-><init>(DDLjava/lang/String;)V

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1}, Lg/g/a/a/i/l/j;->getDealUrl()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    move-object v2, v0

    .line 7
    :cond_7
    new-instance p1, Lcom/hiya/stingray/t/h1/b;

    invoke-direct {p1, v1, v3, v2}, Lcom/hiya/stingray/t/h1/b;-><init>(Ljava/lang/String;Lcom/hiya/stingray/t/h1/b$b;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/j;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/b;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    .line 2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lg/g/a/a/i/l/j;

    .line 5
    invoke-direct {p0, v1}, Lcom/hiya/stingray/t/i1/q;->a(Lg/g/a/a/i/l/j;)Lcom/hiya/stingray/t/h1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(Lg/g/a/a/i/l/f;)Lcom/hiya/stingray/t/h1/c;
    .locals 7

    const-string v0, "directoryDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/e;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    const-string v0, "directoryDTO.businessId"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/e;->getCouponDTO()Lg/g/a/a/i/l/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/a/a/i/l/d;->getOfferDTOList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/hiya/stingray/t/i1/q;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/f;->getOpenNow()Ljava/lang/Boolean;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/l/f;->getHoursToday()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    move-object v5, v0

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/t/i1/q;->a:Lcom/hiya/stingray/t/i1/q0;

    invoke-virtual {p1}, Lg/g/a/a/i/l/e;->getRatingDTO()Lg/g/a/a/i/l/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/q0;->a(Lg/g/a/a/i/l/m;)Lcom/hiya/stingray/t/h1/h;

    move-result-object v6

    .line 6
    new-instance p1, Lcom/hiya/stingray/t/h1/c;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/t/h1/c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/hiya/stingray/t/h1/h;)V

    return-object p1
.end method
