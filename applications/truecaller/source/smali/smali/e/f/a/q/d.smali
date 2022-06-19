.class public Le/f/a/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/f/a/t/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Le/f/a/t/i;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/f/a/q/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Le/f/a/q/d;->b:Ln3/g/a;

    return-void
.end method
