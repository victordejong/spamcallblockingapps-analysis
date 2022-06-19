.class public final Le/a/r/d/j;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/r/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/r/d/i;",
        ">;",
        "Le/a/r/d/h;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/r/c/a0/a;

.field public final e:Le/a/r/d/o;


# direct methods
.method public constructor <init>(Le/a/r/c/a0/a;Le/a/r/d/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "countriesHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/r/d/j;->d:Le/a/r/c/a0/a;

    iput-object p2, p0, Le/a/r/d/j;->e:Le/a/r/d/o;

    .line 2
    new-instance p1, Le/a/r/d/j$a;

    invoke-direct {p1, p0}, Le/a/r/d/j$a;-><init>(Le/a/r/d/j;)V

    .line 3
    iput-object p1, p2, Le/a/r/d/o;->d:Ls1/z/b/l;

    .line 4
    new-instance p1, Le/a/r/d/j$b;

    invoke-direct {p1, p0}, Le/a/r/d/j$b;-><init>(Le/a/r/d/j;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/r/d/j;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/r/d/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/r/d/j;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 5
    iput-object p1, p0, Le/a/r/d/j;->c:Ljava/util/List;

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/d/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/r/d/i;->Hn(Ljava/util/List;)V

    :cond_0
    return-void
.end method
