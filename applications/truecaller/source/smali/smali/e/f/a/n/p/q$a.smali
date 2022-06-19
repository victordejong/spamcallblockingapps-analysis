.class public Le/f/a/n/p/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/n/d;
.implements Le/f/a/n/n/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/n/d<",
        "TData;>;",
        "Le/f/a/n/n/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/n/n/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Le/f/a/f;

.field public e:Le/f/a/n/n/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/n/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ln3/k/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/f/a/n/n/d<",
            "TData;>;>;",
            "Ln3/k/h/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/n/p/q$a;->b:Ln3/k/h/e;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iput-object p1, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Le/f/a/n/p/q$a;->c:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/f/a/n/p/q$a;->b:Ln3/k/h/e;

    invoke-interface {v1, v0}, Ln3/k/h/e;->b(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    .line 4
    iget-object v0, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/n/d;

    .line 5
    invoke-interface {v1}, Le/f/a/n/n/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Le/f/a/n/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/n/p/q$a;->g:Z

    .line 2
    iget-object v0, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/n/d;

    .line 3
    invoke-interface {v1}, Le/f/a/n/n/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Le/f/a/f;Le/f/a/n/n/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/f;",
            "Le/f/a/n/n/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/n/p/q$a;->d:Le/f/a/f;

    .line 2
    iput-object p2, p0, Le/f/a/n/p/q$a;->e:Le/f/a/n/n/d$a;

    .line 3
    iget-object p2, p0, Le/f/a/n/p/q$a;->b:Ln3/k/h/e;

    invoke-interface {p2}, Ln3/k/h/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    .line 4
    iget-object p2, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    iget v0, p0, Le/f/a/n/p/q$a;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/f/a/n/n/d;

    invoke-interface {p2, p1, p0}, Le/f/a/n/n/d;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V

    .line 5
    iget-boolean p1, p0, Le/f/a/n/p/q$a;->g:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Le/f/a/n/p/q$a;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/f/a/n/p/q$a;->e:Le/f/a/n/n/d$a;

    invoke-interface {v0, p1}, Le/f/a/n/n/d$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/f/a/n/p/q$a;->g()V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Le/f/a/n/p/q$a;->g()V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/f/a/n/p/q$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Le/f/a/n/p/q$a;->c:I

    iget-object v1, p0, Le/f/a/n/p/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget v0, p0, Le/f/a/n/p/q$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/f/a/n/p/q$a;->c:I

    .line 4
    iget-object v0, p0, Le/f/a/n/p/q$a;->d:Le/f/a/f;

    iget-object v1, p0, Le/f/a/n/p/q$a;->e:Le/f/a/n/n/d$a;

    invoke-virtual {p0, v0, v1}, Le/f/a/n/p/q$a;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/f/a/n/p/q$a;->e:Le/f/a/n/n/d$a;

    new-instance v1, Le/f/a/n/o/r;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Le/f/a/n/p/q$a;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
