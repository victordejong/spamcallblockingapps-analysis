.class final Li/c/b0/e/h/n$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/h/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/b0/e/h/n$b;

.field final synthetic g:Li/c/b0/e/h/n$c;


# direct methods
.method constructor <init>(Li/c/b0/e/h/n$c;Li/c/b0/e/h/n$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/h/n$c$a;->g:Li/c/b0/e/h/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/h/n$c$a;->f:Li/c/b0/e/h/n$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/h/n$c$a;->f:Li/c/b0/e/h/n$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/c/b0/e/h/n$b;->i:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/h/n$c$a;->g:Li/c/b0/e/h/n$c;

    iget-object v0, v0, Li/c/b0/e/h/n$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Li/c/b0/e/h/n$c$a;->f:Li/c/b0/e/h/n$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
