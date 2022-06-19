.class public final Le/m/a/c/j1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/j1/g$b;,
        Le/m/a/c/j1/g$e;,
        Le/m/a/c/j1/g$c;,
        Le/m/a/c/j1/g$d;
    }
.end annotation


# static fields
.field public static final n:Lcom/google/android/exoplayer2/scheduler/Requirements;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/c/j1/g$c;

.field public final c:Le/m/a/c/k1/b$c;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/j1/g$d;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/j1/f;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/m/a/c/k1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    sput-object v0, Le/m/a/c/j1/g;->n:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/c/d1/b;Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V
    .locals 8

    .line 1
    new-instance v2, Le/m/a/c/j1/d;

    invoke-direct {v2, p2}, Le/m/a/c/j1/d;-><init>(Le/m/a/c/d1/b;)V

    new-instance v3, Le/m/a/c/j1/e;

    new-instance p2, Le/m/a/c/j1/k;

    invoke-direct {p2, p3, p4}, Le/m/a/c/j1/k;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V

    invoke-direct {v3, p2}, Le/m/a/c/j1/e;-><init>(Le/m/a/c/j1/k;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Le/m/a/c/j1/g;->a:Landroid/content/Context;

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Le/m/a/c/j1/g;->h:I

    const/4 p2, 0x5

    .line 5
    iput p2, p0, Le/m/a/c/j1/g;->i:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Le/m/a/c/j1/g;->g:Z

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Le/m/a/c/j1/g;->l:Ljava/util/List;

    .line 8
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance p3, Le/m/a/c/j1/c;

    invoke-direct {p3, p0}, Le/m/a/c/j1/c;-><init>(Le/m/a/c/j1/g;)V

    .line 10
    invoke-static {}, Le/m/a/c/q1/d0;->j()Landroid/os/Looper;

    move-result-object p4

    .line 11
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    const-string p3, "DownloadManager file i/o"

    invoke-direct {v1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 14
    new-instance p3, Le/m/a/c/j1/g$c;

    iget v5, p0, Le/m/a/c/j1/g;->h:I

    iget v6, p0, Le/m/a/c/j1/g;->i:I

    iget-boolean v7, p0, Le/m/a/c/j1/g;->g:Z

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Le/m/a/c/j1/g$c;-><init>(Landroid/os/HandlerThread;Le/m/a/c/j1/n;Le/m/a/c/j1/l;Landroid/os/Handler;IIZ)V

    iput-object p3, p0, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    .line 15
    new-instance p4, Le/m/a/c/j1/a;

    invoke-direct {p4, p0}, Le/m/a/c/j1/a;-><init>(Le/m/a/c/j1/g;)V

    .line 16
    iput-object p4, p0, Le/m/a/c/j1/g;->c:Le/m/a/c/k1/b$c;

    .line 17
    new-instance v0, Le/m/a/c/k1/b;

    sget-object v1, Le/m/a/c/j1/g;->n:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v0, p1, p4, v1}, Le/m/a/c/k1/b;-><init>(Landroid/content/Context;Le/m/a/c/k1/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v0, p0, Le/m/a/c/j1/g;->m:Le/m/a/c/k1/b;

    .line 18
    invoke-virtual {v0}, Le/m/a/c/k1/b;->b()I

    move-result p1

    iput p1, p0, Le/m/a/c/j1/g;->j:I

    .line 19
    iput p2, p0, Le/m/a/c/j1/g;->e:I

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p3, p2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/j1/g$d;

    .line 2
    iget-boolean v2, p0, Le/m/a/c/j1/g;->k:Z

    invoke-interface {v1, p0, v2}, Le/m/a/c/j1/g$d;->f(Le/m/a/c/j1/g;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Le/m/a/c/k1/b;I)V
    .locals 3

    .line 1
    iget-object p1, p1, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 2
    iget v0, p0, Le/m/a/c/j1/g;->j:I

    if-eq v0, p2, :cond_0

    .line 3
    iput p2, p0, Le/m/a/c/j1/g;->j:I

    .line 4
    iget v0, p0, Le/m/a/c/j1/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/m/a/c/j1/g;->e:I

    .line 5
    iget-object v0, p0, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/j1/g;->c()Z

    move-result v0

    .line 9
    iget-object v1, p0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/j1/g$d;

    .line 10
    invoke-interface {v2, p0, p1, p2}, Le/m/a/c/j1/g$d;->b(Le/m/a/c/j1/g;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Le/m/a/c/j1/g;->a()V

    :cond_2
    return-void
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/j1/g;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Le/m/a/c/j1/g;->j:I

    if-eqz v0, :cond_1

    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Le/m/a/c/j1/g;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3
    iget-object v3, p0, Le/m/a/c/j1/g;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/j1/f;

    iget v3, v3, Le/m/a/c/j1/f;->b:I

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_1
    iget-boolean v3, p0, Le/m/a/c/j1/g;->k:Z

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 5
    :goto_2
    iput-boolean v0, p0, Le/m/a/c/j1/g;->k:Z

    return v1
.end method
