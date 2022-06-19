.class public final Ls1/a/a/a/e0;
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
        "Ljava/lang/reflect/Type;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/f0$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/f0$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/e0;->b:Ls1/a/a/a/f0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/e0;->b:Ls1/a/a/a/f0$a;

    iget-object v0, v0, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/f0;->a:Ls1/a/a/a/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->d(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
