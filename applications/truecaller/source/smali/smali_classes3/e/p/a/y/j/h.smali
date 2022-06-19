.class public Le/p/a/y/j/h;
.super Le/p/a/y/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lv3/f;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Le/p/a/y/j/d;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILv3/f;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/h;->f:Le/p/a/y/j/d;

    iput p4, p0, Le/p/a/y/j/h;->b:I

    iput-object p5, p0, Le/p/a/y/j/h;->c:Lv3/f;

    iput p6, p0, Le/p/a/y/j/h;->d:I

    iput-boolean p7, p0, Le/p/a/y/j/h;->e:Z

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/h;->f:Le/p/a/y/j/d;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/d;->j:Le/p/a/y/j/s;

    .line 3
    iget-object v1, p0, Le/p/a/y/j/h;->c:Lv3/f;

    iget v2, p0, Le/p/a/y/j/h;->d:I

    check-cast v0, Le/p/a/y/j/s$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v2, v2

    .line 5
    invoke-virtual {v1, v2, v3}, Lv3/f;->skip(J)V

    .line 6
    iget-object v0, p0, Le/p/a/y/j/h;->f:Le/p/a/y/j/d;

    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    iget v1, p0, Le/p/a/y/j/h;->b:I

    sget-object v2, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;

    invoke-interface {v0, v1, v2}, Le/p/a/y/j/c;->T(ILe/p/a/y/j/a;)V

    .line 7
    iget-object v0, p0, Le/p/a/y/j/h;->f:Le/p/a/y/j/d;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Le/p/a/y/j/h;->f:Le/p/a/y/j/d;

    .line 9
    iget-object v1, v1, Le/p/a/y/j/d;->t:Ljava/util/Set;

    .line 10
    iget v2, p0, Le/p/a/y/j/h;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
