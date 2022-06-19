.class public final Le/a/d3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d3/d;


# instance fields
.field public final a:Le/a/d3/j;

.field public final b:Le/a/d3/b;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/d3/j;Le/a/d3/b;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d3/j;",
            "Le/a/d3/b;",
            "Lo3/a<",
            "Le/a/k/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardIOUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d3/f;->a:Le/a/d3/j;

    iput-object p2, p0, Le/a/d3/f;->b:Le/a/d3/b;

    iput-object p3, p0, Le/a/d3/f;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;

    invoke-static {v1, p1}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;->access$200(Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;

    invoke-static {p1}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;->access$400(Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Le/a/d3/f;->a:Le/a/d3/j;

    sget-object v1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-interface {v0, v1}, Le/a/f4/b/h/g;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/a/a/b$a;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Le/a/t2/a/a/a/b$a;->f(Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;)Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;->getBusinessCard()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Le/a/d3/f;->b:Le/a/d3/b;

    invoke-interface {v0, p1}, Le/a/d3/b;->b(Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Le/a/d3/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d3/e;-><init>(Le/a/d3/f;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Le/a/d3/f;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
