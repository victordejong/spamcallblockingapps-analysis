.class public final Le/a/o5/a2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->s()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/i5/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/j4/b/a/h;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;)Le/a/o5/c2/k;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/o5/c2/r0;->a(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object p1

    const-string v0, "PartnerUtil.getPartner(context)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method
