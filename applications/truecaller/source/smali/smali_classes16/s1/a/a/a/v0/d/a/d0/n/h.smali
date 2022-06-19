.class public final Ls1/a/a/a/v0/d/a/d0/n/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
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
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/g$i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/g$i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/h;->b:Ls1/a/a/a/v0/d/a/d0/n/g$i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/h;->b:Ls1/a/a/a/v0/d/a/d0/n/g$i;

    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/h;->b:Ls1/a/a/a/v0/d/a/d0/n/g$i;

    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->d()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
