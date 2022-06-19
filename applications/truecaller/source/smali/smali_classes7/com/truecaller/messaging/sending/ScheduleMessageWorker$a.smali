.class public final Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->doWork()Landroidx/work/ListenableWorker$a;
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
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.sending.ScheduleMessageWorker$doWork$1"
    f = "ScheduleMessageWorker.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

.field public final synthetic g:Ls1/z/c/b0;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/sending/ScheduleMessageWorker;Ls1/z/c/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->f:Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    iput-object p2, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->g:Ls1/z/c/b0;

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

    new-instance p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;

    iget-object v0, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->f:Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    iget-object v1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->g:Ls1/z/c/b0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;-><init>(Lcom/truecaller/messaging/sending/ScheduleMessageWorker;Ls1/z/c/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;

    iget-object v0, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->f:Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    iget-object v1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->g:Ls1/z/c/b0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;-><init>(Lcom/truecaller/messaging/sending/ScheduleMessageWorker;Ls1/z/c/b0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->e:I

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
    iget-object p1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->f:Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->b:Lo3/a;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/g/w;

    iget-object p1, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->g:Ls1/z/c/b0;

    iget-wide v4, p1, Ls1/z/c/b0;->a:J

    .line 7
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 8
    iput v2, p0, Lcom/truecaller/messaging/sending/ScheduleMessageWorker$a;->e:I

    move-object v4, p1

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Le/a/c/p/a;->q2(Le/a/a/g/w;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    const-string p1, "readMessageStorage"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
