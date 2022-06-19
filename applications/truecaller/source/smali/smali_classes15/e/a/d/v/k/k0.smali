.class public final Le/a/d/v/k/k0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/v/h;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.LogStateChangedEventImpl$log$1"
    f = "LogStateChangedEvent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/v/k/m0;


# direct methods
.method public constructor <init>(Le/a/d/v/k/m0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/k0;->f:Le/a/d/v/k/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/v/k/k0;

    iget-object v1, p0, Le/a/d/v/k/k0;->f:Le/a/d/v/k/m0;

    invoke-direct {v0, v1, p2}, Le/a/d/v/k/k0;-><init>(Le/a/d/v/k/m0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/k/k0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/v/k/k0;->f:Le/a/d/v/k/m0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/d/v/h;

    .line 4
    instance-of p1, p1, Le/a/d/v/h$c;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, v1, Le/a/d/v/k/m0;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    .line 6
    sget-object p2, Lcom/truecaller/voip/groupcall/call/CallDirection;->OUTGOING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne p1, p2, :cond_0

    .line 7
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v1, p1, p2}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/k/k0;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/v/h;

    .line 2
    instance-of p1, p1, Le/a/d/v/h$c;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/d/v/k/k0;->f:Le/a/d/v/k/m0;

    .line 4
    iget-object v0, p1, Le/a/d/v/k/m0;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    .line 5
    sget-object v1, Lcom/truecaller/voip/groupcall/call/CallDirection;->OUTGOING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
