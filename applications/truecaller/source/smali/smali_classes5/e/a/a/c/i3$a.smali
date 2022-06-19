.class public final Le/a/a/c/i3$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i3;->Cf(ZZLjava/util/List;Ljava/lang/String;)V
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
    c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$deleteMessages$1"
    f = "ConversationActionModePresenter.kt"
    l = {
        0x17c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/i3;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/i3;ZZLjava/util/List;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    iput-boolean p2, p0, Le/a/a/c/i3$a;->g:Z

    iput-boolean p3, p0, Le/a/a/c/i3$a;->h:Z

    iput-object p4, p0, Le/a/a/c/i3$a;->i:Ljava/util/List;

    iput-object p5, p0, Le/a/a/c/i3$a;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/a/c/i3$a;

    iget-object v1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    iget-boolean v2, p0, Le/a/a/c/i3$a;->g:Z

    iget-boolean v3, p0, Le/a/a/c/i3$a;->h:Z

    iget-object v4, p0, Le/a/a/c/i3$a;->i:Ljava/util/List;

    iget-object v5, p0, Le/a/a/c/i3$a;->j:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/a/c/i3$a;-><init>(Le/a/a/c/i3;ZZLjava/util/List;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/i3$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/c/i3$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/i3$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/i3$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/a/c/i3$a;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    iput v3, p0, Le/a/a/c/i3$a;->e:I

    invoke-virtual {p1, p0}, Le/a/a/c/i3;->Jj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-boolean p1, p0, Le/a/a/c/i3$a;->h:Z

    if-eqz p1, :cond_9

    .line 6
    iget-object p1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 7
    iget-object p1, p1, Le/a/a/c/i3;->p:Le/a/a/k/t;

    const/4 v1, 0x2

    .line 8
    invoke-interface {p1, v1}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.transport.im.ImTransport"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/a/k/a/m0;

    .line 9
    iget-object v1, p0, Le/a/a/c/i3$a;->i:Ljava/util/List;

    const-string v2, "messages"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Le/a/a/k/a/m0;->h:Le/a/p5/u;

    invoke-interface {v2}, Le/a/p5/u;->d()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 12
    :cond_4
    iget-object v2, p1, Le/a/a/k/a/m0;->b:Le/a/a/k/a/s1;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5}, Le/a/c/p/a;->a0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    .line 13
    :cond_5
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked$a;

    move-result-object v2

    const-string v6, "InputMessageSelection.Marked.newBuilder()"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/messaging/data/types/Message;

    .line 15
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v8, "message.getTransportInfo<ImTransportInfo>()"

    .line 16
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 17
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor$b;

    move-result-object v8

    .line 18
    iget-object v9, v7, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20
    iget-object v10, v8, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;

    invoke-static {v10, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;Ljava/lang/String;)V

    .line 21
    iget-object v7, v7, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->o:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 22
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 23
    iget-object v9, v8, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;

    invoke-static {v9, v7}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;->access$400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    .line 25
    check-cast v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;

    .line 26
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 27
    iget-object v8, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    invoke-static {v8, v7}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;->access$200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor;)V

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v6, "messages.first().participant"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/a/i1/h;->g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 29
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    .line 30
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v7, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->access$1000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V

    .line 32
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    const-string v6, "InputMessageSelection.ne\u2026nBuilder.build()).build()"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    .line 33
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request$a;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 35
    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;

    invoke-static {v7, v1}, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 36
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 37
    iget-object v1, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;

    invoke-static {v1, v2}, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;)V

    .line 38
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 39
    check-cast v1, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;

    .line 40
    :try_start_0
    iget-object p1, p1, Le/a/a/k/a/m0;->b:Le/a/a/k/a/s1;

    invoke-static {p1, v5, v3, v5}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/b$a;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Le/a/t2/a/e/a/b$a;->e(Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;)Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    goto :goto_3

    :catch_0
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_1
    :cond_8
    :goto_2
    move v3, v4

    :goto_3
    if-nez v3, :cond_9

    return-object v0

    .line 42
    :cond_9
    iget-object p1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 43
    iget-object p1, p1, Le/a/a/c/i3;->v:Lo3/a;

    .line 44
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    .line 45
    iget-boolean v1, p0, Le/a/a/c/i3$a;->g:Z

    iget-object v2, p0, Le/a/a/c/i3$a;->i:Ljava/util/List;

    invoke-interface {p1, v1, v2}, Le/a/a/g/m;->z(ZLjava/util/List;)Le/a/r2/x;

    move-result-object p1

    .line 46
    iget-object v1, p0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 47
    iget-object v1, v1, Le/a/a/c/i3;->h:Le/a/r2/j;

    .line 48
    new-instance v2, Le/a/a/c/i3$a$a;

    invoke-direct {v2, p0}, Le/a/a/c/i3$a$a;-><init>(Le/a/a/c/i3$a;)V

    invoke-virtual {p1, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-object v0
.end method
