.class public final Le/a/r/c/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/a0/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/q0/e;

.field public final c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/q0/e;J)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/a0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/r/c/a0/b;->b:Le/a/p5/q0/e;

    iput-wide p3, p0, Le/a/r/c/a0/b;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/b0/q/j;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r/c/a0/b;->b:Le/a/p5/q0/e;

    iget-wide v2, p0, Le/a/r/c/a0/b;->c:J

    new-instance v4, Le/a/r/c/a0/b$a;

    invoke-direct {v4, p0}, Le/a/r/c/a0/b$a;-><init>(Le/a/r/c/a0/b;)V

    const/4 v1, 0x5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Le/a/p5/q0/e;->b(IJLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/a0/b;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/q/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "IN"

    :goto_3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "countryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method
