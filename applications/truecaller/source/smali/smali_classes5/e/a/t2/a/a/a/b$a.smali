.class public final Le/a/t2/a/a/a/b$a;
.super Lp3/a/q1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t2/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/q1/b<",
        "Le/a/t2/a/a/a/b$a;",
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

.method public constructor <init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/a/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lp3/a/q1/b;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;
    .locals 1

    .line 1
    new-instance v0, Le/a/t2/a/a/a/b$a;

    invoke-direct {v0, p1, p2}, Le/a/t2/a/a/a/b$a;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-object v0
.end method

.method public c(Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;)Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/a/a/b;->d:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/a/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/a/a/b;->d:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.callerid.v1.CallerId"

    const-string v4, "CallEnded"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/a/a/b;->d:Lp3/a/p0;

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

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    return-object p1
.end method

.method public d(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;)Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/a/a/b;->b:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/a/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/a/a/b;->b:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.callerid.v1.CallerId"

    const-string v4, "CallInitiated"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/a/a/b;->b:Lp3/a/p0;

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

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    return-object p1
.end method

.method public e(Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;)Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/a/a/b;->c:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/a/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/a/a/b;->c:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.callerid.v1.CallerId"

    const-string v4, "CallUpdated"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallUpdated$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/a/a/b;->c:Lp3/a/p0;

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

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/CallUpdated$Response;

    return-object p1
.end method

.method public f(Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;)Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/a/a/b;->a:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/a/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/a/a/b;->a:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.callerid.v1.CallerId"

    const-string v4, "GetBusinessCard"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/a/a/b;->a:Lp3/a/p0;

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

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/GetBusinessCard$Response;

    return-object p1
.end method

.method public g(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    sget-object v1, Le/a/t2/a/a/a/b;->e:Lp3/a/p0;

    if-nez v1, :cond_1

    .line 3
    const-class v2, Le/a/t2/a/a/a/b;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v1, Le/a/t2/a/a/a/b;->e:Lp3/a/p0;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v1

    sget-object v3, Lp3/a/p0$d;->a:Lp3/a/p0$d;

    .line 6
    iput-object v3, v1, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v3, "truecaller.callerid.v1.CallerId"

    const-string v4, "GetCallContextMessages"

    .line 7
    invoke-static {v3, v4}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lp3/a/p0$b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lp3/a/p0$b;->e:Z

    .line 10
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;

    move-result-object v3

    .line 11
    sget-object v4, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 12
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 13
    iput-object v4, v1, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    move-result-object v3

    .line 15
    new-instance v4, Lp3/a/p1/a/b$a;

    invoke-direct {v4, v3}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 16
    iput-object v4, v1, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 17
    invoke-virtual {v1}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v1

    sput-object v1, Le/a/t2/a/a/a/b;->e:Lp3/a/p0;

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

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p1
.end method
