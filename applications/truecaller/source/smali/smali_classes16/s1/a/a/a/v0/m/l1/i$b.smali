.class public final Ls1/a/a/a/v0/m/l1/i$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/l1/i;->f(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/i;
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
        "Ls1/a/a/a/v0/m/i1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/l1/i;

.field public final synthetic c:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/i$b;->b:Ls1/a/a/a/v0/m/l1/i;

    iput-object p2, p0, Ls1/a/a/a/v0/m/l1/i$b;->c:Ls1/a/a/a/v0/m/l1/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i$b;->b:Ls1/a/a/a/v0/m/l1/i;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/m/l1/i;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ls1/a/a/a/v0/m/i1;

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/m/l1/i$b;->c:Ls1/a/a/a/v0/m/l1/e;

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/m/i1;->T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method
