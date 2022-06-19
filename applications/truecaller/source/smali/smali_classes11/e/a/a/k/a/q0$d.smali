.class public final Le/a/a/k/a/q0$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0;->d(Lcom/truecaller/data/entity/messaging/Participant;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)Le/a/a/k/a/y1;
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
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$startContinuousTyping$job$1"
    f = "ImTypingManager.kt"
    l = {
        0x7c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:I

.field public final synthetic g:Le/a/a/k/a/q0;

.field public final synthetic h:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    iput-object p2, p0, Le/a/a/k/a/q0$d;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iput-boolean p3, p0, Le/a/a/k/a/q0$d;->i:Z

    iput-object p4, p0, Le/a/a/k/a/q0$d;->j:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/a/k/a/q0$d;

    iget-object v1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    iget-object v2, p0, Le/a/a/k/a/q0$d;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iget-boolean v3, p0, Le/a/a/k/a/q0$d;->i:Z

    iget-object v4, p0, Le/a/a/k/a/q0$d;->j:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/k/a/q0$d;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/k/a/q0$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/q0$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/q0$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/k/a/q0$d;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v3, p0, Le/a/a/k/a/q0$d;->e:J

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
    iget-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    .line 5
    iget-object p1, p1, Le/a/a/k/a/q0;->j:Le/a/p5/c;

    .line 6
    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v3

    iget-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    .line 7
    iget-wide v5, p1, Le/a/a/k/a/q0;->e:J

    add-long/2addr v3, v5

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    .line 9
    iget-object p1, p1, Le/a/a/k/a/q0;->j:Le/a/p5/c;

    .line 10
    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    iget-object v1, p0, Le/a/a/k/a/q0$d;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iget-boolean v5, p0, Le/a/a/k/a/q0$d;->i:Z

    iget-object v6, p0, Le/a/a/k/a/q0$d;->j:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    invoke-static {p1, v1, v5, v6}, Le/a/a/k/a/q0;->i(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)V

    .line 12
    iget-object p1, p0, Le/a/a/k/a/q0$d;->g:Le/a/a/k/a/q0;

    .line 13
    iget-wide v5, p1, Le/a/a/k/a/q0;->f:J

    .line 14
    iget-wide v7, p1, Le/a/a/k/a/q0;->d:J

    .line 15
    iget-wide v9, p1, Le/a/a/k/a/q0;->g:J

    sub-long/2addr v7, v9

    .line 16
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v3, p0, Le/a/a/k/a/q0$d;->e:J

    iput v2, p0, Le/a/a/k/a/q0$d;->f:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 17
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
