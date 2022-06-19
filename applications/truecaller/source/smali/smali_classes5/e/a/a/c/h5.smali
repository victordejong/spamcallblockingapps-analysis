.class public final Le/a/a/c/h5;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$loadStats$1$1"
    f = "ConversationPresenterImpl.kt"
    l = {
        0x58f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:J

.field public final synthetic g:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(JLs1/w/d;Le/a/a/c/e5;)V
    .locals 0

    iput-wide p1, p0, Le/a/a/c/h5;->f:J

    iput-object p4, p0, Le/a/a/c/h5;->g:Le/a/a/c/e5;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/h5;

    iget-wide v0, p0, Le/a/a/c/h5;->f:J

    iget-object v2, p0, Le/a/a/c/h5;->g:Le/a/a/c/e5;

    invoke-direct {p1, v0, v1, p2, v2}, Le/a/a/c/h5;-><init>(JLs1/w/d;Le/a/a/c/e5;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/h5;

    iget-wide v0, p0, Le/a/a/c/h5;->f:J

    iget-object v2, p0, Le/a/a/c/h5;->g:Le/a/a/c/e5;

    invoke-direct {p1, v0, v1, p2, v2}, Le/a/a/c/h5;-><init>(JLs1/w/d;Le/a/a/c/e5;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/h5;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/h5;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/a/c/h5;->g:Le/a/a/c/e5;

    .line 5
    iget-object p1, p1, Le/a/a/c/e5;->E:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-wide v3, p0, Le/a/a/c/h5;->f:J

    iput v2, p0, Le/a/a/c/h5;->e:I

    invoke-interface {p1, v3, v4, p0}, Le/a/a/g/w;->w(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/f;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/a/c/h5;->g:Le/a/a/c/e5;

    .line 7
    invoke-virtual {v0, p1}, Le/a/a/c/e5;->J2(Le/a/a/g/f;)V

    .line 8
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
