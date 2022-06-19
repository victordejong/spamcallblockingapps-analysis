.class public final Ln3/c0/c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-TR;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:[Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Ln3/c0/q;

.field public final synthetic j:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>([Ljava/lang/String;ZLn3/c0/q;Ljava/util/concurrent/Callable;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/c0/c;->g:[Ljava/lang/String;

    iput-boolean p2, p0, Ln3/c0/c;->h:Z

    iput-object p3, p0, Ln3/c0/c;->i:Ln3/c0/q;

    iput-object p4, p0, Ln3/c0/c;->j:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/c0/c;

    iget-object v2, p0, Ln3/c0/c;->g:[Ljava/lang/String;

    iget-boolean v3, p0, Ln3/c0/c;->h:Z

    iget-object v4, p0, Ln3/c0/c;->i:Ln3/c0/q;

    iget-object v5, p0, Ln3/c0/c;->j:Ljava/util/concurrent/Callable;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ln3/c0/c;-><init>([Ljava/lang/String;ZLn3/c0/q;Ljava/util/concurrent/Callable;Ls1/w/d;)V

    iput-object p1, v0, Ln3/c0/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Ln3/c0/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Ln3/c0/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/c0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Ln3/c0/c;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/c0/c;->e:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lq3/a/x2/g;

    const/4 p1, -0x1

    const/4 v2, 0x6

    const/4 v4, 0x0

    .line 4
    invoke-static {p1, v4, v4, v2}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v8

    .line 5
    new-instance v7, Ls1/z/c/c0;

    invoke-direct {v7}, Ls1/z/c/c0;-><init>()V

    new-instance p1, Ln3/c0/c$b;

    iget-object v2, p0, Ln3/c0/c;->g:[Ljava/lang/String;

    invoke-direct {p1, p0, v8, v2}, Ln3/c0/c$b;-><init>(Ln3/c0/c;Lq3/a/w2/j;[Ljava/lang/String;)V

    iput-object p1, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    move-object p1, v8

    check-cast p1, Lq3/a/w2/c;

    invoke-virtual {p1, v0}, Lq3/a/w2/c;->offer(Ljava/lang/Object;)Z

    .line 7
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    .line 8
    iget-object p1, p0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 9
    iput-object p1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 11
    sget-object v2, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    invoke-interface {p1, v2}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    check-cast p1, Ln3/c0/d0;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p1, Ln3/c0/d0;->c:Ls1/w/e;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p1, p0, Ln3/c0/c;->h:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Ln3/c0/c;->i:Ln3/c0/q;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->A0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln3/c0/c;->i:Ln3/c0/q;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->u0(Ln3/c0/q;)Lq3/a/g0;

    move-result-object p1

    .line 14
    :goto_0
    new-instance v2, Ln3/c0/c$a;

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Ln3/c0/c$a;-><init>(Ln3/c0/c;Lq3/a/x2/g;Ls1/z/c/c0;Lq3/a/w2/j;Ls1/z/c/c0;Ls1/w/d;)V

    iput v3, p0, Ln3/c0/c;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method
