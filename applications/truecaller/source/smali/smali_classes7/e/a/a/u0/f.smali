.class public final Le/a/a/u0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/h/g;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Lo3/a<",
            "Le/a/a/i1/b;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/i0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorageRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/u0/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/u0/f;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/u0/f;->c:Lo3/a;

    iput-object p4, p0, Le/a/a/u0/f;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/e0/k<",
            "Le/a/c/h/m/a;",
            ">;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/a/u0/f$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/a/u0/f$c;

    iget v1, v0, Le/a/a/u0/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/u0/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/u0/f$c;

    invoke-direct {v0, p0, p4}, Le/a/a/u0/f$c;-><init>(Le/a/a/u0/f;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/a/u0/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/u0/f$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/a/u0/f$c;->i:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ls1/z/b/a;

    iget-object p1, v0, Le/a/a/u0/f$c;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ls1/z/b/l;

    iget-object p1, v0, Le/a/a/u0/f$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/u0/f;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/a/u0/f;->b:Lo3/a;

    invoke-interface {p4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/a/g/w;

    iput-object p0, v0, Le/a/a/u0/f$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/a/u0/f$c;->h:Ljava/lang/Object;

    iput-object p3, v0, Le/a/a/u0/f$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/a/u0/f$c;->e:I

    invoke-interface {p4, p1, v0}, Le/a/a/g/w;->q(Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p4, Le/a/a/g/j0/q;

    if-eqz p4, :cond_4

    .line 6
    new-instance p3, Le/a/a/u0/f$b;

    invoke-direct {p3, p4, p1}, Le/a/a/u0/f$b;-><init>(Landroid/database/Cursor;Le/a/a/u0/f;)V

    invoke-static {p3}, Ls1/a/a/a/v0/f/d;->e1(Ls1/z/b/a;)Ls1/e0/k;

    move-result-object p1

    .line 7
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 8
    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 9
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(ZLjava/util/List;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p6

    xor-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    .line 2
    iget-object p6, p0, Le/a/a/u0/f;->a:Lo3/a;

    invoke-interface {p6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Le/a/r2/f;

    invoke-interface {p6}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Le/a/a/g/m;

    invoke-static {p2}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-interface {p6, v0, p1}, Le/a/a/g/m;->n([JZ)Le/a/r2/x;

    move-result-object p6

    new-instance v7, Le/a/a/u0/f$e;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Le/a/a/u0/f$e;-><init>(Le/a/a/u0/f;Ls1/z/b/l;ZLjava/util/List;Ljava/util/List;Ls1/z/b/a;)V

    invoke-virtual {p6, v7}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(JLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/c/h/m/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/u0/f$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/u0/f$d;

    iget v1, v0, Le/a/a/u0/f$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/u0/f$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/u0/f$d;

    invoke-direct {v0, p0, p3}, Le/a/a/u0/f$d;-><init>(Le/a/a/u0/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/u0/f$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/u0/f$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/a/u0/f;->b:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/w;

    iput v3, v0, Le/a/a/u0/f$d;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/a/g/w;->D(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x0

    if-eqz p3, :cond_4

    .line 5
    invoke-static {p3, p1}, Le/a/c/p/a;->c3(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)Le/a/c/h/m/c;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/c/h/m/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/u0/f$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/u0/f$a;

    iget v1, v0, Le/a/a/u0/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/u0/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/u0/f$a;

    invoke-direct {v0, p0, p3}, Le/a/a/u0/f$a;-><init>(Le/a/a/u0/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/u0/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/u0/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/a/u0/f$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/u0/f;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/a/u0/f;->b:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/w;

    iput-object p0, v0, Le/a/a/u0/f$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/u0/f$a;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/a/g/w;->j(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/truecaller/messaging/data/types/Conversation;

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    iget-object p1, p1, Le/a/a/u0/f;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "messageUtil.get()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/a/i1/b;

    const-string v0, "$this$toConversationInfo"

    .line 5
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_4

    .line 7
    new-instance p2, Le/a/c/h/m/b;

    .line 8
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 9
    invoke-interface {p1, p3}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    .line 11
    iget-object p3, p3, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p3}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p3

    .line 12
    invoke-direct {p2, v1, p1, v0, p3}, Le/a/c/h/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-object p2
.end method
