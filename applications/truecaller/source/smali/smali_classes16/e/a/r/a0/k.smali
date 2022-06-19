.class public final Le/a/r/a0/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/multisim/SimInfo;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/n;

.field public final synthetic c:Le/a/r/a0/j;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/r/a0/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/k;->b:Lq3/a/n;

    iput-object p2, p0, Le/a/r/a0/k;->c:Le/a/r/a0/j;

    iput-object p3, p0, Le/a/r/a0/k;->d:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/multisim/SimInfo;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/r/a0/k;->b:Lq3/a/n;

    new-instance v1, Le/a/r/a0/i$a$b;

    iget-object v2, p0, Le/a/r/a0/k;->c:Le/a/r/a0/j;

    .line 4
    invoke-virtual {v2, p1}, Le/a/r/a0/j;->b(Lcom/truecaller/multisim/SimInfo;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v2

    .line 5
    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Le/a/r/a0/i$a$b;-><init>(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
