.class public final Le/a/k/c/r$i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;->g(Le/m/a/c/c0;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/k/c/t;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getPlayerEvents$1"
    f = "ExoPlayerUtil.kt"
    l = {
        0xf5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/c/r;

.field public final synthetic h:Le/m/a/c/c0;


# direct methods
.method public constructor <init>(Le/a/k/c/r;Le/m/a/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$i;->g:Le/a/k/c/r;

    iput-object p2, p0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/r$i;

    iget-object v1, p0, Le/a/k/c/r$i;->g:Le/a/k/c/r;

    iget-object v2, p0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    invoke-direct {v0, v1, v2, p2}, Le/a/k/c/r$i;-><init>(Le/a/k/c/r;Le/m/a/c/c0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/c/r$i;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/r$i;

    iget-object v1, p0, Le/a/k/c/r$i;->g:Le/a/k/c/r;

    iget-object v2, p0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    invoke-direct {v0, v1, v2, p2}, Le/a/k/c/r$i;-><init>(Le/a/k/c/r;Le/m/a/c/c0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/c/r$i;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/r$i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/r$i;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Le/a/k/c/r$i;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/x;

    .line 4
    new-instance v1, Le/a/k/c/r$i$b;

    invoke-direct {v1, p1}, Le/a/k/c/r$i$b;-><init>(Lq3/a/w2/x;)V

    .line 5
    iget-object v3, p0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    invoke-interface {v3, v1}, Le/m/a/c/q0;->addListener(Le/m/a/c/q0$b;)V

    .line 6
    iget-object v3, p0, Le/a/k/c/r$i;->g:Le/a/k/c/r;

    .line 7
    iget-object v3, v3, Le/a/k/c/r;->h:Le/a/k/b/h;

    .line 8
    iget-object v4, p0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sendChannel"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "player"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v5, v3, Le/a/k/b/h;->b:Le/a/k/c/i1;

    const-string v6, "debugVideoDownloadPercentage"

    invoke-interface {v5, v6}, Le/a/k/c/i1;->contains(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v5, v3, Le/a/k/b/h;->b:Le/a/k/c/i1;

    const/16 v8, 0x64

    invoke-interface {v5, v6, v8}, Le/a/k/c/i1;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 12
    sget-object v8, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v9, v3, Le/a/k/b/h;->a:Ls1/w/f;

    const/4 v10, 0x0

    new-instance v11, Le/a/k/b/g;

    invoke-direct {v11, v4, v5, p1, v7}, Le/a/k/b/g;-><init>(Le/m/a/c/c0;ILq3/a/w2/d0;Ls1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v7

    .line 13
    :goto_0
    new-instance v3, Le/a/k/c/r$i$a;

    invoke-direct {v3, p0, v1, v7}, Le/a/k/c/r$i$a;-><init>(Le/a/k/c/r$i;Le/a/k/c/r$i$b;Lq3/a/p1;)V

    iput v2, p0, Le/a/k/c/r$i;->f:I

    invoke-static {p1, v3, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 14
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
