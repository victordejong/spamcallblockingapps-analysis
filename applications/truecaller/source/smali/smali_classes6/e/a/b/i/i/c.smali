.class public final Le/a/b/i/i/c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/b/i/j/b/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.callMeBack.data.EnterpriseFeedbackRepositoryImpl$getCallMeBackStatusFromRemote$2"
    f = "EnterpriseFeedbackRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/i/i/d;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/i/i/c;->f:Le/a/b/i/i/d;

    iput-object p2, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/b/i/i/c;->h:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/b/i/i/c;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v0, Le/a/b/i/i/c;

    iget-object v2, p0, Le/a/b/i/i/c;->f:Le/a/b/i/i/d;

    iget-object v3, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/b/i/i/c;->h:Ljava/lang/String;

    iget-boolean v5, p0, Le/a/b/i/i/c;->i:Z

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/b/i/i/c;-><init>(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    iput-object p1, v0, Le/a/b/i/i/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/b/i/i/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/b/i/i/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/i/i/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/i/i/c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;->newBuilder()Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest$b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;->access$100(Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "NumberStatusRequest\n    \u2026\n                .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Le/a/b/i/i/c;->f:Le/a/b/i/i/d;

    .line 9
    iget-object v1, v1, Le/a/b/i/i/d;->b:Le/a/b/i/i/e/c;

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v0, v2, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/b/a/d$a;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Le/a/t2/a/b/a/d$a;->c(Lcom/truecaller/api/services/callmeback/v1/NumberStatusRequest;)Lcom/truecaller/api/services/callmeback/v1/NumberStatusResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusResponse;->getEnabled()Z

    .line 13
    new-instance v1, Le/a/b/i/j/b/a;

    iget-object v2, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusResponse;->getEnabled()Z

    move-result v3

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/NumberStatusResponse;->getButtonText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Le/a/b/i/j/b/a;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p0, Le/a/b/i/i/c;->f:Le/a/b/i/i/d;

    iget-object v1, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    sget-object v2, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->REASON_RESPONSE_NULL:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    invoke-virtual {v2}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/b/i/i/c;->h:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/b/i/i/c;->i:Z

    invoke-static {p1, v1, v2, v3, v4}, Le/a/b/i/i/d;->a(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    iget-object v1, p0, Le/a/b/i/i/c;->f:Le/a/b/i/i/d;

    iget-object v2, p0, Le/a/b/i/i/c;->g:Ljava/lang/String;

    const-string v3, "$this$toAnalyticsReason"

    .line 17
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v3, p1, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v4, "status"

    .line 19
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v3, v3, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 21
    iget-object v3, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 22
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v3, v3, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 25
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    iget-object v5, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 27
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v5, v5, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    iget-object v5, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 31
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v4, v5, Lp3/a/g1;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    :goto_0
    iget-object v4, p0, Le/a/b/i/i/c;->h:Ljava/lang/String;

    iget-boolean v5, p0, Le/a/b/i/i/c;->i:Z

    invoke-static {v1, v2, v3, v4, v5}, Le/a/b/i/i/d;->a(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
