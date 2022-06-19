.class public final Li/a/d/f/z/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/d/f/z/d$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# instance fields
.field private final f:Li/a/d/f/z/d$b;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Li/a/d/f/z/d;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_WorkerThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li/a/d/f/z/d;->h:Ljava/lang/String;

    .line 3
    const-class v0, Li/a/d/f/z/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li/a/d/f/z/d;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Li/a/d/f/z/g;JIIJ)V
    .locals 12

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Li/a/d/f/z/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v1, Li/a/d/f/z/d$b;

    .line 4
    invoke-static/range {p4 .. p4}, Li/a/d/f/a0/a;->a(I)Ljava/util/Queue;

    move-result-object v10

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, p1

    move-wide v5, p2

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v11}, Li/a/d/f/z/d$b;-><init>(Li/a/d/f/z/g;JIJLjava/util/Queue;Li/a/d/f/z/d$a;)V

    iput-object v1, v0, Li/a/d/f/z/d;->f:Li/a/d/f/z/d$b;

    .line 5
    new-instance v2, Li/a/d/d/c;

    sget-object v3, Li/a/d/f/z/d;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Li/a/d/d/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Li/a/d/d/c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/z/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Li/a/d/f/z/g;)Li/a/d/f/z/e;
    .locals 1

    .line 1
    new-instance v0, Li/a/d/f/z/e;

    invoke-direct {v0, p0}, Li/a/d/f/z/e;-><init>(Li/a/d/f/z/g;)V

    return-object v0
.end method


# virtual methods
.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0()Li/a/d/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/z/d;->f:Li/a/d/f/z/d$b;

    invoke-static {v0}, Li/a/d/f/z/d$b;->c(Li/a/d/f/z/d$b;)Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .locals 0

    invoke-static {p0}, Li/a/d/f/u;->a(Li/a/d/f/v;)V

    return-void
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j0(Li/a/b/e;Li/a/d/f/l;)V
    .locals 0

    return-void
.end method

.method public shutdown()Li/a/d/c/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/z/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Li/a/d/f/z/d;->f:Li/a/d/f/z/d$b;

    invoke-static {v0}, Li/a/d/f/z/d$b;->b(Li/a/d/f/z/d$b;)Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public u1(Li/a/d/f/m;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Li/a/d/f/m;->b()Li/a/a/f/n;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/f/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/d/f/z/d;->f:Li/a/d/f/z/d$b;

    invoke-static {v0, p1}, Li/a/d/f/z/d$b;->a(Li/a/d/f/z/d$b;Li/a/d/f/m;)V

    return-void
.end method
