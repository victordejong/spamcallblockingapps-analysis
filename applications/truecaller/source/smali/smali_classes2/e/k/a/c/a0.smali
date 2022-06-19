.class public abstract Le/k/a/c/a0;
.super Le/k/a/c/e;
.source "SourceFile"


# static fields
.field public static final m:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/k/a/c/y;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/k/a/c/l0/p;

.field public final d:Le/k/a/c/l0/o;

.field public transient e:Le/k/a/c/c0/i;

.field public f:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/k/a/c/l0/s/m;

.field public k:Ljava/text/DateFormat;

.field public final l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/s/c;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Le/k/a/c/l0/s/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/k/a/c/a0;->m:Le/k/a/c/n;

    .line 2
    new-instance v0, Le/k/a/c/l0/s/q;

    invoke-direct {v0}, Le/k/a/c/l0/s/q;-><init>()V

    sput-object v0, Le/k/a/c/a0;->n:Le/k/a/c/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/k/a/c/e;-><init>()V

    .line 2
    sget-object v0, Le/k/a/c/a0;->n:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/a0;->f:Le/k/a/c/n;

    .line 3
    sget-object v0, Le/k/a/c/l0/t/u;->c:Le/k/a/c/l0/t/u;

    iput-object v0, p0, Le/k/a/c/a0;->h:Le/k/a/c/n;

    .line 4
    sget-object v0, Le/k/a/c/a0;->m:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/a0;->i:Le/k/a/c/n;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 6
    iput-object v0, p0, Le/k/a/c/a0;->c:Le/k/a/c/l0/p;

    .line 7
    new-instance v1, Le/k/a/c/l0/o;

    invoke-direct {v1}, Le/k/a/c/l0/o;-><init>()V

    iput-object v1, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 8
    iput-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    .line 9
    iput-object v0, p0, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Le/k/a/c/a0;->e:Le/k/a/c/c0/i;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/k/a/c/a0;->l:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Le/k/a/c/e;-><init>()V

    .line 13
    sget-object v0, Le/k/a/c/a0;->n:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/a0;->f:Le/k/a/c/n;

    .line 14
    sget-object v0, Le/k/a/c/l0/t/u;->c:Le/k/a/c/l0/t/u;

    iput-object v0, p0, Le/k/a/c/a0;->h:Le/k/a/c/n;

    .line 15
    sget-object v0, Le/k/a/c/a0;->m:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/a0;->i:Le/k/a/c/n;

    .line 16
    iput-object p3, p0, Le/k/a/c/a0;->c:Le/k/a/c/l0/p;

    .line 17
    iput-object p2, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 18
    iget-object p3, p1, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    iput-object p3, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 19
    iget-object v1, p1, Le/k/a/c/a0;->f:Le/k/a/c/n;

    iput-object v1, p0, Le/k/a/c/a0;->f:Le/k/a/c/n;

    .line 20
    iget-object v1, p1, Le/k/a/c/a0;->g:Le/k/a/c/n;

    iput-object v1, p0, Le/k/a/c/a0;->g:Le/k/a/c/n;

    .line 21
    iget-object v1, p1, Le/k/a/c/a0;->h:Le/k/a/c/n;

    iput-object v1, p0, Le/k/a/c/a0;->h:Le/k/a/c/n;

    .line 22
    iget-object p1, p1, Le/k/a/c/a0;->i:Le/k/a/c/n;

    iput-object p1, p0, Le/k/a/c/a0;->i:Le/k/a/c/n;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-boolean p1, p0, Le/k/a/c/a0;->l:Z

    .line 24
    iget-object p1, p2, Le/k/a/c/c0/l;->f:Ljava/lang/Class;

    .line 25
    iput-object p1, p0, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 26
    iget-object p1, p2, Le/k/a/c/c0/l;->g:Le/k/a/c/c0/i;

    .line 27
    iput-object p1, p0, Le/k/a/c/a0;->e:Le/k/a/c/c0/i;

    .line 28
    iget-object p1, p3, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l0/s/m;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    monitor-enter p3

    .line 30
    :try_start_0
    iget-object p1, p3, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l0/s/m;

    if-nez p1, :cond_2

    .line 31
    iget-object p1, p3, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    .line 32
    new-instance p2, Le/k/a/c/l0/s/m;

    invoke-direct {p2, p1}, Le/k/a/c/l0/s/m;-><init>(Ljava/util/Map;)V

    .line 33
    iget-object p1, p3, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    .line 34
    :cond_2
    monitor-exit p3

    .line 35
    :goto_1
    iput-object p1, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    return-void

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p3

    throw p1
.end method


# virtual methods
.method public A(Ljava/lang/Class;ZLe/k/a/c/d;)Le/k/a/c/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    .line 2
    iget-object v0, p3, Le/k/a/c/l0/s/m;->a:[Le/k/a/c/l0/s/m$a;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4
    iget p3, p3, Le/k/a/c/l0/s/m;->b:I

    and-int/2addr p3, v1

    aget-object p3, v0, p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p3, Le/k/a/c/l0/s/m$a;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    iget-boolean v1, p3, Le/k/a/c/l0/s/m$a;->e:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iget-object p3, p3, Le/k/a/c/l0/s/m$a;->a:Le/k/a/c/n;

    goto :goto_3

    .line 7
    :cond_2
    iget-object p3, p3, Le/k/a/c/l0/s/m$a;->b:Le/k/a/c/l0/s/m$a;

    if-eqz p3, :cond_4

    .line 8
    iget-object v1, p3, Le/k/a/c/l0/s/m$a;->c:Ljava/lang/Class;

    if-ne v1, p1, :cond_3

    iget-boolean v1, p3, Le/k/a/c/l0/s/m$a;->e:Z

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    iget-object p3, p3, Le/k/a/c/l0/s/m$a;->a:Le/k/a/c/n;

    goto :goto_3

    :cond_4
    :goto_2
    move-object p3, v0

    :goto_3
    if-eqz p3, :cond_5

    return-object p3

    .line 10
    :cond_5
    iget-object p3, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 11
    monitor-enter p3

    .line 12
    :try_start_0
    iget-object v1, p3, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    new-instance v3, Le/k/a/c/n0/c0;

    invoke-direct {v3, p1, v2}, Le/k/a/c/n0/c0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/n;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    return-object v1

    .line 13
    :cond_6
    invoke-virtual {p0, p1, v0}, Le/k/a/c/a0;->D(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p3

    .line 14
    iget-object v1, p0, Le/k/a/c/a0;->c:Le/k/a/c/l0/p;

    iget-object v3, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 15
    iget-object v4, v3, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 16
    iget-object v4, v4, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 17
    sget-object v5, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v4, v0, p1, v5}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v4

    .line 18
    invoke-virtual {v1, v3, v4}, Le/k/a/c/l0/p;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1, v0}, Le/k/a/c/j0/h;->a(Le/k/a/c/d;)Le/k/a/c/j0/h;

    move-result-object v1

    .line 20
    new-instance v3, Le/k/a/c/l0/s/p;

    invoke-direct {v3, v1, p3}, Le/k/a/c/l0/s/p;-><init>(Le/k/a/c/j0/h;Le/k/a/c/n;)V

    move-object p3, v3

    :cond_7
    if-eqz p2, :cond_9

    .line 21
    iget-object p2, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 22
    monitor-enter p2

    .line 23
    :try_start_1
    iget-object v1, p2, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    new-instance v3, Le/k/a/c/n0/c0;

    invoke-direct {v3, p1, v2}, Le/k/a/c/n0/c0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    .line 24
    iget-object p1, p2, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    :cond_8
    monitor-exit p2

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-object p3

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public B(Le/k/a/c/i;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->o(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public C(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->o(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Null passed for `valueType` of `findValueSerializer()`"

    .line 7
    invoke-virtual {p0, p2, p1}, Le/k/a/c/a0;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    iget-object v1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 6
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->p(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public final E()Le/k/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {v0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->e:Le/k/a/c/c0/i;

    check-cast v0, Le/k/a/c/c0/i$a;

    .line 2
    iget-object v1, v0, Le/k/a/c/c0/i$a;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Le/k/a/c/c0/i$a;->d:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Le/k/a/c/c0/i$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public G(Ljava/lang/Class;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/c/a0;->f:Le/k/a/c/n;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Le/k/a/c/l0/s/q;

    invoke-direct {v0, p1}, Le/k/a/c/l0/s/q;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Le/k/a/c/l0/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/k/a/c/l0/i;

    invoke-interface {p1, p0, p2}, Le/k/a/c/l0/i;->b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Le/k/a/c/l0/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/k/a/c/l0/i;

    invoke-interface {p1, p0, p2}, Le/k/a/c/l0/i;->b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public abstract J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/s;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation
.end method

.method public abstract K(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation
.end method

.method public final L(Le/k/a/c/p;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    return p1
.end method

.method public final M(Le/k/a/c/z;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {v0, p1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result p1

    return p1
.end method

.method public varargs N(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/c;",
            "Le/k/a/c/g0/s;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "N/A"

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p4, p1, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 4
    iget-object p4, p4, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-static {p4}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p4, v1, v0

    const/4 p4, 0x2

    aput-object p3, v1, p4

    const-string p3, "Invalid definition for property %s (of type %s): %s"

    .line 6
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 7
    move-object p4, p0

    check-cast p4, Le/k/a/c/l0/j;

    .line 8
    iget-object p4, p4, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 9
    new-instance v0, Le/k/a/c/e0/b;

    invoke-direct {v0, p4, p3, p1, p2}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/g;Ljava/lang/String;Le/k/a/c/c;Le/k/a/c/g0/s;)V

    .line 10
    throw v0
.end method

.method public varargs O(Le/k/a/c/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/c;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p2, p3}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Invalid type definition for type %s: %s"

    .line 5
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    move-object p3, p0

    check-cast p3, Le/k/a/c/l0/j;

    .line 7
    iget-object p3, p3, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    const/4 v0, 0x0

    .line 8
    new-instance v1, Le/k/a/c/e0/b;

    invoke-direct {v1, p3, p2, p1, v0}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/g;Ljava/lang/String;Le/k/a/c/c;Le/k/a/c/g0/s;)V

    .line 9
    throw v1
.end method

.method public varargs P(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Le/k/a/c/l0/j;

    .line 2
    iget-object v0, v0, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 3
    invoke-virtual {p0, p1, p2}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Le/k/a/c/k;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    throw p2
.end method

.method public abstract Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation
.end method

.method public h()Le/k/a/c/c0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    return-object v0
.end method

.method public final i()Le/k/a/c/m0/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    return-object v0
.end method

.method public j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p1}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Could not resolve type id \'%s\' as a subtype of %s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p3}, Le/k/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    new-instance v0, Le/k/a/c/e0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p1, p2}, Le/k/a/c/e0/e;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;Ljava/lang/String;)V

    return-object v0
.end method

.method public m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/i;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Le/k/a/c/l0/j;

    .line 2
    iget-object v0, v0, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 3
    new-instance v1, Le/k/a/c/e0/b;

    invoke-direct {v1, v0, p2, p1}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/g;Ljava/lang/String;Le/k/a/c/i;)V

    .line 4
    throw v1
.end method

.method public o(Le/k/a/c/i;)Le/k/a/c/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->q(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 3
    monitor-enter v2

    .line 4
    :try_start_1
    iget-object v3, v2, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    new-instance v4, Le/k/a/c/n0/c0;

    invoke-direct {v4, p1, v0}, Le/k/a/c/n0/c0;-><init>(Le/k/a/c/i;Z)V

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v2, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    :cond_0
    instance-of p1, v1, Le/k/a/c/l0/n;

    if-eqz p1, :cond_1

    .line 7
    move-object p1, v1

    check-cast p1, Le/k/a/c/l0/n;

    invoke-interface {p1, p0}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    .line 8
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v1, v0}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    move-object v1, p0

    check-cast v1, Le/k/a/c/l0/j;

    .line 12
    iget-object v1, v1, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 13
    new-instance v2, Le/k/a/c/k;

    invoke-direct {v2, v1, v0, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw v2
.end method

.method public p(Ljava/lang/Class;)Le/k/a/c/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 4
    sget-object v1, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Le/k/a/c/a0;->q(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 6
    iget-object v4, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    .line 7
    monitor-enter v4

    .line 8
    :try_start_1
    iget-object v5, v4, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    new-instance v6, Le/k/a/c/n0/c0;

    invoke-direct {v6, p1, v1}, Le/k/a/c/n0/c0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    iget-object v5, v4, Le/k/a/c/l0/o;->a:Ljava/util/HashMap;

    new-instance v6, Le/k/a/c/n0/c0;

    invoke-direct {v6, v0, v1}, Le/k/a/c/n0/c0;-><init>(Le/k/a/c/i;Z)V

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 10
    :cond_0
    iget-object p1, v4, Le/k/a/c/l0/o;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_1
    instance-of p1, v3, Le/k/a/c/l0/n;

    if-eqz p1, :cond_2

    .line 12
    move-object p1, v3

    check-cast p1, Le/k/a/c/l0/n;

    invoke-interface {p1, p0}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    .line 13
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object v3

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, v0, v1}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    move-object v1, p0

    check-cast v1, Le/k/a/c/l0/j;

    .line 17
    iget-object v1, v1, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 18
    new-instance v2, Le/k/a/c/k;

    invoke-direct {v2, v1, v0, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v2
.end method

.method public q(Le/k/a/c/i;)Le/k/a/c/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->c:Le/k/a/c/l0/p;

    check-cast v0, Le/k/a/c/l0/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    invoke-virtual {v1, p1}, Le/k/a/c/y;->v(Le/k/a/c/i;)Le/k/a/c/c;

    move-result-object v2

    .line 5
    move-object v3, v2

    check-cast v3, Le/k/a/c/g0/q;

    .line 6
    iget-object v3, v3, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 7
    invoke-virtual {v0, p0, v3}, Le/k/a/c/l0/b;->e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;

    move-result-object v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {v1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move-object v4, p1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    move-object v7, v2

    check-cast v7, Le/k/a/c/g0/q;

    .line 10
    iget-object v7, v7, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 11
    invoke-virtual {v4, v1, v7, p1}, Le/k/a/c/b;->r0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v4
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v7, 0x1

    if-ne v4, p1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 13
    invoke-virtual {v4, p1}, Le/k/a/c/i;->u(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-virtual {v1, v4}, Le/k/a/c/y;->v(Le/k/a/c/i;)Le/k/a/c/c;

    move-result-object v2

    :cond_3
    move v5, v7

    .line 15
    :goto_1
    move-object p1, v2

    check-cast p1, Le/k/a/c/g0/q;

    .line 16
    iget-object v8, p1, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    if-nez v8, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v6, p1, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    invoke-virtual {v8, v6}, Le/k/a/c/b;->R(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Le/k/a/c/g0/q;->g(Ljava/lang/Object;)Le/k/a/c/n0/i;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_5

    .line 18
    invoke-virtual {v0, p0, v4, v2, v5}, Le/k/a/c/l0/f;->h(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;Z)Le/k/a/c/n;

    move-result-object v3

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p0}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object p1

    invoke-interface {v6, p1}, Le/k/a/c/n0/i;->b(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object p1

    .line 20
    iget-object v4, v4, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 21
    invoke-virtual {p1, v4}, Le/k/a/c/i;->u(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 22
    invoke-virtual {v1, p1}, Le/k/a/c/y;->v(Le/k/a/c/i;)Le/k/a/c/c;

    move-result-object v2

    .line 23
    move-object v1, v2

    check-cast v1, Le/k/a/c/g0/q;

    .line 24
    iget-object v1, v1, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 25
    invoke-virtual {v0, p0, v1}, Le/k/a/c/l0/b;->e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    .line 26
    invoke-virtual {p1}, Le/k/a/c/i;->E()Z

    move-result v1

    if-nez v1, :cond_7

    .line 27
    invoke-virtual {v0, p0, p1, v2, v7}, Le/k/a/c/l0/f;->h(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;Z)Le/k/a/c/n;

    move-result-object v3

    .line 28
    :cond_7
    new-instance v0, Le/k/a/c/l0/t/j0;

    invoke-direct {v0, v6, p1, v3}, Le/k/a/c/l0/t/j0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V

    move-object v3, v0

    :goto_3
    return-object v3

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Le/k/a/c/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0}, Le/k/a/c/a0;->O(Le/k/a/c/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v6
.end method

.method public final r()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->k:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    iget-object v0, v0, Le/k/a/c/c0/a;->h:Ljava/text/DateFormat;

    .line 5
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Le/k/a/c/a0;->k:Ljava/text/DateFormat;

    return-object v0
.end method

.method public s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public final t(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/a0;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/a0;->h:Le/k/a/c/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_0
    return-void
.end method

.method public u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->o(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    iget-object v1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 6
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->p(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public w(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->c:Le/k/a/c/l0/p;

    iget-object v1, p0, Le/k/a/c/a0;->g:Le/k/a/c/n;

    invoke-virtual {v0, p0, p1, v1}, Le/k/a/c/l0/p;->a(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object p1

    .line 2
    instance-of v0, p1, Le/k/a/c/l0/n;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Le/k/a/c/l0/n;

    invoke-interface {v0, p0}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public abstract x(Ljava/lang/Object;Le/k/a/a/k0;)Le/k/a/c/l0/s/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/a/k0<",
            "*>;)",
            "Le/k/a/c/l0/s/u;"
        }
    .end annotation
.end method

.method public y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->o(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    iget-object v1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 6
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->p(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p2}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    return-object p1
.end method
