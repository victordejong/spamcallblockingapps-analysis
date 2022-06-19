.class public final Lcom/hiya/client/callerid/dao/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/common/phone/java/PhoneNormalizer$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/client/callerid/dao/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/dao/i;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingCountriesDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/m;->b:Lcom/hiya/client/callerid/dao/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/m;->b:Lcom/hiya/client/callerid/dao/i;

    invoke-interface {v0}, Lcom/hiya/client/callerid/dao/i;->a()Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lg/g/b/a/e;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026hashPhoneNumberCountries)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 6
    new-instance v5, Lg/g/c/a/a/a/c;

    invoke-direct {v5, v4}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/z;->t(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "ImmutableSet.copyOf(cont\u2026{ Data.CountryCode(it) })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "countries"

    .line 7
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    new-instance v2, Lg/g/c/a/a/a/c;

    invoke-direct {v2, v3}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lkotlin/s/k;->p()V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    invoke-static {v1}, Lcom/google/common/collect/z;->t(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "ImmutableSet.copyOf<Data\u2026ntryCode) }\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
