.class public Ln3/e/a/e/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Landroid/os/Handler;

.field public final d:Ln3/e/a/e/s1;

.field public final e:I

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ln3/e/a/e/s1;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/f2$a;->f:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Ln3/e/a/e/f2$a;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Ln3/e/a/e/f2$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Ln3/e/a/e/f2$a;->c:Landroid/os/Handler;

    .line 6
    iput-object p4, p0, Ln3/e/a/e/f2$a;->d:Ln3/e/a/e/s1;

    .line 7
    iput p5, p0, Ln3/e/a/e/f2$a;->e:I

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x2

    if-eq p5, p2, :cond_0

    const/16 p3, 0x17

    if-gt p1, p3, :cond_1

    :cond_0
    const-string p1, "deferrableSurface_close"

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne p5, p2, :cond_2

    const-string p1, "wait_for_request"

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ln3/e/a/e/f2;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/a/e/f2$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ln3/e/a/e/f2;

    new-instance v1, Ln3/e/a/e/c2;

    iget-object v2, p0, Ln3/e/a/e/f2$a;->d:Ln3/e/a/e/s1;

    iget-object v3, p0, Ln3/e/a/e/f2$a;->a:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Ln3/e/a/e/f2$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Ln3/e/a/e/f2$a;->c:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Ln3/e/a/e/c2;-><init>(Ln3/e/a/e/s1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ln3/e/a/e/f2;-><init>(Ln3/e/a/e/f2$b;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ln3/e/a/e/f2;

    new-instance v7, Ln3/e/a/e/e2;

    iget-object v2, p0, Ln3/e/a/e/f2$a;->f:Ljava/util/Set;

    iget-object v3, p0, Ln3/e/a/e/f2$a;->d:Ln3/e/a/e/s1;

    iget-object v4, p0, Ln3/e/a/e/f2$a;->a:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Ln3/e/a/e/f2$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Ln3/e/a/e/f2$a;->c:Landroid/os/Handler;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ln3/e/a/e/e2;-><init>(Ljava/util/Set;Ln3/e/a/e/s1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Ln3/e/a/e/f2;-><init>(Ln3/e/a/e/f2$b;)V

    return-object v0
.end method
