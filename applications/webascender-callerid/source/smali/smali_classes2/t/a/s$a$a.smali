.class Lt/a/s$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/a/s$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt/a/s$a;


# direct methods
.method constructor <init>(Lt/a/s$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v0, v0, Lt/a/s$a;->g:Lt/a/s;

    invoke-static {v0}, Lt/a/s;->g(Lt/a/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v0, v0, Lt/a/s$a;->g:Lt/a/s;

    invoke-virtual {v0}, Lt/a/s;->getState()Lt/a/o;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v2, v2, Lt/a/s$a;->g:Lt/a/s;

    invoke-static {v2}, Lt/a/s;->h(Lt/a/s;)Lt/a/c;

    move-result-object v2

    iget-object v3, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v3, v3, Lt/a/s$a;->g:Lt/a/s;

    invoke-virtual {v3}, Lt/a/s;->getState()Lt/a/o;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lt/a/c;->e(Lt/a/o;Lt/a/a;)Lt/a/c$a;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v2, v2, Lt/a/s$a;->g:Lt/a/s;

    invoke-virtual {p1}, Lt/a/c$a;->a()Lt/a/o;

    move-result-object v3

    invoke-static {v2, v3}, Lt/a/s;->i(Lt/a/s;Lt/a/o;)Lt/a/o;

    .line 5
    iget-object v2, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v2, v2, Lt/a/s$a;->g:Lt/a/s;

    invoke-static {v2}, Lt/a/s;->g(Lt/a/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v1, p0, Lt/a/s$a$a;->a:Lt/a/s$a;

    iget-object v1, v1, Lt/a/s$a;->g:Lt/a/s;

    invoke-virtual {v1}, Lt/a/s;->getState()Lt/a/o;

    move-result-object v2

    invoke-virtual {p1}, Lt/a/c$a;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lt/a/s;->j(Lt/a/s;Lt/a/o;Lt/a/o;Ljava/util/Collection;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must not dispatch actions in your reducer. Seriously. (\u256f\u00b0\u25a1\u00b0\uff09\u256f\ufe35 \u253b\u2501\u253b"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
