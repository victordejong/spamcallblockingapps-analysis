.class public Le/i/b/n2;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Le/i/b/p2;


# direct methods
.method public constructor <init>(Le/i/b/p2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/n2;->d:Le/i/b/p2;

    iput-object p2, p0, Le/i/b/n2;->c:Ljava/util/List;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/i/b/n2;->d:Le/i/b/p2;

    .line 2
    iget-object v0, v0, Le/i/b/p2;->c:Le/i/b/y1;

    .line 3
    iget-object v1, p0, Le/i/b/n2;->c:Ljava/util/List;

    .line 4
    iget-object v2, v0, Le/i/b/y1;->h:Le/i/b/i2/c;

    iget-object v3, v0, Le/i/b/y1;->e:Le/i/b/u2/x;

    .line 5
    iget-object v4, v2, Le/i/b/i2/c;->e:Ljava/util/concurrent/Executor;

    new-instance v5, Le/i/b/i2/c$a;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Le/i/b/i2/c$a;-><init>(Le/i/b/i2/c;Le/i/b/u2/x;Le/i/b/i2/b;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    iget-object v2, v0, Le/i/b/y1;->e:Le/i/b/u2/x;

    .line 7
    iget-object v2, v2, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 8
    invoke-virtual {v2}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v2

    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-static {v2, v3}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, v0, Le/i/b/y1;->g:Le/i/b/u2/i;

    invoke-virtual {v2, v1}, Le/i/b/u2/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 13
    new-instance v3, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v3}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {v0, v2, v3}, Le/i/b/y1;->d(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
