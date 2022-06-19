.class public final synthetic Le/m/d/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/w/h;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Le/m/d/w/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/w/a;->a:Le/m/d/w/h;

    iput-boolean p2, p0, Le/m/d/w/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/d/w/a;->a:Le/m/d/w/h;

    iget-boolean v1, p0, Le/m/d/w/a;->b:Z

    .line 1
    invoke-virtual {v0}, Le/m/d/w/h;->i()Le/m/d/w/r/d;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-virtual {v2}, Le/m/d/w/r/d;->h()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3
    invoke-virtual {v2}, Le/m/d/w/r/d;->f()Le/m/d/w/r/c$a;

    move-result-object v3

    sget-object v4, Le/m/d/w/r/c$a;->c:Le/m/d/w/r/c$a;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 4
    iget-object v1, v0, Le/m/d/w/h;->d:Le/m/d/w/p;

    invoke-virtual {v1, v2}, Le/m/d/w/p;->d(Le/m/d/w/r/d;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5
    :cond_2
    invoke-virtual {v0, v2}, Le/m/d/w/h;->d(Le/m/d/w/r/d;)Le/m/d/w/r/d;

    move-result-object v1

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Le/m/d/w/h;->n(Le/m/d/w/r/d;)Le/m/d/w/r/d;

    move-result-object v1
    :try_end_0
    .catch Le/m/d/w/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_2
    invoke-virtual {v0, v1}, Le/m/d/w/h;->k(Le/m/d/w/r/d;)V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v3, v0, Le/m/d/w/h;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v2}, Le/m/d/w/r/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Le/m/d/w/r/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    iget-object v2, v0, Le/m/d/w/h;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/d/w/q/a;

    .line 12
    invoke-virtual {v1}, Le/m/d/w/r/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Le/m/d/w/q/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 13
    :cond_4
    monitor-exit v0

    .line 14
    invoke-virtual {v1}, Le/m/d/w/r/d;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    move-object v2, v1

    check-cast v2, Le/m/d/w/r/a;

    .line 16
    iget-object v2, v2, Le/m/d/w/r/a;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2}, Le/m/d/w/h;->q(Ljava/lang/String;)V

    .line 18
    :cond_5
    invoke-virtual {v1}, Le/m/d/w/r/d;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    new-instance v1, Le/m/d/w/j;

    sget-object v2, Le/m/d/w/j$a;->a:Le/m/d/w/j$a;

    invoke-direct {v1, v2}, Le/m/d/w/j;-><init>(Le/m/d/w/j$a;)V

    invoke-virtual {v0, v1}, Le/m/d/w/h;->o(Ljava/lang/Exception;)V

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {v1}, Le/m/d/w/r/d;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/m/d/w/h;->o(Ljava/lang/Exception;)V

    goto :goto_4

    .line 22
    :cond_7
    invoke-virtual {v0, v1}, Le/m/d/w/h;->p(Le/m/d/w/r/d;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v0, v1}, Le/m/d/w/h;->o(Ljava/lang/Exception;)V

    :cond_8
    :goto_4
    return-void
.end method
