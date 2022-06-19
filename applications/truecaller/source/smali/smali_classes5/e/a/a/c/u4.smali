.class public final Le/a/a/c/u4;
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$checkHasIncomingIm$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x3fe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/c/t4;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/a/c/t4;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    iput-wide p2, p0, Le/a/a/c/u4;->h:J

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

    new-instance p1, Le/a/a/c/u4;

    iget-object v0, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    iget-wide v1, p0, Le/a/a/c/u4;->h:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/u4;-><init>(Le/a/a/c/t4;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/u4;

    iget-object v0, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    iget-wide v1, p0, Le/a/a/c/u4;->h:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/u4;-><init>(Le/a/a/c/t4;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/u4;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/u4;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/c/u4;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/n5;

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
    iget-object p1, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    .line 5
    iget-object v1, p1, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 6
    iget-object p1, p1, Le/a/a/c/t4;->K:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-wide v3, p0, Le/a/a/c/u4;->h:J

    iput-object v1, p0, Le/a/a/c/u4;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/u4;->f:I

    invoke-interface {p1, v3, v4, p0}, Le/a/a/g/w;->z(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/a/c/m5;->x(Z)V

    .line 8
    iget-object p1, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    .line 9
    iget-object p1, p1, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 10
    invoke-interface {p1}, Le/a/a/c/m5;->A()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/a/c/u4;->g:Le/a/a/c/t4;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Le/a/a/c/z4;->A()V

    .line 14
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
