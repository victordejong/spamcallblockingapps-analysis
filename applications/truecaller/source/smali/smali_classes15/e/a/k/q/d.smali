.class public final Le/a/k/q/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Lq3/a/n<",
        "-",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Le/a/k/q/b;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$downloadVideo$2$2"
    f = "VideoCallerIdCachingWorker.kt"
    l = {
        0xa3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public final synthetic i:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/q/d;->i:Lq3/a/n;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Le/a/k/q/b;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/q/d;

    iget-object v1, p0, Le/a/k/q/d;->i:Lq3/a/n;

    invoke-direct {v0, v1, p3}, Le/a/k/q/d;-><init>(Lq3/a/n;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/q/d;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/q/d;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/q/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/q/d;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Le/a/k/q/d;->g:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/q/d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/k/q/d;->f:Ljava/lang/Object;

    check-cast v1, Le/a/k/q/b;

    .line 4
    instance-of v4, v1, Le/a/k/q/b$a;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v1, Le/a/k/q/b$b;

    if-eqz v1, :cond_3

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 6
    :goto_1
    iget-object v4, p0, Le/a/k/q/d;->i:Lq3/a/n;

    const/4 v5, 0x0

    iput-object v5, p0, Le/a/k/q/d;->e:Ljava/lang/Object;

    iput v1, p0, Le/a/k/q/d;->g:I

    iput v3, p0, Le/a/k/q/d;->h:I

    invoke-interface {p1, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    move v2, v3

    .line 7
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
