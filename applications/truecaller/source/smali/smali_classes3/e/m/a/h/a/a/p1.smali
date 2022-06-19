.class public final Le/m/a/h/a/a/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Le/m/a/h/a/a/e0;

.field public final b:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/a/b1;

.field public final d:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/m/a/h/a/a/m1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "ExtractorSessionStoreView"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/p1;->g:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/b1;Le/m/a/h/a/d/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/a/e0;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/a/b1;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/p1;->a:Le/m/a/h/a/a/e0;

    iput-object p2, p0, Le/m/a/h/a/a/p1;->b:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/a/p1;->c:Le/m/a/h/a/a/b1;

    iput-object p4, p0, Le/m/a/h/a/a/p1;->d:Le/m/a/h/a/d/f1;

    new-instance p1, Ljava/util/HashMap;

    .line 1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static c(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pack_names"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Le/m/a/h/a/a/x0;

    const-string v0, "Session without pack received."

    .line 5
    invoke-direct {p0, v0}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Le/m/a/h/a/a/m1;
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/m1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Le/m/a/h/a/a/x0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/a/h/a/a/o1<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    invoke-interface {p1}, Le/m/a/h/a/a/o1;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1
.end method
