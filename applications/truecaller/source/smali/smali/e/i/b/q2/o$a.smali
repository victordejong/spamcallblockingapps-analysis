.class public final Le/i/b/q2/o$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/q2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Le/i/b/z1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/i/b/i2/g;

.field public final e:Le/i/b/s2/f;

.field public final f:Le/i/b/s2/b;


# direct methods
.method public constructor <init>(Le/i/b/z1/u;Le/i/b/i2/g;Le/i/b/s2/f;Le/i/b/s2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Le/i/b/i2/g;",
            "Le/i/b/s2/f;",
            "Le/i/b/s2/b;",
            ")V"
        }
    .end annotation

    const-string v0, "sendingQueue"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    iput-object p1, p0, Le/i/b/q2/o$a;->c:Le/i/b/z1/u;

    iput-object p2, p0, Le/i/b/q2/o$a;->d:Le/i/b/i2/g;

    iput-object p3, p0, Le/i/b/q2/o$a;->e:Le/i/b/s2/f;

    iput-object p4, p0, Le/i/b/q2/o$a;->f:Le/i/b/s2/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/q2/o$a;->c:Le/i/b/z1/u;

    iget-object v1, p0, Le/i/b/q2/o$a;->e:Le/i/b/s2/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Le/i/b/z1/u;->a(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/i/b/q2/o$a;->f:Le/i/b/s2/b;

    invoke-virtual {v1}, Le/i/b/s2/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 5
    invoke-virtual {v3}, Lcom/criteo/publisher/logging/RemoteLogRecords;->a()Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/criteo/publisher/logging/RemoteLogRecords;->a()Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Le/i/b/q2/o$a;->d:Le/i/b/i2/g;

    const-string v2, "/inapp/logs"

    .line 8
    invoke-virtual {v1, v2, v0}, Le/i/b/i2/g;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 10
    iget-object v3, p0, Le/i/b/q2/o$a;->c:Le/i/b/z1/u;

    invoke-interface {v3, v2}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    throw v1
.end method
