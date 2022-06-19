.class public Lw3/d/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lw3/d/e/e;

.field public c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lw3/d/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/d/e/e;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/d/e/e;",
            "Ljava/util/Queue<",
            "Lw3/d/d/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 3
    iget-object p1, p1, Lw3/d/e/e;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lw3/d/d/a;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of p1, p3, Ljava/lang/Throwable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 2
    check-cast p3, Ljava/lang/Throwable;

    .line 3
    new-instance p2, Lw3/d/d/c;

    invoke-direct {p2}, Lw3/d/d/c;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    iget-object p3, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 6
    iput-object p3, p2, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    iput-object p1, p2, Lw3/d/d/c;->b:[Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    aput-object p3, p1, v0

    .line 10
    new-instance p2, Lw3/d/d/c;

    invoke-direct {p2}, Lw3/d/d/c;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    iget-object p3, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 13
    iput-object p3, p2, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 15
    iput-object p1, p2, Lw3/d/d/c;->b:[Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Lw3/d/d/c;

    invoke-direct {p1}, Lw3/d/d/c;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object p2, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 4
    iput-object p2, p1, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    new-instance p2, Lw3/d/d/c;

    invoke-direct {p2}, Lw3/d/d/c;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 4
    iput-object v0, p2, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    iput-object p1, p2, Lw3/d/d/c;->b:[Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Lw3/d/d/c;

    invoke-direct {p1}, Lw3/d/d/c;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object p2, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 4
    iput-object p2, p1, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    .line 3
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-eqz p1, :cond_3

    .line 6
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 7
    new-array v0, p1, [Ljava/lang/Object;

    if-lez p1, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_2
    new-instance p1, Lw3/d/d/c;

    invoke-direct {p1}, Lw3/d/d/c;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    iget-object p2, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 12
    iput-object p2, p1, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 14
    iput-object v0, p1, Lw3/d/d/c;->b:[Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non-sensical empty or null argument array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lw3/d/d/c;

    invoke-direct {p1}, Lw3/d/d/c;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    iget-object v0, p0, Lw3/d/d/a;->b:Lw3/d/e/e;

    .line 20
    iput-object v0, p1, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 22
    iput-object p2, p1, Lw3/d/d/c;->b:[Ljava/lang/Object;

    .line 23
    iget-object p2, p0, Lw3/d/d/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/d/d/a;->a:Ljava/lang/String;

    return-object v0
.end method
