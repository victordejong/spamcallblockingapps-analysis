.class public final Le/a/q/f/c;
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
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$getComments$2"
    f = "CommentFeedbackGrpcManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q/f/g;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Lcom/truecaller/api/services/comments/model/SortBy;


# direct methods
.method public constructor <init>(Le/a/q/f/g;Ljava/lang/String;ILcom/truecaller/api/services/comments/model/SortBy;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q/f/c;->e:Le/a/q/f/g;

    iput-object p2, p0, Le/a/q/f/c;->f:Ljava/lang/String;

    iput p3, p0, Le/a/q/f/c;->g:I

    iput-object p4, p0, Le/a/q/f/c;->h:Lcom/truecaller/api/services/comments/model/SortBy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/q/f/c;

    iget-object v1, p0, Le/a/q/f/c;->e:Le/a/q/f/g;

    iget-object v2, p0, Le/a/q/f/c;->f:Ljava/lang/String;

    iget v3, p0, Le/a/q/f/c;->g:I

    iget-object v4, p0, Le/a/q/f/c;->h:Lcom/truecaller/api/services/comments/model/SortBy;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/q/f/c;-><init>(Le/a/q/f/g;Ljava/lang/String;ILcom/truecaller/api/services/comments/model/SortBy;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q/f/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q/f/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q/f/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q/f/c;->e:Le/a/q/f/g;

    iget-object v0, p0, Le/a/q/f/c;->f:Ljava/lang/String;

    iget v1, p0, Le/a/q/f/c;->g:I

    iget-object v2, p0, Le/a/q/f/c;->h:Lcom/truecaller/api/services/comments/model/SortBy;

    .line 3
    sget-object v3, Le/a/q/f/g;->c:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->newBuilder()Lcom/truecaller/api/services/comments/model/GetComments$Request$a;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v5, v1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->access$1000(Lcom/truecaller/api/services/comments/model/GetComments$Request;I)V

    .line 8
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v1, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->access$100(Lcom/truecaller/api/services/comments/model/GetComments$Request;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v0, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, v2}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->access$1500(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/truecaller/api/services/comments/model/SortBy;)V

    .line 12
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    .line 14
    iget-object p1, p1, Le/a/q/f/g;->b:Le/a/q/f/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/c/b$a;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Le/a/t2/a/c/b$a;->d(Lcom/truecaller/api/services/comments/model/GetComments$Request;)Lcom/truecaller/api/services/comments/model/GetComments$Response;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->getCommentsList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 16
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentFeedback GetComments, comments = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    :catch_0
    return-object v3
.end method
