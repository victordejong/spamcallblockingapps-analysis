.class public abstract Lkotlin/u/j/a/c;
.super Lkotlin/u/j/a/a;
.source "SourceFile"


# instance fields
.field private final _context:Lkotlin/u/g;

.field private transient intercepted:Lkotlin/u/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/u/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/u/d;->getContext()Lkotlin/u/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/u/j/a/c;-><init>(Lkotlin/u/d;Lkotlin/u/g;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/u/d;Lkotlin/u/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/u/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/u/j/a/a;-><init>(Lkotlin/u/d;)V

    iput-object p2, p0, Lkotlin/u/j/a/c;->_context:Lkotlin/u/g;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/u/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/u/j/a/c;->_context:Lkotlin/u/g;

    invoke-static {v0}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lkotlin/u/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/u/j/a/c;->intercepted:Lkotlin/u/d;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/u/j/a/c;->getContext()Lkotlin/u/g;

    move-result-object v0

    sget-object v1, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    invoke-interface {v0, v1}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v0

    check-cast v0, Lkotlin/u/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lkotlin/u/e;->c(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 3
    :goto_0
    iput-object v0, p0, Lkotlin/u/j/a/c;->intercepted:Lkotlin/u/d;

    :goto_1
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/u/j/a/c;->intercepted:Lkotlin/u/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/u/j/a/c;->getContext()Lkotlin/u/g;

    move-result-object v1

    sget-object v2, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    invoke-interface {v1, v2}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/u/e;

    invoke-interface {v1, v0}, Lkotlin/u/e;->b(Lkotlin/u/d;)V

    .line 3
    :cond_0
    sget-object v0, Lkotlin/u/j/a/b;->f:Lkotlin/u/j/a/b;

    iput-object v0, p0, Lkotlin/u/j/a/c;->intercepted:Lkotlin/u/d;

    return-void
.end method
