.class public final Le/a/b/i/i/b;
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
        "Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.callMeBack.data.EnterpriseFeedbackRepositoryImpl$captureCallMeBackRequest$2"
    f = "EnterpriseFeedbackRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/i/i/d;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b/i/i/d;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/i/i/b;->f:Le/a/b/i/i/d;

    iput-object p2, p0, Le/a/b/i/i/b;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/i/i/b;

    iget-object v1, p0, Le/a/b/i/i/b;->f:Le/a/b/i/i/d;

    iget-object v2, p0, Le/a/b/i/i/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/b/i/i/b;-><init>(Le/a/b/i/i/d;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/i/i/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/i/i/b;->f:Le/a/b/i/i/d;

    iget-object v1, p0, Le/a/b/i/i/b;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lq3/a/i0;

    .line 5
    invoke-static {}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;->newBuilder()Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;

    invoke-static {p2, v1}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;->access$100(Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string p2, "CallbackLogRequest\n     \u2026ber)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p1, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;

    const/4 p2, 0x0

    .line 10
    :try_start_0
    iget-object v0, v0, Le/a/b/i/i/d;->c:Le/a/b/i/i/e/a;

    const/4 v2, 0x1

    .line 11
    invoke-static {v0, p2, v2, p2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/b/a/b$a;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Le/a/t2/a/b/a/b$a;->c(Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;)Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response.title"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    const-string v3, "response.body"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/i/i/b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;->newBuilder()Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest$b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/b/i/i/b;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;->access$100(Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "CallbackLogRequest\n     \u2026ber)\n            .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Le/a/b/i/i/b;->f:Le/a/b/i/i/d;

    .line 9
    iget-object v1, v1, Le/a/b/i/i/d;->c:Le/a/b/i/i/e/a;

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v0, v2, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/b/a/b$a;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Le/a/t2/a/b/a/b$a;->c(Lcom/truecaller/api/services/callmeback/v1/CallbackLogRequest;)Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance v1, Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;

    iget-object v2, p0, Le/a/b/i/i/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response.title"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/callmeback/v1/CallbackLogResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    const-string v4, "response.body"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, p1}, Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method
