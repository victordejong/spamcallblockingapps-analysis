.class public final Le/a/a/k/a/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/h0;-><init>(Le/a/p5/c;Le/a/a/k/a/b;Le/a/a/k/a/s1;Le/a/a/k/a/p;Le/a/a/k/a/i1;Le/a/b0/e/l;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/k/a/h0;


# direct methods
.method public constructor <init>(Le/a/a/k/a/h0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/h0$b;->a:Le/a/a/k/a/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/k/a/h0$b;->a:Le/a/a/k/a/h0;

    .line 2
    iget-object v1, v0, Le/a/a/k/a/h0;->m:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    invoke-interface {v1}, Le/a/a/k/a/a/m;->m()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Le/a/a/k/a/h0;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/x0;

    invoke-interface {v1}, Le/a/a/k/a/x0;->b()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Le/a/a/k/a/h0;->h:Le/a/a/k/a/s1;

    .line 5
    sget-object v2, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-interface {v1, v2}, Le/a/f4/b/h/g;->b(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v1

    .line 6
    check-cast v1, Le/a/t2/a/e/a/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget-object v3, v1, Lp3/a/q1/c;->a:Lp3/a/d;

    iget-object v4, v1, Lp3/a/q1/c;->b:Lp3/a/c;

    invoke-virtual {v4, v2}, Lp3/a/c;->c(Lp3/a/r;)Lp3/a/c;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Le/a/t2/a/e/a/b$b;->a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;

    move-result-object v1

    .line 8
    check-cast v1, Le/a/t2/a/e/a/b$b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 9
    iget-object v3, v0, Le/a/a/k/a/h0;->j:Le/a/a/k/a/i1;

    invoke-interface {v3}, Le/a/a/k/a/i1;->f()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Le/a/a/k/a/h0;->k:Le/a/b0/e/l;

    invoke-interface {v3}, Le/a/b0/e/l;->d()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    new-instance v3, Le/a/a/k/a/e;

    iget-object v4, v0, Le/a/a/k/a/h0;->d:Le/a/a/k/a/w1;

    if-eqz v4, :cond_4

    invoke-direct {v3, v4}, Le/a/a/k/a/e;-><init>(Le/a/a/k/a/w1;)V

    .line 11
    iget-object v2, v1, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 12
    sget-object v4, Le/a/t2/a/e/a/b;->c:Lp3/a/p0;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 13
    const-class v6, Le/a/t2/a/e/a/b;

    monitor-enter v6

    .line 14
    :try_start_0
    sget-object v4, Le/a/t2/a/e/a/b;->c:Lp3/a/p0;

    if-nez v4, :cond_2

    .line 15
    invoke-static {}, Lp3/a/p0;->b()Lp3/a/p0$b;

    move-result-object v4

    sget-object v7, Lp3/a/p0$d;->d:Lp3/a/p0$d;

    .line 16
    iput-object v7, v4, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    const-string v7, "truecaller.messenger.v1.Messenger"

    const-string v8, "Subscribe"

    .line 17
    invoke-static {v7, v8}, Lp3/a/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    iput-object v7, v4, Lp3/a/p0$b;->d:Ljava/lang/String;

    .line 19
    iput-boolean v5, v4, Lp3/a/p0$b;->e:Z

    .line 20
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;

    move-result-object v7

    .line 21
    sget-object v8, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 22
    new-instance v8, Lp3/a/p1/a/b$a;

    invoke-direct {v8, v7}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 23
    iput-object v8, v4, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 24
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object v7

    .line 25
    new-instance v8, Lp3/a/p1/a/b$a;

    invoke-direct {v8, v7}, Lp3/a/p1/a/b$a;-><init>(Lcom/google/protobuf/MessageLite;)V

    .line 26
    iput-object v8, v4, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    .line 27
    invoke-virtual {v4}, Lp3/a/p0$b;->a()Lp3/a/p0;

    move-result-object v4

    sput-object v4, Le/a/t2/a/e/a/b;->c:Lp3/a/p0;

    .line 28
    :cond_2
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29
    :cond_3
    :goto_1
    iget-object v1, v1, Lp3/a/q1/c;->b:Lp3/a/c;

    .line 30
    invoke-virtual {v2, v4, v1}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object v1

    .line 31
    sget-object v2, Lp3/a/q1/e;->a:Ljava/util/logging/Logger;

    .line 32
    new-instance v2, Lp3/a/q1/e$b;

    invoke-direct {v2, v1, v5}, Lp3/a/q1/e$b;-><init>(Lp3/a/f;Z)V

    .line 33
    new-instance v4, Lp3/a/q1/e$e;

    invoke-direct {v4, v3, v2}, Lp3/a/q1/e$e;-><init>(Lp3/a/q1/h;Lp3/a/q1/e$b;)V

    .line 34
    new-instance v3, Lp3/a/o0;

    invoke-direct {v3}, Lp3/a/o0;-><init>()V

    invoke-virtual {v1, v4, v3}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    .line 35
    invoke-virtual {v4}, Lp3/a/q1/e$e;->e()V

    .line 36
    iput-object v2, v0, Le/a/a/k/a/h0;->a:Lp3/a/q1/h;

    goto :goto_3

    :cond_4
    const-string v0, "handler"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Le/a/a/k/a/h0;->a(Z)V

    :goto_3
    return-void
.end method
