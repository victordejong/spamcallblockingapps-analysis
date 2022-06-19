.class public Le/a/r2/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
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
.field public final a:Le/a/r2/n;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic c:Le/a/r2/o;


# direct methods
.method public constructor <init>(Le/a/r2/o;Le/a/r2/n;Ljava/lang/Object;Le/a/r2/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r2/o$d;->c:Le/a/r2/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/r2/o$d;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/a/r2/o$d;->a:Le/a/r2/n;

    return-void
.end method


# virtual methods
.method public a(Le/a/r2/u;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r2/o$d;->b:Ljava/lang/Object;

    iget-object v1, p0, Le/a/r2/o$d;->a:Le/a/r2/n;

    invoke-static {v0, p1, v1}, Le/a/r2/h0;->a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/n;)Le/a/r2/h0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/r2/o$d;->c:Le/a/r2/o;

    .line 3
    iget-object v1, v0, Le/a/r2/o;->f:Le/a/r2/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Le/a/r2/c;->b(Le/a/r2/h0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Le/a/r2/o;->f:Le/a/r2/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Le/a/r2/c;->b(Le/a/r2/h0;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, v0, Le/a/r2/o;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 10
    iget-object v2, v0, Le/a/r2/o;->a:Le/a/r2/o$e;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-wide v3, v0, Le/a/r2/o;->e:J

    check-cast v2, Le/a/r2/o$c;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v5, Le/a/r2/o$b;

    iget-object v2, v2, Le/a/r2/o$c;->a:Le/a/r2/o;

    invoke-direct {v5, v2, v1, v3, v4}, Le/a/r2/o$b;-><init>(Le/a/r2/o;Landroid/os/Looper;J)V

    .line 13
    iput-object v5, v0, Le/a/r2/o;->f:Le/a/r2/c;

    .line 14
    invoke-virtual {v5, p1}, Le/a/r2/c;->b(Le/a/r2/h0;)Z

    .line 15
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
