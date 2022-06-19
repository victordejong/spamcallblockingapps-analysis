.class public Lp3/a/o1/a$a;
.super Lp3/a/o1/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/o1/a;->h1(Lv3/f;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final b:Lp3/c/b;

.field public final synthetic c:Lp3/a/o1/a;


# direct methods
.method public constructor <init>(Lp3/a/o1/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp3/a/o1/a$a;->c:Lp3/a/o1/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lp3/a/o1/a$d;-><init>(Lp3/a/o1/a;Lp3/a/o1/a$a;)V

    .line 2
    invoke-static {}, Lp3/c/c;->a()Lp3/c/b;

    sget-object p1, Lp3/c/a;->b:Lp3/c/b;

    iput-object p1, p0, Lp3/a/o1/a$a;->b:Lp3/c/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/a$a;->c:Lp3/a/o1/a;

    .line 5
    iget-object v1, v1, Lp3/a/o1/a;->a:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lp3/a/o1/a$a;->c:Lp3/a/o1/a;

    .line 8
    iget-object v2, v2, Lp3/a/o1/a;->b:Lv3/f;

    .line 9
    invoke-virtual {v2}, Lv3/f;->j()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lv3/f;->h1(Lv3/f;J)V

    .line 10
    iget-object v2, p0, Lp3/a/o1/a$a;->c:Lp3/a/o1/a;

    const/4 v3, 0x0

    .line 11
    iput-boolean v3, v2, Lp3/a/o1/a;->e:Z

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object v1, v2, Lp3/a/o1/a;->h:Lv3/z;

    .line 14
    iget-wide v2, v0, Lv3/f;->b:J

    .line 15
    invoke-interface {v1, v0, v2, v3}, Lv3/z;->h1(Lv3/f;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 17
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    throw v0
.end method
