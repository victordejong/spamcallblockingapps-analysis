.class public final Ls1/a/a/a/v0/a/p/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/h1/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/p/f;

.field public final synthetic c:Ls1/a/a/a/v0/l/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/f;Ls1/a/a/a/v0/l/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/g;->b:Ls1/a/a/a/v0/a/p/f;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/g;->c:Ls1/a/a/a/v0/l/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v9, Ls1/a/a/a/v0/b/h1/k;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/g;->b:Ls1/a/a/a/v0/a/p/f;

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/a/p/f;->c:Ls1/z/b/l;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/a/p/f;->b:Ls1/a/a/a/v0/b/a0;

    .line 5
    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/b/k;

    .line 6
    sget-object v2, Ls1/a/a/a/v0/a/p/f;->f:Ls1/a/a/a/v0/f/e;

    .line 7
    sget-object v3, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    sget-object v4, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/g;->b:Ls1/a/a/a/v0/a/p/f;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/a/p/f;->b:Ls1/a/a/a/v0/b/a0;

    .line 9
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 10
    sget-object v6, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const/4 v7, 0x0

    iget-object v8, p0, Ls1/a/a/a/v0/a/p/g;->c:Ls1/a/a/a/v0/l/m;

    move-object v0, v9

    .line 11
    invoke-direct/range {v0 .. v8}, Ls1/a/a/a/v0/b/h1/k;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/f;Ljava/util/Collection;Ls1/a/a/a/v0/b/r0;ZLs1/a/a/a/v0/l/m;)V

    .line 12
    new-instance v0, Ls1/a/a/a/v0/a/p/a;

    iget-object v1, p0, Ls1/a/a/a/v0/a/p/g;->c:Ls1/a/a/a/v0/l/m;

    invoke-direct {v0, v1, v9}, Ls1/a/a/a/v0/a/p/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V

    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Ls1/a/a/a/v0/b/h1/k;->N0(Ls1/a/a/a/v0/j/y/i;Ljava/util/Set;Ls1/a/a/a/v0/b/d;)V

    return-object v9
.end method
