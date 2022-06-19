.class public final Ln3/c0/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/c0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x79,
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/c0/c;

.field public final synthetic h:Lq3/a/x2/g;

.field public final synthetic i:Ls1/z/c/c0;

.field public final synthetic j:Lq3/a/w2/j;

.field public final synthetic k:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ln3/c0/c;Lq3/a/x2/g;Ls1/z/c/c0;Lq3/a/w2/j;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iput-object p2, p0, Ln3/c0/c$a;->h:Lq3/a/x2/g;

    iput-object p3, p0, Ln3/c0/c$a;->i:Ls1/z/c/c0;

    iput-object p4, p0, Ln3/c0/c$a;->j:Lq3/a/w2/j;

    iput-object p5, p0, Ln3/c0/c$a;->k:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Ln3/c0/c$a;

    iget-object v1, p0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iget-object v2, p0, Ln3/c0/c$a;->h:Lq3/a/x2/g;

    iget-object v3, p0, Ln3/c0/c$a;->i:Ls1/z/c/c0;

    iget-object v4, p0, Ln3/c0/c$a;->j:Lq3/a/w2/j;

    iget-object v5, p0, Ln3/c0/c$a;->k:Ls1/z/c/c0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ln3/c0/c$a;-><init>(Ln3/c0/c;Lq3/a/x2/g;Ls1/z/c/c0;Lq3/a/w2/j;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Ln3/c0/c$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Ln3/c0/c$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/c0/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/c0/c$a;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Ln3/c0/c$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Ln3/c0/c$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iget-object p1, p1, Ln3/c0/c;->i:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object p1

    iget-object v1, p0, Ln3/c0/c$a;->i:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/c0/c$b;

    invoke-virtual {p1, v1}, Ln3/c0/o;->a(Ln3/c0/o$c;)V

    .line 5
    :try_start_2
    iget-object p1, p0, Ln3/c0/c$a;->j:Lq3/a/w2/j;

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    move-object p1, p0

    :goto_1
    :try_start_3
    iput-object v1, p1, Ln3/c0/c$a;->e:Ljava/lang/Object;

    iput v2, p1, Ln3/c0/c$a;->f:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v1

    move-object v1, v8

    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v4}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 6
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    iget-object v5, v0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iget-object v5, v5, Ln3/c0/c;->j:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object v5, v0, Ln3/c0/c$a;->k:Ls1/z/c/c0;

    iget-object v5, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Ls1/w/f;

    new-instance v6, Ln3/c0/c$a$a;

    const/4 v7, 0x0

    invoke-direct {v6, v0, p1, v7}, Ln3/c0/c$a$a;-><init>(Ln3/c0/c$a;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v4, v0, Ln3/c0/c$a;->e:Ljava/lang/Object;

    iput v3, v0, Ln3/c0/c$a;->f:I

    invoke-static {v5, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    .line 8
    :cond_5
    iget-object p1, v0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iget-object p1, p1, Ln3/c0/c;->i:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object p1

    iget-object v0, v0, Ln3/c0/c$a;->i:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ln3/c0/c$b;

    invoke-virtual {p1, v0}, Ln3/c0/o;->d(Ln3/c0/o$c;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    .line 10
    :goto_3
    iget-object v1, v0, Ln3/c0/c$a;->g:Ln3/c0/c;

    iget-object v1, v1, Ln3/c0/c;->i:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object v1

    iget-object v0, v0, Ln3/c0/c$a;->i:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ln3/c0/c$b;

    invoke-virtual {v1, v0}, Ln3/c0/o;->d(Ln3/c0/o$c;)V

    throw p1
.end method
