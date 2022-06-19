.class public final Le/a/d/v/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/e;->h(Le/a/d/a/p;)Lq3/a/n0;
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
        "Le/a/d/a/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$initiateDebugCall$1"
    f = "GroupCallManager.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/e;

.field public final synthetic i:Le/a/d/a/p;


# direct methods
.method public constructor <init>(Le/a/d/v/e;Le/a/d/a/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    iput-object p2, p0, Le/a/d/v/e$d;->i:Le/a/d/a/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/d/v/e$d;

    iget-object v0, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    iget-object v1, p0, Le/a/d/v/e$d;->i:Le/a/d/a/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/e$d;-><init>(Le/a/d/v/e;Le/a/d/a/p;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/e$d;

    iget-object v0, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    iget-object v1, p0, Le/a/d/v/e$d;->i:Le/a/d/a/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/e$d;-><init>(Le/a/d/v/e;Le/a/d/a/p;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/e$d;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/d/v/e$d;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v1, p0, Le/a/d/v/e$d;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

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
    iget-object p1, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    .line 5
    iget-object v1, p1, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 6
    iget-object p1, v1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v1, p0, Le/a/d/v/e$d;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/v/e$d;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/e$d;->g:I

    invoke-interface {p1, v2, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 9
    iget-object v1, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    .line 10
    iget-object v1, v1, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 11
    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/f;

    sget-object v4, Le/a/d/v/f$b;->a:Le/a/d/v/f$b;

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v2

    .line 13
    :cond_3
    :try_start_1
    iget-object v1, p0, Le/a/d/v/e$d;->i:Le/a/d/a/p;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Le/a/d/a/p;

    iget-object v3, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    .line 14
    iget-object v3, v3, Le/a/d/v/e;->g:Lo3/a;

    .line 15
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "callUserResolver.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/d/c0/e;

    invoke-direct {v1, v3}, Le/a/d/a/p;-><init>(Le/a/d/c0/e;)V

    .line 16
    :goto_1
    new-instance v3, Le/a/d/a/v;

    invoke-direct {v3, v1}, Le/a/d/a/v;-><init>(Le/a/d/a/p;)V

    .line 17
    iget-object v4, p0, Le/a/d/v/e$d;->h:Le/a/d/v/e;

    .line 18
    invoke-virtual {v4, v3}, Le/a/d/v/e;->j(Le/a/d/v/b;)Lq3/a/p1;

    .line 19
    new-instance v4, Le/a/d/v/f$a;

    invoke-direct {v4, v3, v1}, Le/a/d/v/f$a;-><init>(Le/a/d/v/b;Le/a/d/c0/z1/d;)V

    invoke-interface {p1, v4}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
