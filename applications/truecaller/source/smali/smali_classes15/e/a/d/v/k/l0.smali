.class public final Le/a/d/v/k/l0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Long;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.LogStateChangedEventImpl$log$3"
    f = "LogStateChangedEvent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/v/k/m0;


# direct methods
.method public constructor <init>(Le/a/d/v/k/m0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/l0;->e:Le/a/d/v/k/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/v/k/l0;

    iget-object v0, p0, Le/a/d/v/k/l0;->e:Le/a/d/v/k/m0;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/l0;-><init>(Le/a/d/v/k/m0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/v/k/l0;->e:Le/a/d/v/k/m0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/v/k/l0;->e:Le/a/d/v/k/m0;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Le/a/d/v/k/m0;->a(Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
