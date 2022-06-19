.class public final Le/a/a/f1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/d1/a;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/f1/a;->c:Lo3/a;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/a/a/f1/a;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Le/a/a/f1/a$a;

    invoke-direct {p1, p0}, Le/a/a/f1/a$a;-><init>(Le/a/a/f1/a;)V

    iput-object p1, p0, Le/a/a/f1/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "timestamp"

    .line 1
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/a/f1/a;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    const/4 v0, 0x5

    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/f1/a;->a:Landroid/os/Handler;

    iget-object v0, p0, Le/a/a/f1/a;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Le/a/a/f1/a;->a:Landroid/os/Handler;

    iget-object v0, p0, Le/a/a/f1/a;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
