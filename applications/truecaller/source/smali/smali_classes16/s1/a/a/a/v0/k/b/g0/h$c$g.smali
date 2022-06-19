.class public final Ls1/a/a/a/v0/k/b/g0/h$c$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h$c;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$g;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c$g;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/h$c;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$g;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    iget-object v1, v1, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v1}, Ls1/a/a/a/v0/k/b/g0/h;->p()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
