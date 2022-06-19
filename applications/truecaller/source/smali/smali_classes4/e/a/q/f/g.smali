.class public final Le/a/q/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/f/a;


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp3/a/g1$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/q/f/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lp3/a/g1$b;->f:Lp3/a/g1$b;

    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/q/f/g;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Le/a/q/f/h;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/f/g;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/q/f/g;->b:Le/a/q/f/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q/f/g;->b:Le/a/q/f/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/c/b$a;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/contactfeedback/db/CommentFeedback;

    .line 4
    :try_start_0
    invoke-static {v2}, Le/a/b0/q/g0;->U(Lcom/truecaller/contactfeedback/db/CommentFeedback;)Lcom/truecaller/api/services/comments/model/PostComment$Request;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Le/a/q/f/g;->b(Le/a/t2/a/c/b$a;Lcom/truecaller/api/services/comments/model/PostComment$Request;)Lcom/truecaller/api/services/comments/model/PostComment$Response;

    move-result-object v3

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post comment resp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    instance-of v4, v3, Lp3/a/i1;

    if-eqz v4, :cond_0

    check-cast v3, Lp3/a/i1;

    .line 8
    sget-object v4, Le/a/q/f/g;->c:Ljava/util/Set;

    .line 9
    iget-object v3, v3, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v5, "e.status"

    .line 10
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v3, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 12
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommentFeedback grpc StatusRuntimeException error for a single request. Feedback item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/a/t2/a/c/b$a;Lcom/truecaller/api/services/comments/model/PostComment$Request;)Lcom/truecaller/api/services/comments/model/PostComment$Response;
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/c/b;->b:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/c/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/c/b;->b:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.comments.api.Comments"

    const-string v4, "PostComment"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/PostComment$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/comments/model/PostComment$Response;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/PostComment$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/c/b;->b:Lp3/a/p0;

    .line 18
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p1, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, p1, p2}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/comments/model/PostComment$Response;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
