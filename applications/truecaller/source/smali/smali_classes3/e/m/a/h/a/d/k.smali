.class public final Le/m/a/h/a/d/k;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le/m/a/h/a/d/h;

.field public final synthetic c:Le/m/a/h/a/d/r;


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/r;Le/m/a/h/a/h/n;Le/m/a/h/a/d/h;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/k;->c:Le/m/a/h/a/d/r;

    iput-object p3, p0, Le/m/a/h/a/d/k;->b:Le/m/a/h/a/d/h;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Le/m/a/h/a/d/k;->c:Le/m/a/h/a/d/r;

    iget-object v1, p0, Le/m/a/h/a/d/k;->b:Le/m/a/h/a/d/h;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v0, Le/m/a/h/a/d/r;->g:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Initiate binding to the service."

    .line 2
    invoke-virtual {v2, v5, v4}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Le/m/a/h/a/d/q;

    .line 4
    invoke-direct {v1, v0}, Le/m/a/h/a/d/q;-><init>(Le/m/a/h/a/d/r;)V

    iput-object v1, v0, Le/m/a/h/a/d/r;->m:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Le/m/a/h/a/d/r;->g:Z

    iget-object v4, v0, Le/m/a/h/a/d/r;->a:Landroid/content/Context;

    iget-object v5, v0, Le/m/a/h/a/d/r;->h:Landroid/content/Intent;

    .line 5
    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Failed to bind to the service."

    .line 6
    invoke-virtual {v1, v4, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v3, v0, Le/m/a/h/a/d/r;->g:Z

    iget-object v1, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/d/h;

    new-instance v3, Le/m/a/h/a/d/s;

    .line 8
    invoke-direct {v3}, Le/m/a/h/a/d/s;-><init>()V

    invoke-virtual {v2, v3}, Le/m/a/h/a/d/h;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Le/m/a/h/a/d/r;->g:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Waiting to bind to the service."

    .line 10
    invoke-virtual {v2, v4, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1}, Le/m/a/h/a/d/h;->run()V

    :cond_3
    :goto_1
    return-void
.end method
