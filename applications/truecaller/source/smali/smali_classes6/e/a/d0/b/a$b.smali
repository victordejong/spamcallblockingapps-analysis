.class public final Le/a/d0/b/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/a;->a(Le/a/d0/b/i$c;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d0/b/i$c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.callstate.CallProcessorImpl$handleOutgoingCall$2"
    f = "CallProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d0/b/a;

.field public final synthetic f:Le/a/d0/b/i$c;


# direct methods
.method public constructor <init>(Le/a/d0/b/a;Le/a/d0/b/i$c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    iput-object p2, p0, Le/a/d0/b/a$b;->f:Le/a/d0/b/i$c;

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

    new-instance p1, Le/a/d0/b/a$b;

    iget-object v0, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$b;->f:Le/a/d0/b/i$c;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/b/a$b;-><init>(Le/a/d0/b/a;Le/a/d0/b/i$c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/b/a$b;

    iget-object v0, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$b;->f:Le/a/d0/b/i$c;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/b/a$b;-><init>(Le/a/d0/b/a;Le/a/d0/b/i$c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/b/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d0/b/a$b;->f:Le/a/d0/b/i$c;

    .line 3
    iget-object p1, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    invoke-static {v1, p1}, Le/a/d0/b/a;->d(Le/a/d0/b/a;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 6
    iget-object v1, v1, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 7
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_ISSYSTEMAWAREVOIPCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v3, Le/a/d0/b/a$b$a;

    invoke-direct {v3, p0, p1}, Le/a/d0/b/a$b$a;-><init>(Le/a/d0/b/a$b;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 8
    :cond_1
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 9
    iget-object v2, v1, Le/a/d0/b/a;->l:Le/a/b0/q/z;

    invoke-interface {v2, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v1, v1, Le/a/d0/b/a;->p:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    invoke-interface {v1, v2}, Le/a/l0/c;->B(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 12
    iget-object v1, v1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 15
    invoke-virtual {v1, p1}, Le/a/d0/b/a;->e(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 17
    iget-object v2, v1, Le/a/d0/b/a;->h:Le/a/b0/q/l0;

    .line 18
    iget-object v1, v1, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    const-wide/16 v3, 0x0

    const-string v5, "featureOutgoingSearch"

    .line 19
    invoke-interface {v1, v5, v3, v4}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    .line 20
    invoke-virtual {v2, v3, v4, v5, v6}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v1

    .line 21
    invoke-static {p1}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 22
    new-instance v0, Le/a/d0/b/i$c;

    iget-object v1, p0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 23
    iget-object v1, v1, Le/a/d0/b/a;->n:Le/a/p5/c;

    .line 24
    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Le/a/d0/b/i$c;-><init>(Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-object v0
.end method
