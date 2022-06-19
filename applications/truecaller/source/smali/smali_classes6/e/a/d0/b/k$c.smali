.class public final Le/a/d0/b/k$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/k;->a(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.truecaller.callerid.callstate.PhoneStateHandlerImpl$onPhoneStateChanged$3"
    f = "PhoneStateHandler.kt"
    l = {
        0x78,
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d0/b/k;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Le/a/d0/b/i;


# direct methods
.method public constructor <init>(Le/a/d0/b/k;Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    iput-object p2, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    iput-object p3, p0, Le/a/d0/b/k$c;->i:Le/a/d0/b/i;

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

    new-instance p1, Le/a/d0/b/k$c;

    iget-object v0, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    iget-object v1, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    iget-object v2, p0, Le/a/d0/b/k$c;->i:Le/a/d0/b/i;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/b/k$c;-><init>(Le/a/d0/b/k;Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/b/k$c;

    iget-object v0, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    iget-object v1, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    iget-object v2, p0, Le/a/d0/b/k$c;->i:Le/a/d0/b/i;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/b/k$c;-><init>(Le/a/d0/b/k;Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/b/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d0/b/k$c;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object v2, p0, Le/a/d0/b/k$c;->e:Ljava/lang/Object;

    check-cast v2, Le/a/p5/l0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    .line 5
    iget-object p1, p1, Le/a/d0/b/k;->g:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 6
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->PHONESTATEHANDLER_CPROC_STCHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {p1, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v2

    .line 7
    iget-object p1, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    .line 8
    iget-object p1, p1, Le/a/d0/b/k;->a:Le/a/d0/b/d;

    .line 9
    iget-object v5, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    iget-object v6, p0, Le/a/d0/b/k$c;->i:Le/a/d0/b/i;

    iput-object v2, p0, Le/a/d0/b/k$c;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d0/b/k$c;->f:I

    invoke-interface {p1, v5, v6, p0}, Le/a/d0/b/d;->b(Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Le/a/d0/b/i;

    .line 11
    iget-object v4, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    .line 12
    iget-object v4, v4, Le/a/d0/b/k;->g:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 13
    invoke-interface {v4, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    .line 14
    iget-object v2, p0, Le/a/d0/b/k$c;->g:Le/a/d0/b/k;

    .line 15
    iget-object v2, v2, Le/a/d0/b/k;->b:Le/a/d0/b/b;

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    .line 16
    iput-object v4, p0, Le/a/d0/b/k$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d0/b/k$c;->f:I

    invoke-interface {v2, p1, p0}, Le/a/d0/b/b;->a(Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 17
    :cond_4
    :goto_1
    check-cast p1, Le/a/d0/b/i;

    .line 18
    iget-object v1, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    invoke-virtual {p1}, Le/a/d0/b/i;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/truecaller/callerid/CallerIdService;->m(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 19
    sget-boolean p1, Lcom/truecaller/callerid/callstate/CallStateService;->e:Z

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Le/a/d0/b/k$c;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/callerid/callstate/CallStateService;->b(Landroid/content/Context;)V

    :cond_5
    return-object v0
.end method
