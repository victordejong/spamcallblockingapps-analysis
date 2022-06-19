.class public Ls1/a/a/a/v0/b/h1/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/r;->O0(Ls1/a/a/a/v0/b/h1/r$c;)Ls1/a/a/a/v0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "Ls1/a/a/a/v0/b/v;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/m/d1;

.field public final synthetic b:Ls1/a/a/a/v0/b/h1/r;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/r;Ls1/a/a/a/v0/m/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/r$a;->b:Ls1/a/a/a/v0/b/h1/r;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/r$a;->a:Ls1/a/a/a/v0/m/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/o/l;

    invoke-direct {v0}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/r$a;->b:Ls1/a/a/a/v0/b/h1/r;

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/r;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/v;

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/b/h1/r$a;->a:Ls1/a/a/a/v0/m/d1;

    invoke-interface {v2, v3}, Ls1/a/a/a/v0/b/v;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
