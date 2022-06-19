.class public final Lcom/trello/rxlifecycle4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/b0;
.implements Li/c/b0/b/j0;
.implements Li/c/b0/b/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/b0<",
        "TT;TT;>;",
        "Ljava/lang/Object<",
        "TT;TT;>;",
        "Li/c/b0/b/j0<",
        "TT;TT;>;",
        "Ljava/lang/Object<",
        "TT;TT;>;",
        "Li/c/b0/b/j;"
    }
.end annotation


# instance fields
.field final a:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "observable == null"

    .line 2
    invoke-static {p1, v0}, Lcom/trello/rxlifecycle4/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    return-void
.end method


# virtual methods
.method public a(Li/c/b0/b/v;)Li/c/b0/b/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;)",
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->takeUntil(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public b(Li/c/b0/b/e0;)Li/c/b0/b/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/e0<",
            "TT;>;)",
            "Li/c/b0/b/i0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    invoke-virtual {v0}, Li/c/b0/b/v;->firstOrError()Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->E(Li/c/b0/b/i0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public c(Li/c/b0/b/e;)Li/c/b0/b/i;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    iget-object p1, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    sget-object v1, Lcom/trello/rxlifecycle4/a;->c:Li/c/b0/d/o;

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Li/c/b0/b/e;->b([Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/trello/rxlifecycle4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/trello/rxlifecycle4/b;

    .line 3
    iget-object v0, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    iget-object p1, p1, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifecycleTransformer{observable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trello/rxlifecycle4/b;->a:Li/c/b0/b/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
