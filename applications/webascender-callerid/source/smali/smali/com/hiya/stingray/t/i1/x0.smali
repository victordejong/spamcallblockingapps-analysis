.class public Lcom/hiya/stingray/t/i1/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/hiya/stingray/q/c/i/f;)Lg/g/a/a/i/m/e;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lg/g/a/a/i/m/e;

    invoke-direct {v0}, Lg/g/a/a/i/m/e;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/f;->P0()Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/f;->O0()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/m/e;->setId(I)V

    .line 5
    new-instance v1, Lg/g/a/a/i/m/b;

    invoke-direct {v1}, Lg/g/a/a/i/m/b;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/f;->P0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/g/a/a/i/m/b;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lg/g/a/a/i/m/e;->setNameSection(Lg/g/a/a/i/m/b;)V

    return-object v0
.end method

.method private c(Lcom/hiya/stingray/t/b1;)Lcom/hiya/stingray/q/c/i/f;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/b1;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hiya/stingray/q/c/i/f;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lg/g/a/a/i/m/d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/m/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/m/d;->getCategories()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/m/d;->getCategories()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/i/m/e;

    .line 6
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/t/i1/x0;->f(Lg/g/a/a/i/m/e;)Lcom/hiya/stingray/t/b1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/b1;

    invoke-direct {p0, v2}, Lcom/hiya/stingray/t/i1/x0;->c(Lcom/hiya/stingray/t/b1;)Lcom/hiya/stingray/q/c/i/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public e(Ljava/util/List;)Lg/g/a/a/i/m/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/f;",
            ">;)",
            "Lg/g/a/a/i/m/d;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/f;

    .line 4
    invoke-direct {p0, v1}, Lcom/hiya/stingray/t/i1/x0;->b(Lcom/hiya/stingray/q/c/i/f;)Lg/g/a/a/i/m/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Lg/g/a/a/i/m/d;

    invoke-direct {p1}, Lg/g/a/a/i/m/d;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lg/g/a/a/i/m/d;->setCategories(Ljava/util/List;)V

    return-object p1
.end method

.method public f(Lg/g/a/a/i/m/e;)Lcom/hiya/stingray/t/b1;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getNameSection()Lg/g/a/a/i/m/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getNameSection()Lg/g/a/a/i/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/i/m/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/t/b1;->a(Ljava/lang/String;I)Lcom/hiya/stingray/t/b1;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/t/b1;->a(Ljava/lang/String;I)Lcom/hiya/stingray/t/b1;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/g/a/a/i/m/g;)Lcom/hiya/stingray/t/c1;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    invoke-static {}, Lcom/hiya/stingray/t/c1$a;->a()Lcom/hiya/stingray/t/c1$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/c1$a;->c(I)Lcom/hiya/stingray/t/c1$a;

    .line 6
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/k;->n(Ljava/lang/String;)Lorg/joda/time/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/k;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/c1$a;->g(J)Lcom/hiya/stingray/t/c1$a;

    .line 7
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/c1$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;

    .line 8
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getCommentDTO()Lg/g/a/a/i/m/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getCommentDTO()Lg/g/a/a/i/m/f;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/a/a/i/m/f;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/c1$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;

    .line 10
    invoke-virtual {p1}, Lg/g/a/a/i/m/g;->getCommentDTO()Lg/g/a/a/i/m/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/a/a/i/m/f;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/c1$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/hiya/stingray/t/c1$a;->b()Lcom/hiya/stingray/t/c1;

    move-result-object p1

    return-object p1
.end method
