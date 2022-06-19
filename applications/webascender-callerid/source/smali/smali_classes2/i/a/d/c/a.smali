.class public final synthetic Li/a/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Li/a/d/c/e;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:Li/a/d/c/e;


# direct methods
.method public synthetic constructor <init>(Li/a/d/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Li/a/d/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/d/c/a;->f:Li/a/d/c/e;

    iput-object p2, p0, Li/a/d/c/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Li/a/d/c/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Li/a/d/c/a;->i:Li/a/d/c/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Li/a/d/c/a;->f:Li/a/d/c/e;

    iget-object v1, p0, Li/a/d/c/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Li/a/d/c/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Li/a/d/c/a;->i:Li/a/d/c/e;

    invoke-static {v0, v1, v2, v3}, Li/a/d/c/e;->e(Li/a/d/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Li/a/d/c/e;)V

    return-void
.end method
