.class public final Ls1/a/a/a/v0/k/b/v$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/v;->g(Ls1/a/a/a/v0/e/n;Z)Ls1/a/a/a/v0/b/f1/h;
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
.field public final synthetic b:Ls1/a/a/a/v0/k/b/v;

.field public final synthetic c:Z

.field public final synthetic d:Ls1/a/a/a/v0/e/n;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/v;ZLs1/a/a/a/v0/e/n;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/v$b;->b:Ls1/a/a/a/v0/k/b/v;

    iput-boolean p2, p0, Ls1/a/a/a/v0/k/b/v$b;->c:Z

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/v$b;->d:Ls1/a/a/a/v0/e/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v$b;->b:Ls1/a/a/a/v0/k/b/v;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 4
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/k/b/v;->a(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/k/b/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Ls1/a/a/a/v0/k/b/v$b;->c:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/v$b;->b:Ls1/a/a/a/v0/k/b/v;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 10
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/v$b;->d:Ls1/a/a/a/v0/e/n;

    invoke-interface {v1, v0, v2}, Ls1/a/a/a/v0/k/b/c;->j(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/v$b;->b:Ls1/a/a/a/v0/k/b/v;

    .line 12
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 14
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 15
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/v$b;->d:Ls1/a/a/a/v0/e/n;

    invoke-interface {v1, v0, v2}, Ls1/a/a/a/v0/k/b/c;->f(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v0
.end method
