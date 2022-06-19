.class public final Lcom/hiya/client/database/db/HiyaRoomDb_Impl;
.super Lcom/hiya/client/database/db/HiyaRoomDb;
.source "SourceFile"


# instance fields
.field private volatile j:Lg/g/b/b/a/d;

.field private volatile k:Lg/g/b/b/a/f;

.field private volatile l:Lg/g/b/b/a/j;

.field private volatile m:Lg/g/b/b/a/h;

.field private volatile n:Lg/g/b/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/database/db/HiyaRoomDb;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic C(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic D(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic E(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;Lf/t/a/b;)Lf/t/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/j;->a:Lf/t/a/b;

    return-object p1
.end method

.method static synthetic F(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;Lf/t/a/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/j;->m(Lf/t/a/b;)V

    return-void
.end method

.method static synthetic G(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic H(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected e()Landroidx/room/g;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/g;

    const-string v3, "caller_ids"

    const-string v4, "local_override_ids"

    const-string v5, "translated_strings"

    const-string v6, "postevent_data"

    const-string v7, "block_numbers"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/j;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/a;)Lf/t/a/c;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/l;

    new-instance v1, Lcom/hiya/client/database/db/HiyaRoomDb_Impl$a;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/hiya/client/database/db/HiyaRoomDb_Impl$a;-><init>(Lcom/hiya/client/database/db/HiyaRoomDb_Impl;I)V

    const-string v2, "720868bda9f8e6ed78962cd919298f0a"

    const-string v3, "9b5512bc00520a64f0b6b8af27cd5f1e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/l;-><init>(Landroidx/room/a;Landroidx/room/l$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lf/t/a/c$b;->a(Landroid/content/Context;)Lf/t/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lf/t/a/c$b$a;->c(Ljava/lang/String;)Lf/t/a/c$b$a;

    .line 4
    invoke-virtual {v1, v0}, Lf/t/a/c$b$a;->b(Lf/t/a/c$a;)Lf/t/a/c$b$a;

    .line 5
    invoke-virtual {v1}, Lf/t/a/c$b$a;->a()Lf/t/a/c$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/a;->a:Lf/t/a/c$c;

    invoke-interface {p1, v0}, Lf/t/a/c$c;->a(Lf/t/a/c$b;)Lf/t/a/c;

    move-result-object p1

    return-object p1
.end method

.method public s()Lg/g/b/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->n:Lg/g/b/b/a/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->n:Lg/g/b/b/a/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->n:Lg/g/b/b/a/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/b/b/a/c;

    invoke-direct {v0, p0}, Lg/g/b/b/a/c;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->n:Lg/g/b/b/a/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->n:Lg/g/b/b/a/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Lg/g/b/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->j:Lg/g/b/b/a/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->j:Lg/g/b/b/a/d;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->j:Lg/g/b/b/a/d;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/b/b/a/e;

    invoke-direct {v0, p0}, Lg/g/b/b/a/e;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->j:Lg/g/b/b/a/d;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->j:Lg/g/b/b/a/d;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Lg/g/b/b/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->k:Lg/g/b/b/a/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->k:Lg/g/b/b/a/f;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->k:Lg/g/b/b/a/f;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/b/b/a/g;

    invoke-direct {v0, p0}, Lg/g/b/b/a/g;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->k:Lg/g/b/b/a/f;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->k:Lg/g/b/b/a/f;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()Lg/g/b/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->m:Lg/g/b/b/a/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->m:Lg/g/b/b/a/h;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->m:Lg/g/b/b/a/h;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/b/b/a/i;

    invoke-direct {v0, p0}, Lg/g/b/b/a/i;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->m:Lg/g/b/b/a/h;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->m:Lg/g/b/b/a/h;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w()Lg/g/b/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->l:Lg/g/b/b/a/j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->l:Lg/g/b/b/a/j;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->l:Lg/g/b/b/a/j;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/b/b/a/k;

    invoke-direct {v0, p0}, Lg/g/b/b/a/k;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->l:Lg/g/b/b/a/j;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/database/db/HiyaRoomDb_Impl;->l:Lg/g/b/b/a/j;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
