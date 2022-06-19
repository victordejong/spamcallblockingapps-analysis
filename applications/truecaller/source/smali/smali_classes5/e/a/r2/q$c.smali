.class public Le/a/r2/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/w;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Le/a/r2/n;

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Le/a/r2/n;Le/a/r2/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r2/q$c;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Le/a/r2/q$c;->b:Le/a/r2/n;

    .line 4
    iput-object p1, p0, Le/a/r2/q$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/a/r2/u;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/r2/q$c;->c:Ljava/lang/Object;

    iget-object v1, p0, Le/a/r2/q$c;->b:Le/a/r2/n;

    .line 2
    const-class v2, Le/a/r2/q$b;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-object v3, Le/a/r2/q$b;->e:Le/a/r2/q$b;

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, v3, Le/a/r2/q$b;->d:Le/a/r2/q$b;

    sput-object v4, Le/a/r2/q$b;->e:Le/a/r2/q$b;

    const/4 v4, 0x0

    .line 5
    iput-object v4, v3, Le/a/r2/q$b;->d:Le/a/r2/q$b;

    .line 6
    sget v4, Le/a/r2/q$b;->f:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Le/a/r2/q$b;->f:I

    .line 7
    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v3, Le/a/r2/q$b;

    invoke-direct {v3}, Le/a/r2/q$b;-><init>()V

    .line 10
    :goto_0
    iput-object v1, v3, Le/a/r2/q$b;->c:Le/a/r2/n;

    .line 11
    iput-object p1, v3, Le/a/r2/q$b;->b:Le/a/r2/u;

    .line 12
    iput-object v0, v3, Le/a/r2/q$b;->a:Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Le/a/r2/q$c;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
