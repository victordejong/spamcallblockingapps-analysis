.class public final Le/a/a/k/a/j1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/j1;->a(Ljava/lang/ref/WeakReference;)V
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
    c = "com.truecaller.messaging.transport.im.ImVersionManagerImpl$getChangeLogInfo$1"
    f = "ImVersionManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/j1;

.field public final synthetic f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Le/a/a/k/a/j1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    iput-object p2, p0, Le/a/a/k/a/j1$a;->f:Ljava/lang/ref/WeakReference;

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

    new-instance p1, Le/a/a/k/a/j1$a;

    iget-object v0, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    iget-object v1, p0, Le/a/a/k/a/j1$a;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/j1$a;-><init>(Le/a/a/k/a/j1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/k/a/j1$a;

    iget-object v0, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    iget-object v1, p0, Le/a/a/k/a/j1$a;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/j1$a;-><init>(Le/a/a/k/a/j1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/j1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    .line 3
    iget-object p1, p1, Le/a/a/k/a/j1;->d:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/h/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/b$a;

    if-eqz p1, :cond_1

    .line 5
    iget-object v2, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    .line 6
    iget-object v2, v2, Le/a/a/k/a/j1;->b:Le/a/b0/e/r/a;

    const-string v3, "profileCountryIso"

    .line 7
    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-string v3, "accountSettings.getStrin\u2026ROFILE_COUNTRY_ISO) ?: \"\""

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request$a;

    move-result-object v3

    .line 9
    iget-object v4, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    invoke-virtual {v4}, Le/a/a/k/a/j1;->b()I

    move-result v4

    .line 10
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;I)V

    .line 12
    iget-object v4, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    invoke-virtual {v4}, Le/a/a/k/a/j1;->g()I

    move-result v4

    .line 13
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;I)V

    .line 15
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;->access$500(Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 18
    check-cast v2, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    .line 19
    invoke-virtual {p1, v2}, Le/a/t2/a/e/a/b$a;->f(Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;)Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    move-result-object p1

    .line 20
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/a/k/a/j1$a;->e:Le/a/a/k/a/j1;

    .line 21
    iget-object v3, v3, Le/a/a/k/a/j1;->f:Ls1/w/f;

    const/4 v4, 0x0

    .line 22
    new-instance v5, Le/a/a/k/a/j1$a$a;

    invoke-direct {v5, p0, p1, v1}, Le/a/a/k/a/j1$a$a;-><init>(Le/a/a/k/a/j1$a;Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;
    :try_end_0
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
