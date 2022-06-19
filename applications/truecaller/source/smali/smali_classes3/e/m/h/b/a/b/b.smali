.class public final synthetic Le/m/h/b/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/a/b/b;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iput-object p2, p0, Le/m/h/b/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Le/m/h/b/a/b/b;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/h/b/a/b/b;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v1, p0, Le/m/h/b/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Le/m/h/b/a/b/b;->c:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/m/h/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
