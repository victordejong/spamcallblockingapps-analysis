.class public final Ls1/a/a/a/v0/k/b/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
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
.field public final synthetic b:Ls1/a/a/a/v0/k/b/v;

.field public final synthetic c:Ls1/a/a/a/v0/h/p;

.field public final synthetic d:Ls1/a/a/a/v0/k/b/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/w;->b:Ls1/a/a/a/v0/k/b/v;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/w;->c:Ls1/a/a/a/v0/h/p;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/w;->d:Ls1/a/a/a/v0/k/b/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/w;->b:Ls1/a/a/a/v0/k/b/v;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 4
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/k/b/v;->a(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/k/b/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/w;->b:Ls1/a/a/a/v0/k/b/v;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 9
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/w;->c:Ls1/a/a/a/v0/h/p;

    iget-object v3, p0, Ls1/a/a/a/v0/k/b/w;->d:Ls1/a/a/a/v0/k/b/b;

    invoke-interface {v1, v0, v2, v3}, Ls1/a/a/a/v0/k/b/c;->g(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v0
.end method
