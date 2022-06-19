.class public Le/p/a/y/j/g;
.super Le/p/a/y/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z

.field public final synthetic e:Le/p/a/y/j/d;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/g;->e:Le/p/a/y/j/d;

    iput p4, p0, Le/p/a/y/j/g;->b:I

    iput-object p5, p0, Le/p/a/y/j/g;->c:Ljava/util/List;

    iput-boolean p6, p0, Le/p/a/y/j/g;->d:Z

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/y/j/g;->e:Le/p/a/y/j/d;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/d;->j:Le/p/a/y/j/s;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/g;->e:Le/p/a/y/j/d;

    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    iget v1, p0, Le/p/a/y/j/g;->b:I

    sget-object v2, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;

    invoke-interface {v0, v1, v2}, Le/p/a/y/j/c;->T(ILe/p/a/y/j/a;)V

    .line 5
    iget-object v0, p0, Le/p/a/y/j/g;->e:Le/p/a/y/j/d;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v1, p0, Le/p/a/y/j/g;->e:Le/p/a/y/j/d;

    .line 7
    iget-object v1, v1, Le/p/a/y/j/d;->t:Ljava/util/Set;

    .line 8
    iget v2, p0, Le/p/a/y/j/g;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
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
