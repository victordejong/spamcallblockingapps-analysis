.class public final Le/a/k/c/n1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/n1;->l(Ljava/util/List;Ljava/lang/String;JJLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$shareVideoUpdated$2"
    f = "VideoCallerIdStubManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/n1;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:J

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Le/a/k/c/n1;Ljava/lang/String;Ljava/util/List;JJLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/n1$b;->e:Le/a/k/c/n1;

    iput-object p2, p0, Le/a/k/c/n1$b;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/k/c/n1$b;->g:Ljava/util/List;

    iput-wide p4, p0, Le/a/k/c/n1$b;->h:J

    iput-wide p6, p0, Le/a/k/c/n1$b;->i:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ls1/w/d;

    invoke-virtual {p0, p1}, Le/a/k/c/n1$b;->l(Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/c/n1$b;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, v0}, Le/a/k/c/n1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 10
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

    new-instance v0, Le/a/k/c/n1$b;

    iget-object v2, p0, Le/a/k/c/n1$b;->e:Le/a/k/c/n1;

    iget-object v3, p0, Le/a/k/c/n1$b;->f:Ljava/lang/String;

    iget-object v4, p0, Le/a/k/c/n1$b;->g:Ljava/util/List;

    iget-wide v5, p0, Le/a/k/c/n1$b;->h:J

    iget-wide v7, p0, Le/a/k/c/n1$b;->i:J

    move-object v1, v0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Le/a/k/c/n1$b;-><init>(Le/a/k/c/n1;Ljava/lang/String;Ljava/util/List;JJLs1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/n1$b;->e:Le/a/k/c/n1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/j/a/b$a;

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->newBuilder()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;

    move-result-object v0

    .line 4
    iget-object v2, p0, Le/a/k/c/n1$b;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->access$100(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Le/a/k/c/n1$b;->g:Ljava/util/List;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->access$800(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Ljava/lang/Iterable;)V

    .line 10
    iget-wide v2, p0, Le/a/k/c/n1$b;->h:J

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v4, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v4, v2, v3}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->access$400(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;J)V

    .line 13
    iget-wide v2, p0, Le/a/k/c/n1$b;->i:J

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v4, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v4, v2, v3}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->access$1000(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;J)V

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    .line 18
    iget-object v2, p1, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 19
    sget-object v3, Le/a/t2/a/j/a/b;->b:Lp3/a/p0;

    if-nez v3, :cond_1

    .line 20
    const-class v4, Le/a/t2/a/j/a/b;

    monitor-enter v4

    .line 21
    :try_start_0
    sget-object v3, Le/a/t2/a/j/a/b;->b:Lp3/a/p0;

    if-nez v3, :cond_0

    .line 22
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v3

    sget-object v5, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 23
    iput-object v5, v3, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v5, "truecaller.videocallerid.v1.VideoCallerId"

    const-string v6, "ShareVideo"

    .line 24
    invoke-static {v5, v6}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    iput-object v5, v3, Lp3/a/p0$b;->d:Ljava/lang/String;

    .line 26
    iput-boolean v1, v3, Lp3/a/p0$b;->e:Z

    .line 27
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    move-result-object v1

    .line 28
    sget-object v5, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 29
    new-instance v5, Lp3/a/p1/a/b$a;

    invoke-direct {v5, v1}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 30
    iput-object v5, v3, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 31
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Response;->getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Response;

    move-result-object v1

    .line 32
    new-instance v5, Lp3/a/p1/a/b$a;

    invoke-direct {v5, v1}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 33
    iput-object v5, v3, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 34
    invoke-virtual {v3}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/j/a/b;->b:Lp3/a/p0;

    move-object v3, v1

    .line 35
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 36
    :cond_1
    :goto_0
    iget-object p1, p1, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 37
    invoke-static {v2, v3, p1, v0}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Response;

    const-string v0, "stub.shareVideo(request)"

    .line 38
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
