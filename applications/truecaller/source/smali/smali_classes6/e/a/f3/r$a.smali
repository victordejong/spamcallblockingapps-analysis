.class public final Le/a/f3/r$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f3/r;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.callbubbles.CallBubblesImpl$maybeInitialize$1$1"
    f = "CallBubbles.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f3/r;

.field public final synthetic h:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/f3/r;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/r$a;->g:Le/a/f3/r;

    iput-object p2, p0, Le/a/f3/r$a;->h:Ls1/z/c/c0;

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

    new-instance p1, Le/a/f3/r$a;

    iget-object v0, p0, Le/a/f3/r$a;->g:Le/a/f3/r;

    iget-object v1, p0, Le/a/f3/r$a;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/f3/r$a;-><init>(Le/a/f3/r;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f3/r$a;

    iget-object v0, p0, Le/a/f3/r$a;->g:Le/a/f3/r;

    iget-object v1, p0, Le/a/f3/r$a;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/f3/r$a;-><init>(Le/a/f3/r;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f3/r$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f3/r$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/f3/r$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

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

    .line 4
    iget-object p1, p0, Le/a/f3/r$a;->h:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-virtual {p1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->o()V

    .line 5
    iget-object p1, p0, Le/a/f3/r$a;->g:Le/a/f3/r;

    iget-object p1, p1, Le/a/f3/r;->f:Le/a/f3/o;

    .line 6
    invoke-virtual {p1}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Le/a/f3/r$a;->e:Ljava/lang/Object;

    iput v2, p1, Le/a/f3/r$a;->f:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v3}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/z/b/l;

    .line 8
    iget-object v4, v0, Le/a/f3/r$a;->h:Ls1/z/c/c0;

    iget-object v4, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-interface {p1, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
