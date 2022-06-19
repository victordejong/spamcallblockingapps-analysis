.class public abstract Le/a/b0/q/i;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "countries"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Le/a/b0/q/i;->c:Ljava/util/List;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/b0/q/i;->a:Ljava/util/List;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Le/a/b0/q/i;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2
    iget-object v0, p0, Le/a/b0/q/i;->c:Ljava/util/List;

    goto/16 :goto_8

    .line 3
    :cond_2
    iget-object v2, p0, Le/a/b0/q/i;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 4
    iget-object v2, p0, Le/a/b0/q/i;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Le/a/b0/q/i;->a:Ljava/util/List;

    goto :goto_3

    .line 5
    :cond_4
    iget-object v2, p0, Le/a/b0/q/i;->c:Ljava/util/List;

    .line 6
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 8
    iget-object v5, v5, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5, p1, v1}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    goto :goto_5

    :cond_6
    move v5, v0

    :goto_5
    if-eqz v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 9
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 13
    iget-object v6, v6, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-static {v6, p1, v1}, Ls1/f0/v;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    goto :goto_7

    :cond_8
    move v6, v0

    :goto_7
    if-eqz v6, :cond_9

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 15
    :cond_9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 16
    :cond_a
    check-cast v2, Ljava/util/Collection;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 17
    :goto_8
    iput-object v0, p0, Le/a/b0/q/i;->a:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_b
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_c

    goto :goto_a

    :cond_c
    const-string p1, ""

    :goto_a
    iput-object p1, p0, Le/a/b0/q/i;->b:Ljava/lang/CharSequence;

    .line 19
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 20
    iget-object v0, p0, Le/a/b0/q/i;->a:Ljava/util/List;

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method
