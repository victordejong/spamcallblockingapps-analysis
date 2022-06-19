.class public final Lu3/p0/e/e$d;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/e/e;-><init>(Lu3/p0/k/b;Ljava/io/File;IIJLu3/p0/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/e/e;


# direct methods
.method public constructor <init>(Lu3/p0/e/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 1
    iget-object v0, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    .line 3
    iget-boolean v2, v1, Lu3/p0/e/e;->k:Z

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v2, v1, Lu3/p0/e/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Lu3/p0/e/e;->Q()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    .line 7
    iput-boolean v2, v1, Lu3/p0/e/e;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    :try_start_3
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    .line 9
    invoke-virtual {v1}, Lu3/p0/e/e;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    invoke-virtual {v1}, Lu3/p0/e/e;->K()V

    .line 11
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    const/4 v5, 0x0

    .line 12
    iput v5, v1, Lu3/p0/e/e;->h:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 13
    :catch_1
    :try_start_4
    iget-object v1, p0, Lu3/p0/e/e$d;->e:Lu3/p0/e/e;

    .line 14
    iput-boolean v2, v1, Lu3/p0/e/e;->n:Z

    .line 15
    new-instance v2, Lv3/e;

    invoke-direct {v2}, Lv3/e;-><init>()V

    const-string v5, "$this$buffer"

    .line 16
    invoke-static {v2, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v5, Lv3/u;

    invoke-direct {v5, v2}, Lv3/u;-><init>(Lv3/z;)V

    .line 18
    iput-object v5, v1, Lu3/p0/e/e;->f:Lv3/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :cond_1
    :goto_1
    monitor-exit v0

    return-wide v3

    .line 20
    :cond_2
    :goto_2
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method
