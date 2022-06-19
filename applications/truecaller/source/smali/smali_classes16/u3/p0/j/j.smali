.class public final Lu3/p0/j/j;
.super Lu3/p0/f/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lu3/p0/j/f;

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILjava/util/List;)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/j;->e:Lu3/p0/j/f;

    iput p6, p0, Lu3/p0/j/j;->f:I

    iput-object p7, p0, Lu3/p0/j/j;->g:Ljava/util/List;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/j/j;->e:Lu3/p0/j/f;

    .line 2
    iget-object v0, v0, Lu3/p0/j/f;->l:Lu3/p0/j/s;

    .line 3
    iget v1, p0, Lu3/p0/j/j;->f:I

    iget-object v2, p0, Lu3/p0/j/j;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lu3/p0/j/s;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/j;->e:Lu3/p0/j/f;

    .line 5
    iget-object v0, v0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 6
    iget v1, p0, Lu3/p0/j/j;->f:I

    sget-object v2, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    invoke-virtual {v0, v1, v2}, Lu3/p0/j/p;->l(ILu3/p0/j/b;)V

    .line 7
    iget-object v0, p0, Lu3/p0/j/j;->e:Lu3/p0/j/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lu3/p0/j/j;->e:Lu3/p0/j/f;

    .line 9
    iget-object v1, v1, Lu3/p0/j/f;->B:Ljava/util/Set;

    .line 10
    iget v2, p0, Lu3/p0/j/j;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
