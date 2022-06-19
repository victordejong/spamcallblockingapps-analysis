.class public final Le/a/i0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i0;->onPrimaryClipChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.SearchOnCopyHelper$onPrimaryClipChanged$1"
    f = "SearchOnCopyHelper.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i0;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/i0;Ls1/z/c/c0;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i0$c;->f:Le/a/i0;

    iput-object p2, p0, Le/a/i0$c;->g:Ls1/z/c/c0;

    iput-boolean p3, p0, Le/a/i0$c;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i0$c;

    iget-object v0, p0, Le/a/i0$c;->f:Le/a/i0;

    iget-object v1, p0, Le/a/i0$c;->g:Ls1/z/c/c0;

    iget-boolean v2, p0, Le/a/i0$c;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i0$c;-><init>(Le/a/i0;Ls1/z/c/c0;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i0$c;

    iget-object v0, p0, Le/a/i0$c;->f:Le/a/i0;

    iget-object v1, p0, Le/a/i0$c;->g:Ls1/z/c/c0;

    iget-boolean v2, p0, Le/a/i0$c;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i0$c;-><init>(Le/a/i0;Ls1/z/c/c0;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/i0$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i0$c;->f:Le/a/i0;

    .line 5
    iget-object p1, p1, Le/a/i0;->q:Ls1/w/f;

    .line 6
    new-instance v2, Le/a/i0$c$a;

    invoke-direct {v2, p0, v3}, Le/a/i0$c$a;-><init>(Le/a/i0$c;Ls1/w/d;)V

    iput v4, p0, Le/a/i0$c;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    if-eqz p1, :cond_6

    .line 7
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 11
    iget-object v2, p0, Le/a/i0$c;->f:Le/a/i0;

    .line 12
    iget-object v2, v2, Le/a/i0;->o:Lo3/a;

    .line 13
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h3/b/a;

    invoke-interface {v2, v1}, Le/a/h3/b/a;->b(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Le/a/i0$c;->f:Le/a/i0;

    .line 15
    iget-object v2, v2, Le/a/i0;->o:Lo3/a;

    .line 16
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h3/b/a;

    iget-boolean v5, p0, Le/a/i0$c;->h:Z

    invoke-interface {v2, v5}, Le/a/h3/b/a;->f(Z)V

    .line 17
    iget-object v2, p0, Le/a/i0$c;->f:Le/a/i0;

    iget-boolean v5, p0, Le/a/i0$c;->h:Z

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    if-nez v5, :cond_6

    .line 19
    iget-object p1, v2, Le/a/i0;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-nez p1, :cond_3

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v2, Le/a/i0;->b:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long p1, v5, v7

    if-lez p1, :cond_6

    .line 21
    :cond_3
    iget-object p1, v2, Le/a/i0;->o:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h3/b/a;

    invoke-interface {p1}, Le/a/h3/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, v2, Le/a/i0;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/a0;

    const-string v5, "android.permission.READ_PHONE_STATE"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, v2, Le/a/i0;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/a0;

    invoke-interface {p1}, Le/a/p5/a0;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, v2, Le/a/i0;->n:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/u;

    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, v2, Le/a/i0;->j:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Le/a/i0;->b:J

    .line 27
    iput-object v1, v2, Le/a/i0;->c:Ljava/lang/String;

    .line 28
    iget-object p1, v2, Le/a/i0;->e:Lq3/a/p1;

    if-eqz p1, :cond_5

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Next search requested"

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    .line 29
    :cond_5
    sget-object v6, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v7, v2, Le/a/i0;->p:Ls1/w/f;

    const/4 v8, 0x0

    new-instance v9, Le/a/a2;

    invoke-direct {v9, v2, v1, v3}, Le/a/a2;-><init>(Le/a/i0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, v2, Le/a/i0;->e:Lq3/a/p1;

    :cond_6
    return-object v0
.end method
