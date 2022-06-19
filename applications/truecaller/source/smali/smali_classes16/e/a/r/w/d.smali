.class public final synthetic Le/a/r/w/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/r/w/e;


# direct methods
.method public synthetic constructor <init>(Le/a/r/w/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/d;->a:Le/a/r/w/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/a/r/w/d;->a:Le/a/r/w/e;

    .line 1
    iget-object v0, v0, Le/a/r/w/e;->i:Le/a/r/w/g;

    check-cast v0, Le/a/r/w/j;

    .line 2
    iget-object v1, v0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    const-string v2, "country"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v4, "country.iso ?: return"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v4, v0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    .line 4
    iget-object v4, v0, Le/a/r/w/j;->q:Le/a/r/z/b0;

    .line 5
    sget-object v5, Le/a/r/z/o$c;->e:Le/a/r/z/o$c;

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    :cond_0
    iget-object v2, v0, Le/a/r/w/j;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 8
    :goto_0
    check-cast v4, Le/a/r/z/c0;

    invoke-virtual {v4, v5, v1, v3, v2}, Le/a/r/z/c0;->a(Le/a/r/z/o;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Le/a/r/z/h;

    move-result-object v1

    .line 9
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/w/h;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Le/a/r/w/h;->D5(Le/a/r/z/h;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/w/h;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/r/w/h;->hc()V

    .line 11
    :cond_2
    iget-object v0, v0, Le/a/r/w/j;->r:Le/a/r/z/d0/d;

    check-cast v0, Le/a/r/z/d0/e;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v3, Le/a/r/z/d0/l;

    iget-object v0, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v3, v5, v1, v0}, Le/a/r/z/d0/l;-><init>(Le/a/r/z/o;ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_4
    :goto_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 16
    :cond_5
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
