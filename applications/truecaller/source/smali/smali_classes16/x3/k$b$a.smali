.class public Lx3/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/k$b;->enqueue(Lx3/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx3/d;

.field public final synthetic b:Lx3/k$b;


# direct methods
.method public constructor <init>(Lx3/k$b;Lx3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/k$b$a;->b:Lx3/k$b;

    iput-object p2, p0, Lx3/k$b$a;->a:Lx3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lx3/k$b$a;->b:Lx3/k$b;

    iget-object p1, p1, Lx3/k$b;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lx3/k$b$a$b;

    invoke-direct {v0, p0, p2}, Lx3/k$b$a$b;-><init>(Lx3/k$b$a;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Lx3/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lx3/k$b$a;->b:Lx3/k$b;

    iget-object p1, p1, Lx3/k$b;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lx3/k$b$a$a;

    invoke-direct {v0, p0, p2}, Lx3/k$b$a$a;-><init>(Lx3/k$b$a;Lx3/a0;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
