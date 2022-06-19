.class public final Le/a/c/w/j0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/z/k2<",
        "Ljava/lang/Integer;",
        "Le/a/c/r/h/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/w/f0;

.field public final synthetic c:Le/a/c/w/o0/k/a;


# direct methods
.method public constructor <init>(Le/a/c/w/f0;Le/a/c/w/o0/k/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/j0;->b:Le/a/c/w/f0;

    iput-object p2, p0, Le/a/c/w/j0;->c:Le/a/c/w/o0/k/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/w/j0;->c:Le/a/c/w/o0/k/a;

    .line 2
    iget-object v0, v0, Le/a/c/w/o0/k/a;->b:Le/a/c/w/o0/k/c;

    .line 3
    invoke-static {v0}, Le/a/c/p/a;->l3(Le/a/c/w/o0/k/c;)Le/a/c/w/o0/k/b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/c/w/j0;->b:Le/a/c/w/f0;

    .line 5
    iget-object v1, v1, Le/a/c/w/f0;->a:Le/a/c/c/d/j0;

    .line 6
    iget-object v2, v0, Le/a/c/w/o0/k/b;->a:Ljava/util/List;

    .line 7
    iget-object v3, v0, Le/a/c/w/o0/k/b;->b:Ljava/util/List;

    .line 8
    invoke-static {v2, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 9
    iget-object v0, v0, Le/a/c/w/o0/k/b;->c:Ljava/util/List;

    .line 10
    invoke-interface {v1, v2, v0}, Le/a/c/c/d/j0;->o(Ljava/util/List;Ljava/util/List;)Ln3/z/k2;

    move-result-object v0

    return-object v0
.end method
