.class public abstract Li/c/b0/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Li/c/b0/g/a<",
        "TT;TU;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final f:Ljava/util/concurrent/CountDownLatch;

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field protected i:J

.field protected j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/e/k/r;

    invoke-direct {v0}, Li/c/b0/e/k/r;-><init>()V

    iput-object v0, p0, Li/c/b0/g/a;->g:Ljava/util/List;

    .line 3
    new-instance v0, Li/c/b0/e/k/r;

    invoke-direct {v0}, Li/c/b0/e/k/r;-><init>()V

    iput-object v0, p0, Li/c/b0/g/a;->h:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Li/c/b0/g/a;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
