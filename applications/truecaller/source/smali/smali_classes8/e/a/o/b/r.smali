.class public final Le/a/o/b/r;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.utils.ContextCallStubManagerImpl$sendCallReason$2"
    f = "ContextCallStubManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/o/b/s;

.field public final synthetic f:Lcom/truecaller/data/entity/CallContextMessage;


# direct methods
.method public constructor <init>(Le/a/o/b/s;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/r;->e:Le/a/o/b/s;

    iput-object p2, p0, Le/a/o/b/r;->f:Lcom/truecaller/data/entity/CallContextMessage;

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

    new-instance p1, Le/a/o/b/r;

    iget-object v0, p0, Le/a/o/b/r;->e:Le/a/o/b/s;

    iget-object v1, p0, Le/a/o/b/r;->f:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/r;-><init>(Le/a/o/b/s;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/o/b/r;->e:Le/a/o/b/s;

    iget-object v0, p0, Le/a/o/b/r;->f:Lcom/truecaller/data/entity/CallContextMessage;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/b$a;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request$a;

    move-result-object v2

    .line 7
    invoke-static {v0}, Le/a/m0/a1$k;->f(Lcom/truecaller/data/entity/CallContextMessage;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->access$400(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V

    .line 10
    iget-object v0, v0, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Le/a/m0/a1$k;->h(Ljava/lang/String;)Lcom/truecaller/api/services/callerid/v1/model/Phone;

    move-result-object v0

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    invoke-static {v3, v0}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->access$100(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;Lcom/truecaller/api/services/callerid/v1/model/Phone;)V

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    .line 16
    invoke-virtual {p1, v0}, Le/a/t2/a/a/a/b$a;->e(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;)Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;

    move p2, v1

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 18
    :catch_0
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/o/b/r;->e:Le/a/o/b/s;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/a/a/b$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request$a;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/o/b/r;->f:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-static {v3}, Le/a/m0/a1$k;->f(Lcom/truecaller/data/entity/CallContextMessage;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->access$400(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V

    .line 7
    iget-object v3, p0, Le/a/o/b/r;->f:Lcom/truecaller/data/entity/CallContextMessage;

    .line 8
    iget-object v3, v3, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Le/a/m0/a1$k;->h(Ljava/lang/String;)Lcom/truecaller/api/services/callerid/v1/model/Phone;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->access$100(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;Lcom/truecaller/api/services/callerid/v1/model/Phone;)V

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 13
    check-cast v2, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    .line 14
    invoke-virtual {v1, v2}, Le/a/t2/a/a/a/b$a;->e(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;)Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;

    move p1, v0

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 16
    :catch_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
