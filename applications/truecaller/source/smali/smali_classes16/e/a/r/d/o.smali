.class public final Le/a/r/d/o;
.super Le/a/b0/q/i;
.source "SourceFile"


# instance fields
.field public d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r/c/a0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "countriesHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/r/c/a0/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/b0/q/i;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/r/d/o;->d:Ls1/z/b/l;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<com.truecaller.common.network.country.CountryListDto.Country>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_1
    return-void
.end method
