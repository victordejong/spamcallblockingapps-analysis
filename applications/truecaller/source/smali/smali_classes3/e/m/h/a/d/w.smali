.class public final synthetic Le/m/h/a/d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/a/d/j;


# direct methods
.method public constructor <init>(Le/m/h/a/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/w;->a:Le/m/h/a/d/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/h/a/d/w;->a:Le/m/h/a/d/j;

    .line 1
    iget-object v1, v0, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Le/m/h/a/d/j;->d()V

    .line 4
    iget-object v0, v0, Le/m/h/a/d/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
