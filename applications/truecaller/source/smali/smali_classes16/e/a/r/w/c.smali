.class public final synthetic Le/a/r/w/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/r/w/e;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/r/w/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/c;->a:Le/a/r/w/e;

    iput-object p2, p0, Le/a/r/w/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Le/a/r/w/c;->a:Le/a/r/w/e;

    iget-object p2, p0, Le/a/r/w/c;->b:Ljava/lang/String;

    .line 1
    iget-object p1, p1, Le/a/r/w/e;->i:Le/a/r/w/g;

    check-cast p1, Le/a/r/w/j;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/w/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Le/a/r/w/h;->setPhoneNumber(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p1, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    const-string v1, "country"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v3, "country.code ?: return"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p1, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v3, :cond_8

    iget-object v1, v3, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "country.iso ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Le/a/r/w/j;->e:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    iget-object p2, p1, Le/a/r/w/j;->j:Le/a/r/c/z;

    iget-object v2, p1, Le/a/r/w/j;->e:Ljava/lang/String;

    iget-object v3, p1, Le/a/r/w/j;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "SIM"

    goto :goto_3

    :cond_5
    const-string v2, "ManualEntry"

    :goto_3
    invoke-interface {p2, v2}, Le/a/r/c/z;->d(Ljava/lang/String;)V

    .line 8
    iget-object p2, p1, Le/a/r/w/j;->j:Le/a/r/c/z;

    iget-object v2, p1, Le/a/r/w/j;->e:Ljava/lang/String;

    invoke-interface {p2, v2}, Le/a/r/c/z;->c(Ljava/lang/String;)V

    .line 9
    iget-object p2, p1, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {p2, v0}, Le/a/r/c/z;->i(Ljava/lang/String;)V

    .line 10
    iget-object p2, p1, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {p2, v1}, Le/a/r/c/z;->j(Ljava/lang/String;)V

    .line 11
    iget-object p2, p1, Le/a/r/w/j;->p:Le/a/r/w/m;

    invoke-interface {p2, v1}, Le/a/r/w/m;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/r/w/h;->K3()V

    goto :goto_5

    .line 13
    :cond_6
    invoke-virtual {p1, v4}, Le/a/r/w/j;->Kj(Z)V

    goto :goto_5

    .line 14
    :cond_7
    :goto_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/r/w/h;->Nh()V

    goto :goto_5

    .line 15
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_5
    return-void

    .line 16
    :cond_a
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
