.class public Le/p/a/y/j/i;
.super Le/p/a/y/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/p/a/y/j/a;

.field public final synthetic d:Le/p/a/y/j/d;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILe/p/a/y/j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/i;->d:Le/p/a/y/j/d;

    iput p4, p0, Le/p/a/y/j/i;->b:I

    iput-object p5, p0, Le/p/a/y/j/i;->c:Le/p/a/y/j/a;

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/y/j/i;->d:Le/p/a/y/j/d;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/d;->j:Le/p/a/y/j/s;

    .line 3
    check-cast v0, Le/p/a/y/j/s$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/p/a/y/j/i;->d:Le/p/a/y/j/d;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Le/p/a/y/j/i;->d:Le/p/a/y/j/d;

    .line 7
    iget-object v1, v1, Le/p/a/y/j/d;->t:Ljava/util/Set;

    .line 8
    iget v2, p0, Le/p/a/y/j/i;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
