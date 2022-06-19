.class public Lcom/google/protobuf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/protobuf/i;

.field private b:Lcom/google/protobuf/p;

.field protected volatile c:Lcom/google/protobuf/r0;

.field private volatile d:Lcom/google/protobuf/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/protobuf/r0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/protobuf/r0;->q()Lcom/google/protobuf/z0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    iget-object v2, p0, Lcom/google/protobuf/e0;->b:Lcom/google/protobuf/p;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/z0;->a(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r0;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    iput-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    goto :goto_0

    .line 9
    :cond_2
    iput-object p1, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    .line 10
    sget-object v0, Lcom/google/protobuf/i;->g:Lcom/google/protobuf/i;

    iput-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    .line 12
    sget-object p1, Lcom/google/protobuf/i;->g:Lcom/google/protobuf/i;

    iput-object p1, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    invoke-virtual {v0}, Lcom/google/protobuf/i;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/i;->size()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    invoke-interface {v0}, Lcom/google/protobuf/r0;->m()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->a(Lcom/google/protobuf/r0;)V

    .line 2
    iget-object p1, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    return-object p1
.end method

.method public d(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    .line 3
    iput-object v1, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    return-object v0
.end method

.method public e()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/e0;->a:Lcom/google/protobuf/i;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    monitor-exit p0

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/google/protobuf/i;->g:Lcom/google/protobuf/i;

    iput-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    invoke-interface {v0}, Lcom/google/protobuf/r0;->i()Lcom/google/protobuf/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/i;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/e0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/protobuf/e0;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    .line 4
    iget-object v1, p1, Lcom/google/protobuf/e0;->c:Lcom/google/protobuf/r0;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->e()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/e0;->e()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/s0;->b()Lcom/google/protobuf/r0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/e0;->c(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-interface {v1}, Lcom/google/protobuf/s0;->b()Lcom/google/protobuf/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->c(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
