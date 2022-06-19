.class public final Le/a/k/c/l1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/k/c/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$fetchVideoDetails$2"
    f = "VideoCallerIdStubManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/n1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/c/n1;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/l1;->e:Le/a/k/c/n1;

    iput-object p2, p0, Le/a/k/c/l1;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/l1;

    iget-object v1, p0, Le/a/k/c/l1;->e:Le/a/k/c/n1;

    iget-object v2, p0, Le/a/k/c/l1;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/c/l1;-><init>(Le/a/k/c/n1;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/l1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/l1;

    iget-object v1, p0, Le/a/k/c/l1;->e:Le/a/k/c/n1;

    iget-object v2, p0, Le/a/k/c/l1;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/c/l1;-><init>(Le/a/k/c/n1;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/l1;->e:Le/a/k/c/n1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/j/a/b$a;

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;->newBuilder()Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request$a;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/k/c/l1;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;->access$100(Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;

    .line 9
    iget-object v3, p1, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 10
    sget-object v4, Le/a/t2/a/j/a/b;->c:Lp3/a/p0;

    if-nez v4, :cond_1

    .line 11
    const-class v5, Le/a/t2/a/j/a/b;

    monitor-enter v5

    .line 12
    :try_start_0
    sget-object v4, Le/a/t2/a/j/a/b;->c:Lp3/a/p0;

    if-nez v4, :cond_0

    .line 13
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v4

    sget-object v6, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 14
    iput-object v6, v4, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v6, "truecaller.videocallerid.v1.VideoCallerId"

    const-string v7, "FetchVideo"

    .line 15
    invoke-static {v6, v7}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    iput-object v6, v4, Lp3/a/p0$b;->d:Ljava/lang/String;

    .line 17
    iput-boolean v1, v4, Lp3/a/p0$b;->e:Z

    .line 18
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;->getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Request;

    move-result-object v1

    .line 19
    sget-object v6, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 20
    new-instance v6, Lp3/a/p1/a/b$a;

    invoke-direct {v6, v1}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 21
    iput-object v6, v4, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 22
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;

    move-result-object v1

    .line 23
    new-instance v6, Lp3/a/p1/a/b$a;

    invoke-direct {v6, v1}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 24
    iput-object v6, v4, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 25
    invoke-virtual {v4}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/j/a/b;->c:Lp3/a/p0;

    move-object v4, v1

    .line 26
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 27
    :cond_1
    :goto_0
    iget-object p1, p1, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 28
    invoke-static {v3, v4, p1, v2}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 30
    :cond_2
    new-instance v0, Le/a/k/c/v;

    .line 31
    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v2, Lcom/truecaller/videocallerid/data/VideoDetails;

    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v3, "url"

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getSizeBytes()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getMirrorPlayback()Z

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    .line 33
    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/FetchVideo$Response;->getPhoneNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-direct {v0, v1, p1, v2}, Le/a/k/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;)V

    :cond_3
    return-object v0
.end method
