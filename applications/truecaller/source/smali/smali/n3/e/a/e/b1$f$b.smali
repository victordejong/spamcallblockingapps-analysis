.class public Ln3/e/a/e/b1$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/b1$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Z

.field public final synthetic c:Ln3/e/a/e/b1$f;


# direct methods
.method public constructor <init>(Ln3/e/a/e/b1$f;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/b1$f$b;->c:Ln3/e/a/e/b1$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/e/a/e/b1$f$b;->b:Z

    .line 3
    iput-object p2, p0, Ln3/e/a/e/b1$f$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f$b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/o;

    invoke-direct {v1, p0}, Ln3/e/a/e/o;-><init>(Ln3/e/a/e/b1$f$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
