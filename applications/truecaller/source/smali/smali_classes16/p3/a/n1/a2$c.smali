.class public final Lp3/a/n1/a2$c;
.super Lp3/a/i0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lp3/a/i0$h;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lp3/a/n1/a2;


# direct methods
.method public constructor <init>(Lp3/a/n1/a2;Lp3/a/i0$h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp3/a/n1/a2$c;->c:Lp3/a/n1/a2;

    invoke-direct {p0}, Lp3/a/i0$i;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lp3/a/n1/a2$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/a2$c;->a:Lp3/a/i0$h;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/i0$e;
    .locals 3

    .line 1
    iget-object p1, p0, Lp3/a/n1/a2$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp3/a/n1/a2$c;->c:Lp3/a/n1/a2;

    .line 3
    iget-object p1, p1, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    .line 4
    invoke-virtual {p1}, Lp3/a/i0$d;->c()Lp3/a/k1;

    move-result-object p1

    new-instance v0, Lp3/a/n1/a2$c$a;

    invoke-direct {v0, p0}, Lp3/a/n1/a2$c$a;-><init>(Lp3/a/n1/a2$c;)V

    .line 5
    iget-object v1, p1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lp3/a/k1;->a()V

    .line 7
    :cond_0
    sget-object p1, Lp3/a/i0$e;->e:Lp3/a/i0$e;

    return-object p1
.end method
