.class public final Le/a/a/c/p4$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/p4;->q9(I)Z
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
    c = "com.truecaller.messaging.conversation.ConversationMenuPresenterImpl$onMenuItemSelected$1$1"
    f = "ConversationMenuPresenter.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:J

.field public final synthetic g:Le/a/a/c/p4;

.field public final synthetic h:Le/a/a/c/r4;


# direct methods
.method public constructor <init>(JLs1/w/d;Le/a/a/c/p4;Le/a/a/c/r4;)V
    .locals 0

    iput-wide p1, p0, Le/a/a/c/p4$b;->f:J

    iput-object p4, p0, Le/a/a/c/p4$b;->g:Le/a/a/c/p4;

    iput-object p5, p0, Le/a/a/c/p4$b;->h:Le/a/a/c/r4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/p4$b;

    iget-wide v1, p0, Le/a/a/c/p4$b;->f:J

    iget-object v4, p0, Le/a/a/c/p4$b;->g:Le/a/a/c/p4;

    iget-object v5, p0, Le/a/a/c/p4$b;->h:Le/a/a/c/r4;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/p4$b;-><init>(JLs1/w/d;Le/a/a/c/p4;Le/a/a/c/r4;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p2

    check-cast v3, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/p4$b;

    iget-wide v1, p0, Le/a/a/c/p4$b;->f:J

    iget-object v4, p0, Le/a/a/c/p4$b;->g:Le/a/a/c/p4;

    iget-object v5, p0, Le/a/a/c/p4$b;->h:Le/a/a/c/r4;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/c/p4$b;-><init>(JLs1/w/d;Le/a/a/c/p4;Le/a/a/c/r4;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/p4$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/p4$b;->e:I

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
    iget-object p1, p0, Le/a/a/c/p4$b;->g:Le/a/a/c/p4;

    .line 5
    iget-object p1, p1, Le/a/a/c/p4;->l:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-wide v3, p0, Le/a/a/c/p4$b;->f:J

    .line 7
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 8
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Le/a/a/c/p4$b;->e:I

    invoke-interface {p1, v1, p0}, Le/a/a/g/w;->B(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Le/a/a/c/p4$b;->h:Le/a/a/c/r4;

    iget-object v1, p0, Le/a/a/c/p4$b;->g:Le/a/a/c/p4;

    .line 10
    iget-object v2, v1, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v2}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    .line 11
    iget-boolean v3, v1, Le/a/a/c/p4;->B:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const v4, 0x7f120242

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v1}, Le/a/a/c/p4;->Kj()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    aget-object v1, v2, v4

    iget v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    :cond_4
    const v4, 0x7f120241

    .line 13
    :cond_5
    :goto_1
    invoke-interface {v0, p1, v4}, Le/a/a/c/r4;->ns(ZI)V

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
