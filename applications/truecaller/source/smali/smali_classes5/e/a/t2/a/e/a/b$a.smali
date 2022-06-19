.class public final Le/a/t2/a/e/a/b$a;
.super Lp3/a/q1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t2/a/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/q1/b<",
        "Le/a/t2/a/e/a/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/d;Lp3/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp3/a/q1/b;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-void
.end method

.method public constructor <init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/e/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lp3/a/q1/b;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;
    .locals 1

    .line 1
    new-instance v0, Le/a/t2/a/e/a/b$a;

    invoke-direct {v0, p1, p2}, Le/a/t2/a/e/a/b$a;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-object v0
.end method

.method public c(Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->m:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->m:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "AddParticipants"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->m:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;

    return-object p1
.end method

.method public d(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->k:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->k:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "CreateGroup"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->k:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;

    return-object p1
.end method

.method public e(Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;)Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->y:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->y:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "DeleteMessages"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->y:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/DeleteMessages$Response;

    return-object p1
.end method

.method public f(Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;)Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->j:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->j:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetChangelog"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->j:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    return-object p1
.end method

.method public g(Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;)Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->s:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->s:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetContexts"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->s:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;

    return-object p1
.end method

.method public h(Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;)Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->r:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->r:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetEvents"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->r:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;

    return-object p1
.end method

.method public i(Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->v:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->v:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetGroupInfoViaInviteKey"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->v:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;

    return-object p1
.end method

.method public j(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;)Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->g:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->g:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetMediaHandles"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->g:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    return-object p1
.end method

.method public k(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->n:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->n:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetParticipants"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->n:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p1
.end method

.method public l(Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;)Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->p:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->p:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetPermissions"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->p:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;

    return-object p1
.end method

.method public m(Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;)Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->b:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->b:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "GetUsers"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->b:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;

    return-object p1
.end method

.method public n(Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->u:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->u:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "JoinViaInviteKey"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->u:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;

    return-object p1
.end method

.method public o(Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;)Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->a:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->a:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "Register"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->a:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;

    return-object p1
.end method

.method public p(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->w:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->w:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "ReissueGroupInviteKey"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->w:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p1
.end method

.method public q(Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->o:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->o:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "RemoveParticipants"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->o:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    return-object p1
.end method

.method public r(Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;)Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->i:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->i:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "SendReaction"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->i:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;

    return-object p1
.end method

.method public s(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;)Lcom/truecaller/api/services/messenger/v1/SendReport$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->f:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->f:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "SendReport"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReport$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendReport$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->f:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendReport$Response;

    return-object p1
.end method

.method public t(Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;)Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->e:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->e:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "SendUserTyping"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->e:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;

    return-object p1
.end method

.method public u(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->t:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->t:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "UpdateContextSettings"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->t:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;

    return-object p1
.end method

.method public v(Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->l:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->l:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "UpdateGroupInfo"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->l:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;

    return-object p1
.end method

.method public w(Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->h:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->h:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "UpdateNotificationSettings"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->h:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;

    return-object p1
.end method

.method public x(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/e/a/b;->q:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/e/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/e/a/b;->q:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.messenger.v1.Messenger"

    const-string v4, "UpdateRoles"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/e/a/b;->q:Lp3/a/p0;

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
    iget-object v2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 20
    invoke-static {v0, v1, v2, p1}, Lp3/a/q1/e;->a(Lp3/a/d;Lp3/a/p0;Lp3/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    return-object p1
.end method
