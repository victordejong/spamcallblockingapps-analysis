.class public Le/a/h0/a/d0/f;
.super Le/a/h0/a/d0/e;
.source "SourceFile"


# instance fields
.field public final b:Le/a/r2/j;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o5/z;

.field public final e:Le/a/b0/q/z;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/j;Le/a/r2/f;Le/a/o5/z;Le/a/b0/q/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;",
            "Le/a/o5/z;",
            "Le/a/b0/q/z;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/h0/a/d0/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/a/d0/f;->b:Le/a/r2/j;

    .line 3
    iput-object p2, p0, Le/a/h0/a/d0/f;->c:Le/a/r2/f;

    .line 4
    iput-object p3, p0, Le/a/h0/a/d0/f;->d:Le/a/o5/z;

    .line 5
    iput-object p4, p0, Le/a/h0/a/d0/f;->e:Le/a/b0/q/z;

    .line 6
    invoke-interface {p3}, Le/a/o5/z;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/h0/a/d0/f;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/h0/a/d0/i;

    .line 2
    iget-object v0, p0, Le/a/h0/a/d0/f;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/network/country/CountryListDto$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p2, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "%s (+%s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/h0/a/d0/i;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public Hj()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/h0/a/d0/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h0/a/d0/g;->R1(Z)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    invoke-interface {v0, v1}, Le/a/h0/a/d0/g;->N(Z)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    invoke-interface {v0}, Le/a/h0/a/d0/g;->nh()I

    move-result v0

    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Le/a/h0/a/d0/f;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/country/CountryListDto$a;

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h0/a/d0/g;

    invoke-interface {v1}, Le/a/h0/a/d0/g;->t2()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/a/h0/a/d0/f;->e:Le/a/b0/q/z;

    invoke-interface {v2}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Le/a/b0/q/z;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "OTHER"

    move-object v4, v0

    move-object v3, v1

    goto :goto_1

    :cond_2
    const-string v1, "PHONE_NUMBER"

    move-object v3, v0

    move-object v4, v1

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/h0/a/d0/f;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/h0/r;

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    .line 9
    invoke-interface {v0}, Le/a/h0/a/d0/g;->E5()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    .line 10
    invoke-interface {v0}, Le/a/h0/a/d0/g;->tp()Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "blockView"

    .line 11
    invoke-interface/range {v2 .. v10}, Le/a/h0/r;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/a/d0/f;->b:Le/a/r2/j;

    new-instance v2, Le/a/h0/a/d0/b;

    invoke-direct {v2, p0}, Le/a/h0/a/d0/b;-><init>(Le/a/h0/a/d0/f;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public Ij(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/d0/g;

    invoke-interface {p1, v1}, Le/a/h0/a/d0/g;->N(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/h0/a/d0/f;->d:Le/a/o5/z;

    invoke-interface {v0, p1}, Le/a/o5/z;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/h0/a/d0/f;->Jj(Lcom/truecaller/common/network/country/CountryListDto$a;)V

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x3

    if-lt p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v1}, Le/a/h0/a/d0/g;->N(Z)V

    :goto_0
    return-void
.end method

.method public final Jj(Lcom/truecaller/common/network/country/CountryListDto$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/h0/a/d0/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/d0/g;

    invoke-interface {v0, p1}, Le/a/h0/a/d0/g;->Pb(I)V

    :cond_0
    return-void
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/d0/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h0/a/d0/g;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Le/a/h0/a/d0/g;->N(Z)V

    .line 4
    iget-object p1, p0, Le/a/h0/a/d0/f;->d:Le/a/o5/z;

    invoke-interface {p1}, Le/a/o5/z;->d()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h0/a/d0/f;->Jj(Lcom/truecaller/common/network/country/CountryListDto$a;)V

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
