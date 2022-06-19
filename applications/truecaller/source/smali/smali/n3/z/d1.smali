.class public final Ln3/z/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/d1$b;,
        Ln3/z/d1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/z/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/s<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/b2<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/w/d<",
            "-",
            "Ln3/z/k2<",
            "TKey;TValue;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field public final f:Ln3/z/a2;


# direct methods
.method public constructor <init>(Ls1/z/b/l;Ljava/lang/Object;Ln3/z/a2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ln3/z/k2<",
            "TKey;TValue;>;>;+",
            "Ljava/lang/Object;",
            ">;TKey;",
            "Ln3/z/a2;",
            "Ljava/lang/Object<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "pagingSourceFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/d1;->d:Ls1/z/b/l;

    iput-object p2, p0, Ln3/z/d1;->e:Ljava/lang/Object;

    iput-object p3, p0, Ln3/z/d1;->f:Ln3/z/a2;

    .line 2
    new-instance p1, Ln3/z/s;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ln3/z/s;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ln3/z/d1;->a:Ln3/z/s;

    .line 3
    new-instance p1, Ln3/z/s;

    invoke-direct {p1, p2, p3}, Ln3/z/s;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ln3/z/d1;->b:Ln3/z/s;

    .line 4
    new-instance p1, Ln3/z/e1;

    invoke-direct {p1, p0, p2}, Ln3/z/e1;-><init>(Ln3/z/d1;Ls1/w/d;)V

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    iput-object p1, p0, Ln3/z/d1;->c:Lq3/a/x2/f;

    return-void
.end method


# virtual methods
.method public final a(Ln3/z/k2;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k2<",
            "TKey;TValue;>;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/k2<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/d1$c;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/d1$c;

    iget v2, v0, Ln3/z/d1$c;->e:I

    and-int v3, v2, v1

    if-eqz v3, :cond_0

    sub-int/2addr v2, v1

    iput v2, v0, Ln3/z/d1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/d1$c;

    invoke-direct {v0, p0, p2}, Ln3/z/d1$c;-><init>(Ln3/z/d1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/d1$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Ln3/z/d1$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v0, Ln3/z/d1$c;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/k2;

    iget-object v0, v0, Ln3/z/d1$c;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/d1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/d1;->d:Ls1/z/b/l;

    iput-object p0, v0, Ln3/z/d1$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/d1$c;->h:Ljava/lang/Object;

    iput v4, v0, Ln3/z/d1$c;->e:I

    invoke-interface {p2, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p2, Ln3/z/k2;

    .line 6
    instance-of v2, p2, Ln3/z/n0;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 7
    move-object v2, p2

    check-cast v2, Ln3/z/n0;

    iget-object v5, v0, Ln3/z/d1;->f:Ln3/z/a2;

    iget v5, v5, Ln3/z/a2;->a:I

    .line 8
    iget v6, v2, Ln3/z/n0;->c:I

    if-eq v6, v1, :cond_5

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_6

    .line 9
    iput v5, v2, Ln3/z/n0;->c:I

    goto :goto_4

    :cond_6
    const-string p1, "Page size is already set to "

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v2, Ln3/z/n0;->c:I

    const/16 v0, 0x2e

    invoke-static {p1, p2, v0}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_4
    if-eq p2, p1, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    :goto_5
    if-eqz v4, :cond_b

    .line 12
    new-instance v1, Ln3/z/d1$d;

    invoke-direct {v1, v0}, Ln3/z/d1$d;-><init>(Ln3/z/d1;)V

    invoke-virtual {p2, v1}, Ln3/z/k2;->f(Ls1/z/b/a;)V

    if-eqz p1, :cond_9

    .line 13
    new-instance v1, Ln3/z/d1$e;

    invoke-direct {v1, v0}, Ln3/z/d1$e;-><init>(Ln3/z/d1;)V

    const-string v0, "onInvalidatedCallback"

    .line 14
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Ln3/z/k2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p1, :cond_a

    .line 16
    invoke-virtual {p1}, Ln3/z/k2;->d()V

    :cond_a
    return-object p2

    .line 17
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
