.class public final Ls1/a/a/a/v0/k/b/g0/h$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h;-><init>(Ls1/a/a/a/v0/k/b/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$e;->b:Ls1/a/a/a/v0/k/b/g0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$e;->b:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/h;->n()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$e;->b:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v1}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/h$e;->b:Ls1/a/a/a/v0/k/b/g0/h;

    .line 3
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/h;->b:Ls1/a/a/a/v0/k/b/g0/h$a;

    .line 4
    invoke-interface {v2}, Ls1/a/a/a/v0/k/b/g0/h$a;->g()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
