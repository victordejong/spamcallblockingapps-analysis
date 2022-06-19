.class public final Le/a/d0/b/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/a;->b(Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d0/b/i;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.callstate.CallProcessorImpl$handlePhoneStateChanged$2"
    f = "CallProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d0/b/a;

.field public final synthetic f:Le/a/d0/b/i;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/d0/b/a;Le/a/d0/b/i;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iput-object p2, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    iput-object p3, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

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

    new-instance p1, Le/a/d0/b/a$a;

    iget-object v0, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    iget-object v2, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/b/a$a;-><init>(Le/a/d0/b/a;Le/a/d0/b/i;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/b/a$a;

    iget-object v0, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    iget-object v2, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/b/a$a;-><init>(Le/a/d0/b/a;Le/a/d0/b/i;Landroid/content/Context;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/b/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receiver received call state change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 4
    iget-object p1, p1, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 5
    sget-object v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_STATECHGDEDUPLICATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v1, Le/a/d0/b/a$a$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Le/a/d0/b/a$a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 7
    iget-object p1, p1, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 8
    sget-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_ISSYSTEMAWAREVOIPCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v3, Le/a/d0/b/a$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Le/a/d0/b/a$a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 10
    iget-object p1, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 12
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 13
    iget-object v3, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 14
    instance-of v3, v1, Le/a/d0/b/i$b;

    if-eqz v3, :cond_4

    .line 15
    iget-object p1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16
    iput-object p1, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_4
    instance-of v3, v1, Le/a/d0/b/i$a;

    if-eqz v3, :cond_8

    .line 18
    iget-object p1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 19
    iput-object p1, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    invoke-static {v1, p1}, Le/a/d0/b/a;->d(Le/a/d0/b/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 21
    iget-boolean p1, p1, Le/a/d0/b/a;->c:Z

    if-nez p1, :cond_6

    return-object v0

    .line 22
    :cond_6
    iget-object p1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 23
    instance-of v1, p1, Le/a/d0/b/i$d;

    if-eqz v1, :cond_7

    .line 24
    iget-object p1, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/b0/g/a;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 28
    iget-object p1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 29
    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 30
    iget-object v1, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 32
    :cond_7
    instance-of p1, p1, Le/a/d0/b/i$a;

    if-eqz p1, :cond_8

    .line 33
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 34
    iget-object p1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 35
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 36
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 37
    iget-object p1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 38
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 39
    :cond_8
    :goto_2
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    instance-of v3, v1, Le/a/d0/b/i$d;

    if-eqz v3, :cond_9

    .line 42
    iget-object v1, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {p1, v1}, Le/a/d0/b/a;->e(Ljava/lang/String;)V

    .line 44
    :cond_9
    iget-object p1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 45
    instance-of v1, p1, Le/a/d0/b/i$d;

    const-string v3, "truecaller.call_in_progress"

    if-eqz v1, :cond_f

    .line 46
    iget-object v1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v5, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

    .line 47
    iget-object p1, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 48
    iget-object v6, v1, Le/a/d0/b/a;->k:Le/a/b0/e/l;

    invoke-interface {v6}, Le/a/b0/e/l;->d()Z

    move-result v6

    if-nez v6, :cond_a

    move-object v11, v0

    goto :goto_3

    .line 49
    :cond_a
    iget-object v6, v1, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v7, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_GETFILTER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v8, Le/a/d0/b/e;

    invoke-direct {v8, v1, v5, p1}, Le/a/d0/b/e;-><init>(Le/a/d0/b/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    move-object v11, p1

    .line 50
    :goto_3
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 51
    iget-object p1, p1, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    .line 52
    invoke-interface {p1, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_b

    .line 54
    iget-object p1, v11, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 55
    sget-object v1, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p1, v1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    if-eqz p1, :cond_e

    .line 56
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 57
    iget-object v0, p1, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object v0

    sget-object v1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    if-ne v0, v1, :cond_c

    move v4, v2

    :cond_c
    if-eqz v4, :cond_d

    .line 58
    iget-object p1, p1, Le/a/d0/b/a;->o:Le/a/p5/a0;

    const-string v0, "android.permission.CALL_PHONE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_5

    :cond_d
    const/4 p1, 0x3

    .line 59
    :goto_5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    :cond_e
    move-object v10, v0

    .line 60
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    invoke-static {p1, v2}, Le/a/d0/b/a;->c(Le/a/d0/b/a;I)I

    move-result p1

    .line 61
    new-instance v0, Le/a/d0/b/i$d;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 62
    iget-object v6, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 63
    iget-wide v7, v1, Le/a/d0/b/i;->b:J

    .line 64
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, v0

    .line 65
    invoke-direct/range {v5 .. v11}, Le/a/d0/b/i$d;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/blocking/FilterMatch;)V

    goto/16 :goto_8

    .line 66
    :cond_f
    instance-of v1, p1, Le/a/d0/b/i$b;

    if-eqz v1, :cond_13

    .line 67
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 68
    iget-object p1, p1, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    .line 69
    invoke-interface {p1, v3, v2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    iget-object p1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 71
    iget-object p1, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 72
    iget-object v0, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, v0, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move p1, v2

    goto :goto_7

    .line 75
    :cond_10
    iget-object v1, v0, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    iget-object v5, v0, Le/a/d0/b/a;->l:Le/a/b0/q/z;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 80
    :cond_11
    iget-object v0, v0, Le/a/d0/b/a;->l:Le/a/b0/q/z;

    invoke-interface {v0, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_7
    if-nez p1, :cond_12

    .line 82
    new-instance v0, Le/a/d0/b/i$c;

    iget-object p1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 83
    iget-object v1, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 84
    iget-wide v3, p1, Le/a/d0/b/i;->b:J

    .line 85
    invoke-direct {v0, v1, v3, v4}, Le/a/d0/b/i$c;-><init>(Ljava/lang/String;J)V

    goto :goto_8

    .line 86
    :cond_12
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Le/a/d0/b/a;->c(Le/a/d0/b/a;I)I

    move-result p1

    .line 87
    new-instance v0, Le/a/d0/b/i$b;

    iget-object v1, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 88
    iget-object v3, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 89
    iget-wide v4, v1, Le/a/d0/b/i;->b:J

    .line 90
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 91
    invoke-direct {v0, v3, v4, v5, v1}, Le/a/d0/b/i$b;-><init>(Ljava/lang/String;JLjava/lang/Integer;)V

    goto :goto_8

    .line 92
    :cond_13
    instance-of p1, p1, Le/a/d0/b/i$a;

    if-eqz p1, :cond_16

    .line 93
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 94
    iget-object p1, p1, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    .line 95
    invoke-interface {p1, v3, v4}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 97
    iget-object v0, p1, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object p1, p1, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Le/a/d0/b/i$d;

    if-eqz p1, :cond_14

    move v4, v2

    :cond_14
    if-eqz v4, :cond_15

    .line 98
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v0, p0, Le/a/d0/b/a$a;->g:Landroid/content/Context;

    .line 99
    iget-object v1, p1, Le/a/d0/b/a;->k:Le/a/b0/e/l;

    invoke-interface {v1}, Le/a/b0/e/l;->d()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object p1, p1, Le/a/d0/b/a;->m:Le/a/o5/x1;

    invoke-interface {p1}, Le/a/o5/x1;->b()Z

    move-result p1

    if-nez p1, :cond_15

    .line 100
    sget-object p1, Lcom/truecaller/aftercall/PromotionType;->SIGN_UP:Lcom/truecaller/aftercall/PromotionType;

    invoke-static {v0, p1}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->va(Landroid/content/Context;Lcom/truecaller/aftercall/PromotionType;)Z

    .line 101
    :cond_15
    iget-object v0, p0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    :cond_16
    :goto_8
    if-eqz v0, :cond_17

    .line 102
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 103
    iget-object p1, p1, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string p1, "Current state: \n"

    .line 105
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 106
    iget-object v1, v1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 108
    iget-object v3, v3, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    iget-object p1, p0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_18

    goto :goto_9

    .line 112
    :cond_18
    instance-of v3, v0, Le/a/d0/b/i$a;

    if-nez v3, :cond_19

    goto :goto_9

    .line 113
    :cond_19
    iget-object v3, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 114
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v2, :cond_1a

    goto :goto_9

    .line 115
    :cond_1a
    iget-object v2, p1, Le/a/d0/b/a;->s:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_9

    .line 116
    :cond_1b
    :try_start_0
    iget-object v2, p1, Le/a/d0/b/a;->d:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing state: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    iget-object v1, p1, Le/a/d0/b/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 119
    iget-object p1, p1, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing state has failed with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1c
    :goto_9
    return-object v0
.end method
