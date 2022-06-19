.class public final Le/m/a/c/m1/d;
.super Le/m/a/c/m1/j;
.source "SourceFile"


# instance fields
.field public final c:Le/m/a/c/m1/c;


# direct methods
.method public constructor <init>(Le/m/a/c/m1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/m1/j;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/m1/d;->c:Le/m/a/c/m1/c;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/d;->c:Le/m/a/c/m1/c;

    .line 2
    iget-object v1, v0, Le/m/a/c/e1/g;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/m1/j;->clear()V

    .line 4
    iget-object v2, v0, Le/m/a/c/e1/g;->f:[Le/m/a/c/e1/f;

    iget v3, v0, Le/m/a/c/e1/g;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Le/m/a/c/e1/g;->h:I

    aput-object p0, v2, v3

    .line 5
    invoke-virtual {v0}, Le/m/a/c/e1/g;->g()V

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
