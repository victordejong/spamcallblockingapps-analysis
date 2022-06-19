.class public final Ls1/a/a/a/v0/d/a/d0/n/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/d;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Map<",
        "Ls1/a/a/a/v0/f/e;",
        "+",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$a;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/d$a;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/d;->g:Ls1/a/a/a/v0/d/a/f0/a;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/a;->I()Ljava/util/Collection;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/b;

    .line 7
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ls1/a/a/a/v0/d/a/v;->b:Ls1/a/a/a/v0/f/e;

    .line 8
    :goto_1
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/d$a;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 9
    invoke-virtual {v4, v2}, Ls1/a/a/a/v0/d/a/d0/n/d;->c(Ls1/a/a/a/v0/d/a/f0/b;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
