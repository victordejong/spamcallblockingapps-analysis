.class public final Ls1/a/a/a/v0/k/b/g0/m$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/m;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/f1/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/m$a;->b:Ls1/a/a/a/v0/k/b/g0/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/m$a;->b:Ls1/a/a/a/v0/k/b/g0/m;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/m;->l:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/m;->m:Ls1/a/a/a/v0/e/s;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 7
    invoke-interface {v2, v0, v1}, Ls1/a/a/a/v0/k/b/c;->d(Ls1/a/a/a/v0/e/s;Ls1/a/a/a/v0/e/z/c;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
