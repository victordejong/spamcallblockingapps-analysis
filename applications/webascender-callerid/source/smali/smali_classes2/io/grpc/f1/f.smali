.class public Lio/grpc/f1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/y;
.implements Lio/grpc/f1/h1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/f$h;,
        Lio/grpc/f1/f$i;
    }
.end annotation


# instance fields
.field private final f:Lio/grpc/f1/h1$b;

.field private final g:Lio/grpc/f1/h1;

.field private final h:Lio/grpc/f1/f$i;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/f1/h1$b;Lio/grpc/f1/f$i;Lio/grpc/f1/h1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/f;->i:Ljava/util/Queue;

    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/h1$b;

    iput-object p1, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    const-string p1, "transportExecutor"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/f1/f$i;

    iput-object p2, p0, Lio/grpc/f1/f;->h:Lio/grpc/f1/f$i;

    .line 5
    invoke-virtual {p3, p0}, Lio/grpc/f1/h1;->D(Lio/grpc/f1/h1$b;)V

    .line 6
    iput-object p3, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    return-void
.end method

.method static synthetic k(Lio/grpc/f1/f;)Lio/grpc/f1/h1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/f1/f;)Lio/grpc/f1/h1$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    return-object p0
.end method

.method static synthetic m(Lio/grpc/f1/f;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/f;->i:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/f1/g2$a;)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p1}, Lio/grpc/f1/g2$a;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/f;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    new-instance v1, Lio/grpc/f1/f$h;

    new-instance v2, Lio/grpc/f1/f$a;

    invoke-direct {v2, p0, p1}, Lio/grpc/f1/f$a;-><init>(Lio/grpc/f1/f;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/f1/f$h;-><init>(Lio/grpc/f1/f;Ljava/lang/Runnable;Lio/grpc/f1/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/f1/h1$b;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method

.method public c(Lio/grpc/f1/p0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    invoke-virtual {v0, p1}, Lio/grpc/f1/h1;->c(Lio/grpc/f1/p0;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    invoke-virtual {v0}, Lio/grpc/f1/h1;->K()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    new-instance v1, Lio/grpc/f1/f$h;

    new-instance v2, Lio/grpc/f1/f$d;

    invoke-direct {v2, p0}, Lio/grpc/f1/f$d;-><init>(Lio/grpc/f1/f;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/f1/f$h;-><init>(Lio/grpc/f1/f;Ljava/lang/Runnable;Lio/grpc/f1/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/f1/h1$b;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->h:Lio/grpc/f1/f$i;

    new-instance v1, Lio/grpc/f1/f$f;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/f$f;-><init>(Lio/grpc/f1/f;Z)V

    invoke-interface {v0, v1}, Lio/grpc/f1/f$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    invoke-virtual {v0, p1}, Lio/grpc/f1/h1;->e(I)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    new-instance v1, Lio/grpc/f1/f$h;

    new-instance v2, Lio/grpc/f1/f$c;

    invoke-direct {v2, p0}, Lio/grpc/f1/f$c;-><init>(Lio/grpc/f1/f;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/f1/f$h;-><init>(Lio/grpc/f1/f;Ljava/lang/Runnable;Lio/grpc/f1/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/f1/h1$b;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->h:Lio/grpc/f1/f$i;

    new-instance v1, Lio/grpc/f1/f$e;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/f$e;-><init>(Lio/grpc/f1/f;I)V

    invoke-interface {v0, v1}, Lio/grpc/f1/f$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->h:Lio/grpc/f1/f$i;

    new-instance v1, Lio/grpc/f1/f$g;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/f$g;-><init>(Lio/grpc/f1/f;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/grpc/f1/f$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Lio/grpc/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->g:Lio/grpc/f1/h1;

    invoke-virtual {v0, p1}, Lio/grpc/f1/h1;->i(Lio/grpc/u;)V

    return-void
.end method

.method public j(Lio/grpc/f1/s1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/f;->f:Lio/grpc/f1/h1$b;

    new-instance v1, Lio/grpc/f1/f$h;

    new-instance v2, Lio/grpc/f1/f$b;

    invoke-direct {v2, p0, p1}, Lio/grpc/f1/f$b;-><init>(Lio/grpc/f1/f;Lio/grpc/f1/s1;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/f1/f$h;-><init>(Lio/grpc/f1/f;Ljava/lang/Runnable;Lio/grpc/f1/f$a;)V

    invoke-interface {v0, v1}, Lio/grpc/f1/h1$b;->a(Lio/grpc/f1/g2$a;)V

    return-void
.end method
