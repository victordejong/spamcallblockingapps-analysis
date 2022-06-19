.class public final Ls1/a/a/a/v0/k/b/c0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/e/q;",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/e/q$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/c0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/c0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/c0$a;->b:Ls1/a/a/a/v0/k/b/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/e/q;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/q;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/q$b;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$collectAllArguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    const-string v1, "argumentList"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/c0$a;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 5
    invoke-static {p1, v1}, Le/q/f/a/d/a;->f2(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/c0$a;->a(Ls1/a/a/a/v0/e/q;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/q;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/c0$a;->a(Ls1/a/a/a/v0/e/q;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
