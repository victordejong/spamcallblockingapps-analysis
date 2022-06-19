.class public Le/i/b/u2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/i/b/w1/c;

.field public final c:Le/i/b/s2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/s2/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/i/b/w1/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    .line 3
    new-instance v0, Le/i/b/s2/g;

    invoke-direct {v0}, Le/i/b/s2/g;-><init>()V

    iput-object v0, p0, Le/i/b/u2/y;->c:Le/i/b/s2/g;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Le/i/b/u2/y;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-object p1, p0, Le/i/b/u2/y;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Le/i/b/u2/y;->b:Le/i/b/w1/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/y;->b()V

    .line 2
    iget-object v0, p0, Le/i/b/u2/y;->c:Le/i/b/s2/g;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Le/i/b/u2/y$a;

    invoke-direct {v0, p0}, Le/i/b/u2/y$a;-><init>(Le/i/b/u2/y;)V

    .line 2
    new-instance v1, Le/i/b/u2/z;

    invoke-direct {v1, v0}, Le/i/b/u2/z;-><init>(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Le/i/b/u2/y;->b:Le/i/b/w1/c;

    .line 4
    iget-object v0, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
