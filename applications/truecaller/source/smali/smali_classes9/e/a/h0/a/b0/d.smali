.class public final Le/a/h0/a/b0/d;
.super Le/a/h0/a/b0/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public final d:Le/a/r2/j;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/r2/j;Le/a/o5/z;Le/a/r2/f;Le/a/p5/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/o5/z;",
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;",
            "Le/a/p5/c0;",
            ")V"
        }
    .end annotation

    const-string v0, "uiThread"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/h0/a/b0/c;-><init>()V

    iput-object p1, p0, Le/a/h0/a/b0/d;->d:Le/a/r2/j;

    iput-object p3, p0, Le/a/h0/a/b0/d;->e:Le/a/r2/f;

    iput-object p4, p0, Le/a/h0/a/b0/d;->f:Le/a/p5/c0;

    .line 2
    invoke-interface {p2}, Le/a/o5/z;->a()Ljava/util/List;

    move-result-object p1

    const-string p2, "countryManager.allCountries"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/h0/a/b0/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/h0/a/d0/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Le/a/h0/a/b0/d;->f:Le/a/p5/c0;

    const v0, 0x7f120029

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/h0/a/d0/i;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/h0/a/b0/d;->b:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/h0/a/d0/i;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Hj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/b0/d;->c:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "Country had no name"

    .line 3
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h0/a/b0/e;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-interface {v1, v0}, Le/a/h0/a/b0/e;->C7(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public Ij()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/a/b0/d;->c:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/h0/a/b0/d;->e:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h0/r;

    const-string v2, "blockView"

    .line 3
    invoke-interface {v1, v0, v2}, Le/a/h0/r;->e(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/h0/a/b0/d;->d:Le/a/r2/j;

    new-instance v2, Le/a/h0/a/b0/d$a;

    invoke-direct {v2, p0}, Le/a/h0/a/b0/d$a;-><init>(Le/a/h0/a/b0/d;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public Jj(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/a/h0/a/b0/d;->c:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/b0/e;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/h0/a/b0/e;->N(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h0/a/b0/d;->b:Ljava/util/List;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    iput-object p1, p0, Le/a/h0/a/b0/d;->c:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/b0/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Le/a/h0/a/b0/e;->N(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/b0/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h0/a/b0/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Le/a/h0/a/b0/e;->N(Z)V

    return-void
.end method

.method public Za(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
