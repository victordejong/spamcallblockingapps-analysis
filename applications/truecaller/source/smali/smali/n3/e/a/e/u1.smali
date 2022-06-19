.class public Ln3/e/a/e/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e/a/e/z0;

.field public final b:Ln3/e/a/e/v1;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Z


# direct methods
.method public constructor <init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/a/e/u1;->d:Z

    .line 3
    iput-object p1, p0, Ln3/e/a/e/u1;->a:Ln3/e/a/e/z0;

    .line 4
    new-instance p1, Ln3/e/a/e/v1;

    invoke-direct {p1, p2, v0}, Ln3/e/a/e/v1;-><init>(Ln3/e/a/e/k2/e;I)V

    iput-object p1, p0, Ln3/e/a/e/u1;->b:Ln3/e/a/e/v1;

    .line 5
    iput-object p3, p0, Ln3/e/a/e/u1;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
