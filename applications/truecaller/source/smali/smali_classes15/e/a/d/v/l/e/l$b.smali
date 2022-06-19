.class public final Le/a/d/v/l/e/l$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/l;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/d/v/l/e/m$a;",
        ">;",
        "Le/a/d/x/r/i;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.call.action.HandleInviteImpl$inviteStatus$$inlined$flatMapLatest$1"
    f = "HandleInvite.kt"
    l = {
        0xdd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/l/e/l;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/v/l/e/l;)V
    .locals 0

    iput-object p2, p0, Le/a/d/v/l/e/l$b;->h:Le/a/d/v/l/e/l;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/v/l/e/l$b;

    iget-object v1, p0, Le/a/d/v/l/e/l$b;->h:Le/a/d/v/l/e/l;

    invoke-direct {v0, p3, v1}, Le/a/d/v/l/e/l$b;-><init>(Ls1/w/d;Le/a/d/v/l/e/l;)V

    iput-object p1, v0, Le/a/d/v/l/e/l$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/l/e/l$b;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/v/l/e/l$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/l/e/l$b;->g:I

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

    iget-object p1, p0, Le/a/d/v/l/e/l$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/v/l/e/l$b;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Le/a/d/x/r/i;

    .line 5
    iget-object v3, p0, Le/a/d/v/l/e/l$b;->h:Le/a/d/v/l/e/l;

    .line 6
    iget-object v4, v3, Le/a/d/v/l/e/l;->c:Le/a/d/c0/z1/i;

    invoke-interface {v4}, Le/a/d/c0/z1/i;->getCurrentTime()J

    move-result-wide v4

    .line 7
    iget-object v3, v3, Le/a/d/v/l/e/l;->g:Le/a/d/x/r/h;

    invoke-interface {v3}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v3

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 8
    invoke-static {v1, v4, v5, v3}, Le/a/p5/s0/g;->W(Le/a/d/x/r/i;JLjava/util/Set;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x3e8

    :goto_0
    move-wide v6, v3

    .line 10
    iget-object v1, v1, Le/a/d/x/r/i;->b:Ljava/lang/String;

    .line 11
    sget-object v3, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v3}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 12
    new-instance v1, Le/a/d/v/l/e/l$b$a;

    const/4 v9, 0x0

    move-object v5, v1

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Le/a/d/v/l/e/l$b$a;-><init>(JZLs1/w/d;Le/a/d/v/l/e/l$b;)V

    .line 13
    new-instance v3, Lq3/a/x2/d1;

    invoke-direct {v3, v1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 14
    iput v2, p0, Le/a/d/v/l/e/l$b;->g:I

    invoke-virtual {v3, p1, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
