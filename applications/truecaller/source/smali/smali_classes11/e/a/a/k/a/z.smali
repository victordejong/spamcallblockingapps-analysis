.class public final Le/a/a/k/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/y;


# instance fields
.field public final a:Z

.field public final b:Le/a/a/i0;

.field public final c:Le/a/b0/e/l;

.field public final d:Le/a/a/k/a/p;

.field public final e:Le/a/a/k/a/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/i0;Le/a/b0/e/l;Le/a/a/k/a/p;Le/a/a/k/a/i1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imEventProcessor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/a/k/a/z;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/k/a/z;->c:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/a/k/a/z;->d:Le/a/a/k/a/p;

    iput-object p5, p0, Le/a/a/k/a/z;->e:Le/a/a/k/a/i1;

    .line 2
    invoke-static {p1}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result p1

    .line 3
    iput-boolean p1, p0, Le/a/a/k/a/z;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/z;->c:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Le/a/r/t/c;->qa()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/a/k/a/z;->e:Le/a/a/k/a/i1;

    invoke-interface {v0}, Le/a/a/k/a/i1;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/z;->b:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->s(Z)V

    const-string v0, "payload"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object p1

    .line 4
    iget-boolean v2, p0, Le/a/a/k/a/z;->a:Z

    const-string v3, "event"

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Le/a/a/k/a/q1;->c:Le/a/a/k/a/q1;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/a/k/a/q1;->d(Lcom/truecaller/api/services/messenger/v1/events/Event;)Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "it.toString()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/a/k/a/q1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "<masked>"

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "IM push "

    .line 7
    invoke-static {v5, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v4}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v2, p0, Le/a/a/k/a/z;->d:Le/a/a/k/a/p;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1, v0}, Le/a/a/k/a/p;->a(Lcom/truecaller/api/services/messenger/v1/events/Event;ZI)Lcom/truecaller/messaging/transport/im/ProcessResult;

    :cond_3
    :goto_1
    return-void
.end method
