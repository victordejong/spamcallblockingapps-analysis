.class public final Le/a/a/k/a/a/v$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/a/v;->e(Z)V
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
    c = "com.truecaller.messaging.transport.im.groups.ImReportHelperImpl$updateReadReportsSetting$1"
    f = "ImReportHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/a/v;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Le/a/a/k/a/a/v;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/a/v$a;->e:Le/a/a/k/a/a/v;

    iput-boolean p2, p0, Le/a/a/k/a/a/v$a;->f:Z

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

    new-instance p1, Le/a/a/k/a/a/v$a;

    iget-object v0, p0, Le/a/a/k/a/a/v$a;->e:Le/a/a/k/a/a/v;

    iget-boolean v1, p0, Le/a/a/k/a/a/v$a;->f:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/a/v$a;-><init>(Le/a/a/k/a/a/v;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/k/a/a/v$a;->e:Le/a/a/k/a/a/v;

    iget-boolean v1, p0, Le/a/a/k/a/a/v$a;->f:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->access$100(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;Z)V

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v2, p2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->access$2200(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    .line 12
    check-cast p2, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    .line 13
    iget-object v0, v0, Le/a/a/k/a/a/v;->g:Le/a/a/k/a/s1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Le/a/t2/a/e/a/b$a;->u(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a;

    move-result-object v0

    iget-boolean v1, p0, Le/a/a/k/a/a/v$a;->f:Z

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->access$100(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;Z)V

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->access$2200(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 10
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    iget-object v0, p0, Le/a/a/k/a/a/v$a;->e:Le/a/a/k/a/a/v;

    .line 11
    iget-object v0, v0, Le/a/a/k/a/a/v;->g:Le/a/a/k/a/s1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/t2/a/e/a/b$a;->u(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
