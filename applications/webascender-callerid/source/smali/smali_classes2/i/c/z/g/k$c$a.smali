.class final Li/c/z/g/k$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/g/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/z/g/k$b;

.field final synthetic g:Li/c/z/g/k$c;


# direct methods
.method constructor <init>(Li/c/z/g/k$c;Li/c/z/g/k$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/z/g/k$c$a;->g:Li/c/z/g/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/z/g/k$c$a;->f:Li/c/z/g/k$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/g/k$c$a;->f:Li/c/z/g/k$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/c/z/g/k$b;->i:Z

    .line 2
    iget-object v0, p0, Li/c/z/g/k$c$a;->g:Li/c/z/g/k$c;

    iget-object v0, v0, Li/c/z/g/k$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Li/c/z/g/k$c$a;->f:Li/c/z/g/k$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
