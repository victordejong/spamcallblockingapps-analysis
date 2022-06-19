.class public final Ln3/z/d;
.super Ln3/z/q1$d;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ln3/z/b;


# direct methods
.method public constructor <init>(Ln3/z/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/d;->d:Ln3/z/b;

    invoke-direct {p0}, Ln3/z/q1$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/z/t0;Ln3/z/r0;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/d;->d:Ln3/z/b;

    .line 2
    iget-object v0, v0, Ln3/z/b;->j:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/z/b/p;

    .line 4
    invoke-interface {v1, p1, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
