.class public final Le/a/a/c/c/r$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/r;->K2(J)V
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
    c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$onScheduleMessageDateSet$1"
    f = "DraftPresenterImpl.kt"
    l = {
        0x116
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/c/r;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/a/c/c/r;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    iput-wide p2, p0, Le/a/a/c/c/r$e;->g:J

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

    new-instance p1, Le/a/a/c/c/r$e;

    iget-object v0, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    iget-wide v1, p0, Le/a/a/c/c/r$e;->g:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/c/r$e;-><init>(Le/a/a/c/c/r;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/c/r$e;

    iget-object v0, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    iget-wide v1, p0, Le/a/a/c/c/r$e;->g:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/c/r$e;-><init>(Le/a/a/c/c/r;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/c/r$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/c/r$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 5
    iget-object p1, p1, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 7
    iget v2, p1, Le/a/a/c/c/r;->i:I

    .line 8
    iget-object p1, p1, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v2, p1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 11
    iget-object v2, p1, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 12
    iget p1, p1, Le/a/a/c/c/r;->i:I

    .line 13
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/c/g;

    iget-object v2, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 14
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/c/q;

    if-eqz v2, :cond_3

    .line 15
    invoke-interface {v2}, Le/a/a/c/c/q;->m1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, ""

    :goto_1
    invoke-virtual {p1, v2}, Le/a/a/c/c/g;->a(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 17
    iget-object v2, p1, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 18
    iget p1, p1, Le/a/a/c/c/r;->i:I

    .line 19
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/c/g;

    iget-object v2, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    .line 20
    iget-object v2, v2, Le/a/a/c/c/r;->z:Le/a/a/c/o8/g;

    .line 21
    invoke-interface {v2}, Le/a/a/c/o8/g;->Ti()[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/a/a/c/c/g;->b([Lcom/truecaller/messaging/data/types/Mention;)V

    .line 22
    iget-object p1, p0, Le/a/a/c/c/r$e;->f:Le/a/a/c/c/r;

    iget-wide v4, p0, Le/a/a/c/c/r$e;->g:J

    iput v3, p0, Le/a/a/c/c/r$e;->e:I

    invoke-virtual {p1, v4, v5, p0}, Le/a/a/c/c/r;->Rj(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object v0
.end method
