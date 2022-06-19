.class final Li/c/z/e/b/h$a;
.super Li/c/z/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/h/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final k:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/z/c/a;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/c/a<",
            "-TT;>;",
            "Li/c/y/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/h/a;-><init>(Li/c/z/c/a;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/h$a;->k:Li/c/y/e;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/h/a;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Li/c/z/h/a;->j:I

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Li/c/z/h/a;->f:Li/c/z/c/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li/c/z/c/a;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Li/c/z/e/b/h$a;->k:Li/c/y/e;

    invoke-interface {v2, p1}, Li/c/y/e;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Li/c/z/h/a;->f:Li/c/z/c/a;

    invoke-interface {v2, p1}, Li/c/z/c/a;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Li/c/z/h/a;->c(Ljava/lang/Throwable;)V

    return v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/z/e/b/h$a;->d(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/z/h/a;->g:Lo/a/c;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/h/a;->h:Li/c/z/c/f;

    .line 2
    iget-object v1, p0, Li/c/z/e/b/h$a;->k:Li/c/y/e;

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Li/c/z/c/i;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v1, v2}, Li/c/y/e;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 5
    :cond_2
    iget v2, p0, Li/c/z/h/a;->j:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x1

    .line 6
    invoke-interface {v0, v2, v3}, Lo/a/c;->request(J)V

    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/z/h/a;->e(I)I

    move-result p1

    return p1
.end method
