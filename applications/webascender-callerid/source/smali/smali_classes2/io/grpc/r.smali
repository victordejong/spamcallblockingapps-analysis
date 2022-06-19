.class public Lio/grpc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/r$c;,
        Lio/grpc/r$f;,
        Lio/grpc/r$d;,
        Lio/grpc/r$g;,
        Lio/grpc/r$b;,
        Lio/grpc/r$a;,
        Lio/grpc/r$e;
    }
.end annotation


# static fields
.field static final j:Ljava/util/logging/Logger;

.field private static final k:Lio/grpc/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/w0<",
            "Ljava/lang/Object<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lio/grpc/r;


# instance fields
.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/r$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/grpc/r$b;

.field final h:Lio/grpc/r$a;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/r;->j:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/w0;

    invoke-direct {v0}, Lio/grpc/w0;-><init>()V

    sput-object v0, Lio/grpc/r;->k:Lio/grpc/w0;

    .line 3
    new-instance v1, Lio/grpc/r;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/grpc/r;-><init>(Lio/grpc/r;Lio/grpc/w0;)V

    sput-object v1, Lio/grpc/r;->l:Lio/grpc/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/r;Lio/grpc/w0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r;",
            "Lio/grpc/w0<",
            "Ljava/lang/Object<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lio/grpc/r$f;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lio/grpc/r$f;-><init>(Lio/grpc/r;Lio/grpc/q;)V

    iput-object p2, p0, Lio/grpc/r;->g:Lio/grpc/r$b;

    .line 3
    invoke-static {p1}, Lio/grpc/r;->e(Lio/grpc/r;)Lio/grpc/r$a;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lio/grpc/r;->i:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lio/grpc/r;->i:I

    .line 5
    invoke-static {p1}, Lio/grpc/r;->A(I)V

    return-void
.end method

.method private static A(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/grpc/r;->j:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static e(Lio/grpc/r;)Lio/grpc/r$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Lio/grpc/r$a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lio/grpc/r$a;

    return-object p0

    .line 3
    :cond_1
    iget-object p0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    return-object p0
.end method

.method static g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i()Lio/grpc/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/r;->z()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/r$g;->b()Lio/grpc/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/r;->l:Lio/grpc/r;

    :cond_0
    return-object v0
.end method

.method static z()Lio/grpc/r$g;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/r$e;->a:Lio/grpc/r$g;

    return-object v0
.end method


# virtual methods
.method public a(Lio/grpc/r$b;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "cancellationListener"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/r;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/r;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/grpc/r;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lio/grpc/r$d;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/r$d;-><init>(Lio/grpc/r;Ljava/util/concurrent/Executor;Lio/grpc/r$b;)V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/r;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Lio/grpc/r$d;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-eqz p1, :cond_2

    .line 12
    iget-object p2, p0, Lio/grpc/r;->g:Lio/grpc/r$b;

    sget-object v0, Lio/grpc/r$c;->INSTANCE:Lio/grpc/r$c;

    invoke-virtual {p1, p2, v0}, Lio/grpc/r;->a(Lio/grpc/r$b;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Lio/grpc/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/r;->z()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/r$g;->d(Lio/grpc/r;)Lio/grpc/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/r;->l:Lio/grpc/r;

    :cond_0
    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->f()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public j(Lio/grpc/r;)V
    .locals 1

    const-string v0, "toAttach"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/r;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/grpc/r;->z()Lio/grpc/r$g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/r$g;->c(Lio/grpc/r;Lio/grpc/r;)V

    return-void
.end method

.method public l()Lio/grpc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->l()Lio/grpc/t;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r$a;->o()Z

    move-result v0

    return v0
.end method

.method r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/r$d;

    iget-object v3, v3, Lio/grpc/r$d;->g:Lio/grpc/r$b;

    instance-of v3, v3, Lio/grpc/r$f;

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/r$d;

    invoke-virtual {v3}, Lio/grpc/r$d;->a()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/r$d;

    iget-object v2, v2, Lio/grpc/r$d;->g:Lio/grpc/r$b;

    instance-of v2, v2, Lio/grpc/r$f;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/r$d;

    invoke-virtual {v2}, Lio/grpc/r$d;->a()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-eqz v0, :cond_6

    .line 14
    iget-object v1, p0, Lio/grpc/r;->g:Lio/grpc/r$b;

    invoke-virtual {v0, v1}, Lio/grpc/r;->y(Lio/grpc/r$b;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public y(Lio/grpc/r$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/r$d;

    iget-object v1, v1, Lio/grpc/r$d;->g:Lio/grpc/r$b;

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lio/grpc/r;->h:Lio/grpc/r$a;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Lio/grpc/r;->g:Lio/grpc/r$b;

    invoke-virtual {p1, v0}, Lio/grpc/r;->y(Lio/grpc/r$b;)V

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/grpc/r;->f:Ljava/util/ArrayList;

    .line 11
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
