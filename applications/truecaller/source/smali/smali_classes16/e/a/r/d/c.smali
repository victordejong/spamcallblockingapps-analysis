.class public final Le/a/r/d/c;
.super Ln3/b0/a/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/h$e<",
        "Lcom/truecaller/common/network/country/CountryListDto$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b0/a/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    check-cast p2, Lcom/truecaller/common/network/country/CountryListDto$a;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    check-cast p2, Lcom/truecaller/common/network/country/CountryListDto$a;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
