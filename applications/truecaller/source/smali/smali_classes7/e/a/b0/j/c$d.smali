.class public final Le/a/b0/j/c$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/j/c;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/common/network/country/CountryListDto$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.country.CountryRepositoryImpl$getByNumber$2"
    f = "CountryRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b0/j/c;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b0/j/c;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/j/c$d;->e:Le/a/b0/j/c;

    iput-object p2, p0, Le/a/b0/j/c$d;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b0/j/c$d;

    iget-object v0, p0, Le/a/b0/j/c$d;->e:Le/a/b0/j/c;

    iget-object v1, p0, Le/a/b0/j/c$d;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/b0/j/c$d;-><init>(Le/a/b0/j/c;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/b0/j/c$d;->e:Le/a/b0/j/c;

    iget-object v0, p0, Le/a/b0/j/c$d;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/b0/j/c;->a:Le/a/b0/j/d;

    .line 6
    invoke-virtual {p1, v0}, Le/a/b0/j/d;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b0/j/c$d;->e:Le/a/b0/j/c;

    .line 3
    iget-object p1, p1, Le/a/b0/j/c;->a:Le/a/b0/j/d;

    .line 4
    iget-object v0, p0, Le/a/b0/j/c$d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/b0/j/d;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method
