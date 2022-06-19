.class public final Le/a/d/v/e$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/e;->e()Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.GroupCallManagerImpl$endCall$1"
    f = "GroupCallManager.kt"
    l = {
        0xf2,
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/e;


# direct methods
.method public constructor <init>(Le/a/d/v/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/v/e$c;

    iget-object v0, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    invoke-direct {p1, v0, p2}, Le/a/d/v/e$c;-><init>(Le/a/d/v/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/e$c;

    iget-object v0, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    invoke-direct {p1, v0, p2}, Le/a/d/v/e$c;-><init>(Le/a/d/v/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/e$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/e$c;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/v/e$c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/v/e$c;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v3, p0, Le/a/d/v/e$c;->e:Ljava/lang/Object;

    check-cast v3, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    .line 5
    iget-object p1, p1, Le/a/d/v/e;->c:Lq3/a/x2/a1;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-interface {p1, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    .line 9
    iget-object p1, p1, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 10
    iget-object v1, p1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 11
    iput-object p1, p0, Le/a/d/v/e$c;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/v/e$c;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/e$c;->g:I

    invoke-interface {v1, v4, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    .line 13
    iget-object p1, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    invoke-virtual {p1}, Le/a/d/v/e;->b()Le/a/d/v/b;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v3, Le/a/d/v/h$b$h;->b:Le/a/d/v/h$b$h;

    invoke-interface {p1, v3}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Le/a/d/v/e$c;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/d/v/e$c;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/v/e$c;->g:I

    invoke-interface {p1, p0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    .line 14
    :goto_1
    :try_start_2
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-interface {v0, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Le/a/d/v/e$c;->h:Le/a/d/v/e;

    .line 17
    iget-object v0, v0, Le/a/d/v/e;->c:Lq3/a/x2/a1;

    .line 18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 20
    :goto_2
    invoke-interface {v0, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
