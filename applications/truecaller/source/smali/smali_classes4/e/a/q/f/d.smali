.class public final Le/a/q/f/d;
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
    c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$removeComment$2"
    f = "CommentFeedbackGrpcManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q/f/g;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/q/f/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q/f/d;->e:Le/a/q/f/g;

    iput-object p2, p0, Le/a/q/f/d;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/q/f/d;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/q/f/d;

    iget-object v0, p0, Le/a/q/f/d;->e:Le/a/q/f/g;

    iget-object v1, p0, Le/a/q/f/d;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/q/f/d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/q/f/d;-><init>(Le/a/q/f/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/q/f/d;->e:Le/a/q/f/g;

    iget-object v0, p0, Le/a/q/f/d;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/q/f/d;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object p2, Le/a/q/f/g;->c:Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->newBuilder()Lcom/truecaller/api/services/comments/model/RemoveVote$Request$a;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->access$400(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v1, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->access$100(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    .line 14
    iget-object p1, p1, Le/a/q/f/g;->b:Le/a/q/f/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/c/b$a;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Le/a/t2/a/c/b$a;->e(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;)Lcom/truecaller/api/services/comments/model/RemoveVote$Response;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CommentFeedback, remove comment success: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v1

    .line 17
    :catch_0
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/q/f/d;->e:Le/a/q/f/g;

    iget-object v0, p0, Le/a/q/f/d;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/q/f/d;->g:Ljava/lang/String;

    .line 2
    sget-object v2, Le/a/q/f/g;->c:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->newBuilder()Lcom/truecaller/api/services/comments/model/RemoveVote$Request$a;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    invoke-static {v4, v1}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->access$400(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v1, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;->access$100(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/truecaller/api/services/comments/model/RemoveVote$Request;

    .line 11
    iget-object p1, p1, Le/a/q/f/g;->b:Le/a/q/f/h;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/c/b$a;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Le/a/t2/a/c/b$a;->e(Lcom/truecaller/api/services/comments/model/RemoveVote$Request;)Lcom/truecaller/api/services/comments/model/RemoveVote$Response;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CommentFeedback, remove comment success: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 14
    :catch_0
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
