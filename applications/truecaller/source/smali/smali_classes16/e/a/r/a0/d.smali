.class public final Le/a/r/a0/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/n;

.field public final synthetic c:Le/a/r/a0/c;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/r/a0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/d;->b:Lq3/a/n;

    iput-object p2, p0, Le/a/r/a0/d;->c:Le/a/r/a0/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/r/a0/d;->b:Lq3/a/n;

    new-instance v1, Le/a/r/a0/i$a$b;

    iget-object v2, p0, Le/a/r/a0/d;->c:Le/a/r/a0/c;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, v2, Le/a/r/a0/c;->f:Le/a/r/c/a0/a;

    invoke-interface {v3, p1}, Le/a/r/c/a0/a;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v3, v2, Le/a/r/a0/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/q/z;

    invoke-interface {v3, p1}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7
    iget-object v2, v2, Le/a/r/a0/c;->f:Le/a/r/c/a0/a;

    invoke-interface {v2, v3}, Le/a/r/c/a0/a;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v4

    .line 8
    :cond_4
    :goto_2
    invoke-direct {v1, v4, p1}, Le/a/r/a0/i$a$b;-><init>(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
