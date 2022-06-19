.class public final Le/a/c/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/c/c;


# instance fields
.field public final a:Lq3/a/i0;

.field public b:Lq3/a/p1;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 2
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/c/d;->c:Ls1/w/f;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/c/d;->a:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/c/d;->b:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Le/a/c/q/g;)V
    .locals 11

    const-string v0, "otpData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 2
    iget-wide v1, p1, Le/a/c/q/g;->e:J

    const-string v3, "now"

    .line 3
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v3, v0, Lw3/b/a/e0/e;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lw3/b/a/b;

    .line 6
    iget-wide v2, p1, Le/a/c/q/g;->e:J

    .line 7
    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    const-string v2, "$this$trimSeconds"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/e0/a;->u()I

    move-result v4

    invoke-virtual {v1}, Lw3/b/a/e0/a;->t()I

    move-result v5

    invoke-virtual {v1}, Lw3/b/a/e0/a;->q()I

    move-result v6

    invoke-virtual {v1}, Lw3/b/a/e0/a;->r()I

    move-result v7

    invoke-virtual {v1}, Lw3/b/a/e0/a;->s()I

    move-result v8

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lw3/b/a/b;-><init>(IIIIII)V

    .line 10
    iget-wide v1, v2, Lw3/b/a/e0/e;->a:J

    iget-wide v3, v0, Lw3/b/a/e0/e;->a:J

    sub-long/2addr v1, v3

    .line 11
    iget-object v0, p0, Le/a/c/a/c/d;->b:Lq3/a/p1;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v5, p0, Le/a/c/a/c/d;->a:Lq3/a/i0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Le/a/c/a/c/d$a;

    invoke-direct {v8, v1, v2, p1, v3}, Le/a/c/a/c/d$a;-><init>(JLe/a/c/q/g;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/c/d;->b:Lq3/a/p1;

    return-void
.end method
