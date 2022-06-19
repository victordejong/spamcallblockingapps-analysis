.class public Le/a/h0/v/i;
.super Le/a/h0/v/h;
.source "SourceFile"


# instance fields
.field public final b:Le/a/r2/l;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b0/q/z;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/o5/z;

.field public h:Le/a/r2/a;

.field public i:Le/a/h0/w/b;

.field public j:Le/a/h0/w/a;


# direct methods
.method public constructor <init>(Le/a/r2/l;Le/a/o5/z;Le/a/r2/f;Le/a/b0/q/z;Le/a/p5/c0;Le/a/q2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/l;",
            "Le/a/o5/z;",
            "Le/a/r2/f<",
            "Le/a/h0/r;",
            ">;",
            "Le/a/b0/q/z;",
            "Le/a/p5/c0;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/h0/v/h;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/v/i;->b:Le/a/r2/l;

    .line 3
    iput-object p2, p0, Le/a/h0/v/i;->g:Le/a/o5/z;

    .line 4
    iput-object p3, p0, Le/a/h0/v/i;->c:Le/a/r2/f;

    .line 5
    iput-object p4, p0, Le/a/h0/v/i;->d:Le/a/b0/q/z;

    .line 6
    iput-object p5, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    .line 7
    iput-object p6, p0, Le/a/h0/v/i;->f:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/h0/v/g;

    .line 2
    iget-object v0, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    if-eqz v0, :cond_6

    .line 3
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4
    iget-object p2, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    invoke-interface {p2}, Le/a/h0/w/b;->getFilter()Le/a/h0/w/a;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Le/a/h0/w/a;->a()Z

    move-result v0

    .line 6
    invoke-virtual {p2}, Le/a/h0/w/a;->b()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Le/a/h0/v/i;->g:Le/a/o5/z;

    iget-object v1, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/o5/z;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Country for "

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 9
    iget-object v0, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v4, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    aput-object v0, v1, v2

    const-string v0, "%s (+%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    iget-object v1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v2, 0x7f12003b

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p2, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v1, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->stripPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p2, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-virtual {p0, v1}, Le/a/h0/v/i;->Jj(Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move v2, v3

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Le/a/h0/v/i;->d:Le/a/b0/q/z;

    iget-object v1, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p2, Le/a/h0/w/a;->e:Ljava/lang/String;

    move v2, v3

    .line 16
    :cond_3
    iget-object v1, p2, Le/a/h0/w/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    iget-object v1, p2, Le/a/h0/w/a;->d:Ljava/lang/String;

    .line 17
    :goto_2
    iget-object v4, p2, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v5, "PHONE_NUMBER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 18
    invoke-interface {p1, v1}, Le/a/h0/v/g;->v1(Ljava/lang/String;)V

    .line 19
    iget-object p2, p2, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v1, "IM_ID"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    iget-object p2, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v0, 0x7f12038c

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_5
    invoke-interface {p1, v0}, Le/a/h0/v/g;->v4(Ljava/lang/String;)V

    .line 22
    invoke-interface {p1, v2}, Le/a/h0/v/g;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method public Hj(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    if-eqz v0, :cond_8

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    iget-object p1, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    invoke-interface {p1}, Le/a/h0/w/b;->getFilter()Le/a/h0/w/a;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/a/h0/v/i;->j:Le/a/h0/w/a;

    .line 5
    invoke-virtual {p1}, Le/a/h0/w/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/h0/v/i;->g:Le/a/o5/z;

    iget-object v3, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Le/a/o5/z;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Country was not found by iso "

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    goto/16 :goto_4

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v3, 0x7f120070

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 10
    :cond_1
    invoke-virtual {p1}, Le/a/h0/w/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-virtual {p0, v0}, Le/a/h0/v/i;->Jj(Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v3, p1, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object p1, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->stripPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v3, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v4, 0x7f120073

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object p1, v5, v1

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 14
    :cond_2
    iget-object v0, p0, Le/a/h0/v/i;->d:Le/a/b0/q/z;

    iget-object v3, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-nez v3, :cond_6

    .line 15
    iget-object v3, p1, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v4, "IM_ID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p1, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    .line 17
    :goto_1
    iget-object v0, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v3, 0x7f120074

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 18
    :cond_6
    :goto_2
    iget-object v3, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    .line 19
    :goto_3
    iget-object p1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v3, 0x7f120072

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/v/j;

    invoke-interface {v0, p1}, Le/a/h0/v/j;->jz(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public Ij()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/r;

    iget-object v1, p0, Le/a/h0/v/i;->j:Le/a/h0/w/a;

    const-string v2, "blockViewList"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/h0/r;->c(Le/a/h0/w/a;Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/v/i;->b:Le/a/r2/l;

    .line 2
    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/h0/v/c;

    invoke-direct {v2, p0}, Le/a/h0/v/c;-><init>(Le/a/h0/v/i;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public Jj(Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v0, 0x7f120033

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v0, 0x7f120032

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/h0/v/i;->e:Le/a/p5/c0;

    const v0, 0x7f120034

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public Kj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->h:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h0/v/i;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/r;

    invoke-interface {v0}, Le/a/h0/r;->b()Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/v/i;->b:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/h0/v/d;

    invoke-direct {v2, p0}, Le/a/h0/v/d;-><init>(Le/a/h0/v/i;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/v/i;->h:Le/a/r2/a;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/h0/v/j;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/h0/v/i;->f:Le/a/q2/a;

    const-string v0, "blockViewList"

    const-string v1, "blockView"

    invoke-static {v0, v1}, Le/a/q2/y0/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public Za(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3
    iput-object v1, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/h0/v/i;->h:Le/a/r2/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 6
    iput-object v1, p0, Le/a/h0/v/i;->h:Le/a/r2/a;

    .line 7
    :cond_1
    iput-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    iget-object p1, p0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    invoke-interface {p1}, Le/a/h0/w/b;->getFilter()Le/a/h0/w/a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/v/j;

    iget-object v1, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget-object p1, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Le/a/h0/v/j;->wi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h0/v/i;->Kj()V

    return-void
.end method
