.class public final Lx3/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lx3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lx3/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/k$b;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lx3/k$b;->b:Lx3/b;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/k$b;->b:Lx3/b;

    invoke-interface {v0}, Lx3/b;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx3/k$b;->clone()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lx3/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lx3/k$b;

    iget-object v1, p0, Lx3/k$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lx3/k$b;->b:Lx3/b;

    invoke-interface {v2}, Lx3/b;->clone()Lx3/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx3/k$b;-><init>(Ljava/util/concurrent/Executor;Lx3/b;)V

    return-object v0
.end method

.method public enqueue(Lx3/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lx3/k$b;->b:Lx3/b;

    new-instance v1, Lx3/k$b$a;

    invoke-direct {v1, p0, p1}, Lx3/k$b$a;-><init>(Lx3/k$b;Lx3/d;)V

    invoke-interface {v0, v1}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public execute()Lx3/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx3/k$b;->b:Lx3/b;

    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/k$b;->b:Lx3/b;

    invoke-interface {v0}, Lx3/b;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/k$b;->b:Lx3/b;

    invoke-interface {v0}, Lx3/b;->request()Lu3/g0;

    move-result-object v0

    return-object v0
.end method
