.class public Le/m/d/n/j/k/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/n/j/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Le/m/d/n/j/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final synthetic d:Le/m/d/n/j/k/k;


# direct methods
.method public constructor <init>(Le/m/d/n/j/k/k;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/m/d/n/j/k/k$a;->d:Le/m/d/n/j/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/m/d/n/j/k/k$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-boolean p2, p0, Le/m/d/n/j/k/k$a;->c:Z

    .line 4
    new-instance p1, Le/m/d/n/j/k/d;

    if-eqz p2, :cond_0

    const/16 p2, 0x2000

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    :goto_0
    const/16 v0, 0x40

    .line 5
    invoke-direct {p1, v0, p2}, Le/m/d/n/j/k/d;-><init>(II)V

    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object p2, p0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    return-void
.end method
