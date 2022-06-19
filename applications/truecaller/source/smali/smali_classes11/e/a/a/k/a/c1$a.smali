.class public final Le/a/a/k/a/c1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/c1;->f(Lcom/truecaller/data/entity/messaging/Participant;)V
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
    c = "com.truecaller.messaging.transport.im.ImUserInfoHelperImpl$maybeSaveUserInfoAsync$1"
    f = "ImUserInfoHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/c1;

.field public final synthetic f:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/k/a/c1;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/c1$a;->e:Le/a/a/k/a/c1;

    iput-object p2, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/a/k/a/c1$a;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/a/k/a/c1$a;

    iget-object v0, p0, Le/a/a/k/a/c1$a;->e:Le/a/a/k/a/c1;

    iget-object v1, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/a/k/a/c1$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/k/a/c1$a;-><init>(Le/a/a/k/a/c1;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/k/a/c1$a;->e:Le/a/a/k/a/c1;

    iget-object v1, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/a/k/a/c1$a;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/UserInfo$b;

    move-result-object p2

    .line 5
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v4, p2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$100(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 8
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v4, p2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$700(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 11
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v3, p2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$400(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    .line 15
    check-cast p2, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 16
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/a/k/a/c1;->d(Ljava/util/Map;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/UserInfo$b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$100(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$700(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/a/k/a/c1$a;->f:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->access$400(Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 14
    iget-object v0, p0, Le/a/a/k/a/c1$a;->e:Le/a/a/k/a/c1;

    iget-object v1, p0, Le/a/a/k/a/c1$a;->g:Ljava/lang/String;

    .line 15
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/a/k/a/c1;->d(Ljava/util/Map;)V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
