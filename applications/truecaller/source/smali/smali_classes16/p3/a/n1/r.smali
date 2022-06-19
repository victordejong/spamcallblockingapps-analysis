.class public final Lp3/a/n1/r;
.super Lp3/a/n1/z;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lp3/a/g1;

.field public final synthetic c:Lp3/a/o0;

.field public final synthetic d:Lp3/a/n1/q$d;


# direct methods
.method public constructor <init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/g1;Lp3/a/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iput-object p3, p0, Lp3/a/n1/r;->b:Lp3/a/g1;

    iput-object p4, p0, Lp3/a/n1/r;->c:Lp3/a/o0;

    .line 2
    iget-object p1, p1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 3
    iget-object p1, p1, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 4
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v0, v0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lp3/a/n1/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 8
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 11
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 12
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    throw v0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/r;->b:Lp3/a/g1;

    .line 2
    iget-object v1, p0, Lp3/a/n1/r;->c:Lp3/a/o0;

    .line 3
    iget-object v2, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    .line 4
    iget-object v2, v2, Lp3/a/n1/q$d;->b:Lp3/a/g1;

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Lp3/a/o0;

    invoke-direct {v1}, Lp3/a/o0;-><init>()V

    move-object v0, v2

    .line 6
    :cond_0
    iget-object v2, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v2, v2, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v2, Lp3/a/n1/q;->k:Z

    .line 8
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v3, v2, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 9
    iget-object v2, v2, Lp3/a/n1/q$d;->a:Lp3/a/f$a;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2, v0, v1}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 13
    invoke-virtual {v1}, Lp3/a/n1/q;->h()V

    .line 14
    iget-object v1, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 15
    iget-object v1, v1, Lp3/a/n1/q;->e:Lp3/a/n1/n;

    .line 16
    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lp3/a/n1/n;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 17
    iget-object v2, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v2, v2, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 18
    invoke-virtual {v2}, Lp3/a/n1/q;->h()V

    .line 19
    iget-object v2, p0, Lp3/a/n1/r;->d:Lp3/a/n1/q$d;

    iget-object v2, v2, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 20
    iget-object v2, v2, Lp3/a/n1/q;->e:Lp3/a/n1/n;

    .line 21
    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v0

    invoke-virtual {v2, v0}, Lp3/a/n1/n;->a(Z)V

    throw v1
.end method
