.class public Le/i/b/b3;
.super Le/i/b/c2;
.source "SourceFile"


# annotations
.annotation build Lcom/criteo/publisher/annotation/Internal;
.end annotation


# instance fields
.field public d:Le/i/b/x1;

.field public final e:Le/i/b/y1;

.field public final f:Le/i/b/u2/p;

.field public final g:Le/i/b/s1/a;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Le/i/b/x1;Le/i/b/s1/a;Le/i/b/y1;Le/i/b/u2/p;Le/i/b/l2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3, p5}, Le/i/b/c2;-><init>(Le/i/b/s1/a;Le/i/b/y1;Le/i/b/l2/a;)V

    .line 2
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Le/i/b/b3;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Le/i/b/b3;->d:Le/i/b/x1;

    .line 4
    iput-object p2, p0, Le/i/b/b3;->g:Le/i/b/s1/a;

    .line 5
    iput-object p3, p0, Le/i/b/b3;->e:Le/i/b/y1;

    .line 6
    iput-object p4, p0, Le/i/b/b3;->f:Le/i/b/u2/p;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Le/i/b/c2;->a(Le/i/b/u2/q;Le/i/b/u2/t;)V

    .line 2
    iget-object p1, p2, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "During a live request, only one bid will be fetched at a time."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/i/b/b3;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p2, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p2, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/u2/w;

    .line 10
    iget-object p2, p0, Le/i/b/b3;->e:Le/i/b/y1;

    invoke-virtual {p2, p1}, Le/i/b/y1;->i(Le/i/b/u2/w;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Le/i/b/b3;->e:Le/i/b/y1;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/i/b/y1;->f(Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Le/i/b/b3;->d:Le/i/b/x1;

    invoke-interface {p1}, Le/i/b/x1;->a()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Le/i/b/u2/w;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Le/i/b/b3;->d:Le/i/b/x1;

    invoke-interface {p2, p1}, Le/i/b/x1;->a(Le/i/b/u2/w;)V

    .line 15
    iget-object p2, p0, Le/i/b/b3;->g:Le/i/b/s1/a;

    iget-object v0, p0, Le/i/b/b3;->f:Le/i/b/u2/p;

    invoke-interface {p2, v0, p1}, Le/i/b/s1/a;->b(Le/i/b/u2/p;Le/i/b/u2/w;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Le/i/b/b3;->d:Le/i/b/x1;

    invoke-interface {p1}, Le/i/b/x1;->a()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Le/i/b/b3;->d:Le/i/b/x1;

    invoke-interface {p1}, Le/i/b/x1;->a()V

    :goto_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Le/i/b/b3;->d:Le/i/b/x1;

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Le/i/b/b3;->e:Le/i/b/y1;

    .line 20
    iget-object p2, p2, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 21
    invoke-virtual {p1, p2}, Le/i/b/y1;->f(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public b(Le/i/b/u2/q;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "cdbRequest"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/i/b/c2;->a:Le/i/b/s1/a;

    invoke-interface {v0, p1, p2}, Le/i/b/s1/a;->c(Le/i/b/u2/q;Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {p0}, Le/i/b/b3;->c()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/b3;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/i/b/b3;->e:Le/i/b/y1;

    iget-object v1, p0, Le/i/b/b3;->f:Le/i/b/u2/p;

    iget-object v2, p0, Le/i/b/b3;->d:Le/i/b/x1;

    .line 3
    invoke-virtual {v0, v1}, Le/i/b/y1;->b(Le/i/b/u2/p;)Le/i/b/u2/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v2, v0}, Le/i/b/x1;->a(Le/i/b/u2/w;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2}, Le/i/b/x1;->a()V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/i/b/b3;->d:Le/i/b/x1;

    :cond_1
    return-void
.end method
