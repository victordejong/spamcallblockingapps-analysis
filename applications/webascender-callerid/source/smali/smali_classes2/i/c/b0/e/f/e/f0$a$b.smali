.class final Li/c/b0/e/f/e/f0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final f:Ljava/lang/Throwable;

.field final synthetic g:Li/c/b0/e/f/e/f0$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/f0$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/f0$a$b;->g:Li/c/b0/e/f/e/f0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/f0$a$b;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/f0$a$b;->g:Li/c/b0/e/f/e/f0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/f0$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/f0$a$b;->f:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/f0$a$b;->g:Li/c/b0/e/f/e/f0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/f0$a;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Li/c/b0/e/f/e/f0$a$b;->g:Li/c/b0/e/f/e/f0$a;

    iget-object v1, v1, Li/c/b0/e/f/e/f0$a;->i:Li/c/b0/b/d0$c;

    invoke-interface {v1}, Li/c/b0/c/c;->dispose()V

    .line 3
    throw v0
.end method
