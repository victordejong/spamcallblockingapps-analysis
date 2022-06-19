.class public final Le/a/r/d/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/d/d$b;


# direct methods
.method public constructor <init>(Le/a/r/d/d$b;)V
    .locals 0

    iput-object p1, p0, Le/a/r/d/e;->b:Le/a/r/d/d$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/r/d/e;->b:Le/a/r/d/d$b;

    iget-object v0, v0, Le/a/r/d/d$b;->b:Le/a/r/d/d;

    .line 3
    iget-object v0, v0, Le/a/r/d/d;->e:Le/a/r/d/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    check-cast v0, Le/a/r/d/j;

    .line 5
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/d/i;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Le/a/r/d/i;->e0()V

    .line 6
    :cond_0
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/d/i;

    if-eqz v2, :cond_2

    iget-object v3, v0, Le/a/r/d/j;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    const-string v1, "country"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/truecaller/wizard/countries/WizardCountryData;

    iget-object v3, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/truecaller/wizard/countries/WizardCountryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v2, v1}, Le/a/r/d/i;->be(Lcom/truecaller/wizard/countries/WizardCountryData;)V

    goto :goto_0

    :cond_1
    const-string p1, "displayedCountries"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    :goto_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/d/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/r/d/i;->finish()V

    .line 11
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_4
    const-string p1, "presenter"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
