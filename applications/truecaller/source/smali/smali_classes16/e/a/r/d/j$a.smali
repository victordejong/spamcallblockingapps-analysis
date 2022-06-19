.class public final Le/a/r/d/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/d/j;-><init>(Le/a/r/c/a0/a;Le/a/r/d/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/common/network/country/CountryListDto$a;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/d/j;


# direct methods
.method public constructor <init>(Le/a/r/d/j;)V
    .locals 0

    iput-object p1, p0, Le/a/r/d/j$a;->b:Le/a/r/d/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/r/d/j$a;->b:Le/a/r/d/j;

    .line 4
    iput-object p1, v0, Le/a/r/d/j;->c:Ljava/util/List;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/d/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/r/d/i;->Hn(Ljava/util/List;)V

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
