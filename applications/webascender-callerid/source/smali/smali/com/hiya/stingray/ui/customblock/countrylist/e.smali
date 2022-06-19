.class public final Lcom/hiya/stingray/ui/customblock/countrylist/e;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/customblock/countrylist/f;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/l0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->d:Li/c/b0/c/a;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/customblock/countrylist/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/customblock/countrylist/e;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->b:Ljava/util/List;

    return-void
.end method

.method private final w()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/l0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/e;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.fromCallable \u2026ryInfoItems\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final v()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/countrylist/e;->w()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/customblock/countrylist/e$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/e$b;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->d:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 8

    const-string v0, "searchText"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/customblock/countrylist/f;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/hiya/stingray/ui/customblock/countrylist/f;->G(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->b:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/hiya/stingray/t/l0;

    .line 6
    invoke-virtual {v6}, Lcom/hiya/stingray/t/l0;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 7
    invoke-static {v7, p1, v5}, Lkotlin/c0/m;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eq v7, v5, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/hiya/stingray/t/l0;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 8
    invoke-static {v6, p1, v5}, Lkotlin/c0/m;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-ne v6, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    new-instance v0, Lkotlin/c0/j;

    const-string v3, "\\+{0,1}[0-9]+"

    invoke-direct {v0, v3}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/c0/j;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-ne v4, v5, :cond_7

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e;->c:Landroid/content/Context;

    const v1, 0x7f11005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 13
    invoke-static {v1, v0, p1}, Lcom/hiya/stingray/t/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/t/l0;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-nez v4, :cond_8

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/customblock/countrylist/f;

    invoke-interface {p1, v2, v1}, Lcom/hiya/stingray/ui/customblock/countrylist/f;->G(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V

    return-void

    .line 15
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
