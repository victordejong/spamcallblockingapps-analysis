.class public Ln3/v/c0;
.super Ln3/v/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/v/c0$a;
    }
.end annotation


# instance fields
.field public b:Ln3/c/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c/a/b/a<",
            "Ln3/v/a0;",
            "Ln3/v/c0$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ln3/v/u$b;

.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/v/b0;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/v/u$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Ln3/v/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/u;-><init>()V

    .line 2
    new-instance v0, Ln3/c/a/b/a;

    invoke-direct {v0}, Ln3/c/a/b/a;-><init>()V

    iput-object v0, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/v/c0;->e:I

    .line 4
    iput-boolean v0, p0, Ln3/v/c0;->f:Z

    .line 5
    iput-boolean v0, p0, Ln3/v/c0;->g:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/v/c0;->d:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Ln3/v/u$b;->b:Ln3/v/u$b;

    iput-object p1, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ln3/v/c0;->i:Z

    return-void
.end method

.method public static f(Ln3/v/u$b;Ln3/v/u$b;)Ln3/v/u$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ln3/v/a0;)V
    .locals 6

    const-string v0, "addObserver"

    .line 1
    invoke-virtual {p0, v0}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    sget-object v1, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ln3/v/u$b;->b:Ln3/v/u$b;

    .line 3
    :goto_0
    new-instance v0, Ln3/v/c0$a;

    invoke-direct {v0, p1, v1}, Ln3/v/c0$a;-><init>(Ln3/v/a0;Ln3/v/u$b;)V

    .line 4
    iget-object v1, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {v1, p1, v0}, Ln3/c/a/b/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/c0$a;

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Ln3/v/c0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/b0;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget v2, p0, Ln3/v/c0;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Ln3/v/c0;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 7
    :goto_2
    invoke-virtual {p0, p1}, Ln3/v/c0;->c(Ln3/v/a0;)Ln3/v/u$b;

    move-result-object v4

    .line 8
    iget v5, p0, Ln3/v/c0;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Ln3/v/c0;->e:I

    .line 9
    :goto_3
    iget-object v5, v0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 10
    iget-object v4, v4, Ln3/c/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, v0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    .line 12
    iget-object v5, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v4, v0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-static {v4}, Ln3/v/u$a;->c(Ln3/v/u$b;)Ln3/v/u$a;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v0, v1, v4}, Ln3/v/c0$a;->a(Ln3/v/b0;Ln3/v/u$a;)V

    .line 15
    invoke-virtual {p0}, Ln3/v/c0;->h()V

    .line 16
    invoke-virtual {p0, p1}, Ln3/v/c0;->c(Ln3/v/a0;)Ln3/v/u$b;

    move-result-object v4

    goto :goto_3

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    .line 18
    invoke-virtual {p0}, Ln3/v/c0;->i()V

    .line 19
    :cond_7
    iget p1, p0, Ln3/v/c0;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Ln3/v/c0;->e:I

    return-void
.end method

.method public b(Ln3/v/a0;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 1
    invoke-virtual {p0, v0}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {v0, p1}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ln3/v/a0;)Ln3/v/u$b;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 2
    iget-object v1, v0, Ln3/c/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Ln3/c/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/c/a/b/b$c;

    iget-object p1, p1, Ln3/c/a/b/b$c;->d:Ln3/c/a/b/b$c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Ln3/c/a/b/b$c;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Ln3/v/c0$a;

    iget-object p1, p1, Ln3/v/c0$a;->a:Ln3/v/u$b;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 6
    :goto_1
    iget-object v0, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln3/v/u$b;

    .line 7
    :cond_2
    iget-object v0, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    invoke-static {v0, p1}, Ln3/v/c0;->f(Ln3/v/u$b;Ln3/v/u$b;)Ln3/v/u$b;

    move-result-object p1

    invoke-static {p1, v2}, Ln3/v/c0;->f(Ln3/v/u$b;Ln3/v/u$b;)Ln3/v/u$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/v/c0;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ln3/c/a/a/a;->d()Ln3/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/c/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ln3/v/u$a;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    .line 1
    invoke-virtual {p0, v0}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    return-void
.end method

.method public final g(Ln3/v/u$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    iget-boolean p1, p0, Ln3/v/c0;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Ln3/v/c0;->e:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Ln3/v/c0;->f:Z

    .line 5
    invoke-virtual {p0}, Ln3/v/c0;->i()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Ln3/v/c0;->f:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iput-boolean v0, p0, Ln3/v/c0;->g:Z

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/v/c0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/v/b0;

    if-eqz v0, :cond_c

    .line 2
    :cond_0
    iget-object v1, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 3
    iget v2, v1, Ln3/c/a/b/b;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v1, Ln3/c/a/b/b;->a:Ln3/c/a/b/b$c;

    .line 5
    iget-object v2, v2, Ln3/c/a/b/b$c;->b:Ljava/lang/Object;

    .line 6
    check-cast v2, Ln3/v/c0$a;

    iget-object v2, v2, Ln3/v/c0$a;->a:Ln3/v/u$b;

    .line 7
    iget-object v5, v1, Ln3/c/a/b/b;->b:Ln3/c/a/b/b$c;

    .line 8
    iget-object v5, v5, Ln3/c/a/b/b$c;->b:Ljava/lang/Object;

    .line 9
    check-cast v5, Ln3/v/c0$a;

    iget-object v5, v5, Ln3/v/c0$a;->a:Ln3/v/u$b;

    if-ne v2, v5, :cond_2

    .line 10
    iget-object v2, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-nez v3, :cond_b

    .line 11
    iput-boolean v4, p0, Ln3/v/c0;->g:Z

    .line 12
    iget-object v2, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 13
    iget-object v1, v1, Ln3/c/a/b/b;->a:Ln3/c/a/b/b$c;

    .line 14
    iget-object v1, v1, Ln3/c/a/b/b$c;->b:Ljava/lang/Object;

    .line 15
    check-cast v1, Ln3/v/c0$a;

    iget-object v1, v1, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_8

    .line 16
    iget-object v1, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 17
    new-instance v2, Ln3/c/a/b/b$b;

    iget-object v3, v1, Ln3/c/a/b/b;->b:Ln3/c/a/b/b$c;

    iget-object v4, v1, Ln3/c/a/b/b;->a:Ln3/c/a/b/b$c;

    invoke-direct {v2, v3, v4}, Ln3/c/a/b/b$b;-><init>(Ln3/c/a/b/b$c;Ln3/c/a/b/b$c;)V

    .line 18
    iget-object v1, v1, Ln3/c/a/b/b;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    invoke-virtual {v2}, Ln3/c/a/b/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Ln3/v/c0;->g:Z

    if-nez v1, :cond_8

    .line 20
    invoke-virtual {v2}, Ln3/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/v/c0$a;

    .line 22
    :goto_1
    iget-object v4, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    iget-object v5, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Ln3/v/c0;->g:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    iget-object v4, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 26
    :cond_4
    sget-object v4, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    goto :goto_2

    .line 27
    :cond_5
    sget-object v4, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    goto :goto_2

    .line 28
    :cond_6
    sget-object v4, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    :goto_2
    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {v4}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object v5

    .line 30
    iget-object v6, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v3, v0, v4}, Ln3/v/c0$a;->a(Ln3/v/b0;Ln3/v/u$a;)V

    .line 32
    invoke-virtual {p0}, Ln3/v/c0;->h()V

    goto :goto_1

    .line 33
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event down from "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_8
    iget-object v1, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 35
    iget-object v1, v1, Ln3/c/a/b/b;->b:Ln3/c/a/b/b$c;

    .line 36
    iget-boolean v2, p0, Ln3/v/c0;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 37
    iget-object v1, v1, Ln3/c/a/b/b$c;->b:Ljava/lang/Object;

    .line 38
    check-cast v1, Ln3/v/c0$a;

    iget-object v1, v1, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 40
    invoke-virtual {v1}, Ln3/c/a/b/b;->b()Ln3/c/a/b/b$d;

    move-result-object v1

    .line 41
    :cond_9
    invoke-virtual {v1}, Ln3/c/a/b/b$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ln3/v/c0;->g:Z

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {v1}, Ln3/c/a/b/b$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/v/c0$a;

    .line 44
    :goto_3
    iget-object v4, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    iget-object v5, p0, Ln3/v/c0;->c:Ln3/v/u$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_9

    iget-boolean v4, p0, Ln3/v/c0;->g:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Ln3/v/c0;->b:Ln3/c/a/b/a;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 46
    iget-object v4, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    .line 47
    iget-object v5, p0, Ln3/v/c0;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v4, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-static {v4}, Ln3/v/u$a;->c(Ln3/v/u$b;)Ln3/v/u$a;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 49
    invoke-virtual {v3, v0, v4}, Ln3/v/c0$a;->a(Ln3/v/b0;Ln3/v/u$a;)V

    .line 50
    invoke-virtual {p0}, Ln3/v/c0;->h()V

    goto :goto_3

    .line 51
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_b
    iput-boolean v4, p0, Ln3/v/c0;->g:Z

    return-void

    .line 53
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
