.class public Le/f/a/n/q/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/h/g$a;,
        Le/f/a/n/q/h/g$c;,
        Le/f/a/n/q/h/g$b;
    }
.end annotation


# instance fields
.field public final a:Le/f/a/l/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/n/q/h/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/f/a/i;

.field public final e:Le/f/a/n/o/b0/d;

.field public f:Z

.field public g:Z

.field public h:Le/f/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/f/a/n/q/h/g$a;

.field public j:Z

.field public k:Le/f/a/n/q/h/g$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Le/f/a/n/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/f/a/n/q/h/g$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Le/f/a/c;Le/f/a/l/a;IILe/f/a/n/m;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/c;",
            "Le/f/a/l/a;",
            "II",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/f/a/c;->b:Le/f/a/n/o/b0/d;

    .line 2
    iget-object v1, p1, Le/f/a/c;->d:Le/f/a/e;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v1

    .line 4
    iget-object p1, p1, Le/f/a/c;->d:Le/f/a/e;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Le/f/a/i;->f()Le/f/a/h;

    move-result-object p1

    sget-object v2, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    .line 7
    invoke-static {v2}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Le/f/a/r/a;->G(Z)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    .line 9
    invoke-virtual {v2, v3}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    .line 10
    invoke-virtual {v2, p3, p4}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p3

    .line 11
    invoke-virtual {p1, p3}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    .line 14
    iput-object v1, p0, Le/f/a/n/q/h/g;->d:Le/f/a/i;

    .line 15
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Le/f/a/n/q/h/g$c;

    invoke-direct {v1, p0}, Le/f/a/n/q/h/g$c;-><init>(Le/f/a/n/q/h/g;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    iput-object v0, p0, Le/f/a/n/q/h/g;->e:Le/f/a/n/o/b0/d;

    .line 17
    iput-object p3, p0, Le/f/a/n/q/h/g;->b:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Le/f/a/n/q/h/g;->h:Le/f/a/h;

    .line 19
    iput-object p2, p0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    .line 20
    invoke-virtual {p0, p5, p6}, Le/f/a/n/q/h/g;->c(Le/f/a/n/m;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/f/a/n/q/h/g;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Le/f/a/n/q/h/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Le/f/a/n/q/h/g;->n:Le/f/a/n/q/h/g$a;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/a/n/q/h/g;->n:Le/f/a/n/q/h/g$a;

    .line 4
    invoke-virtual {p0, v1}, Le/f/a/n/q/h/g;->b(Le/f/a/n/q/h/g$a;)V

    return-void

    .line 5
    :cond_1
    iput-boolean v0, p0, Le/f/a/n/q/h/g;->g:Z

    .line 6
    iget-object v0, p0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v0}, Le/f/a/l/a;->g()I

    move-result v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 8
    iget-object v0, p0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v0}, Le/f/a/l/a;->d()V

    .line 9
    new-instance v0, Le/f/a/n/q/h/g$a;

    iget-object v3, p0, Le/f/a/n/q/h/g;->b:Landroid/os/Handler;

    iget-object v4, p0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v4}, Le/f/a/l/a;->a()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Le/f/a/n/q/h/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Le/f/a/n/q/h/g;->k:Le/f/a/n/q/h/g$a;

    .line 10
    iget-object v0, p0, Le/f/a/n/q/h/g;->h:Le/f/a/h;

    .line 11
    new-instance v1, Le/f/a/s/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Le/f/a/s/d;-><init>(Ljava/lang/Object;)V

    .line 12
    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v2, v1}, Le/f/a/r/a;->z(Le/f/a/n/f;)Le/f/a/r/a;

    move-result-object v1

    check-cast v1, Le/f/a/r/h;

    .line 13
    invoke-virtual {v0, v1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v1, p0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-virtual {v0, v1}, Le/f/a/h;->U(Ljava/lang/Object;)Le/f/a/h;

    move-result-object v0

    iget-object v1, p0, Le/f/a/n/q/h/g;->k:Le/f/a/n/q/h/g$a;

    invoke-virtual {v0, v1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Le/f/a/n/q/h/g$a;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/f/a/n/q/h/g;->g:Z

    .line 2
    iget-boolean v0, p0, Le/f/a/n/q/h/g;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/f/a/n/q/h/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/f/a/n/q/h/g;->f:Z

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Le/f/a/n/q/h/g;->n:Le/f/a/n/q/h/g$a;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Le/f/a/n/q/h/g$a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Le/f/a/n/q/h/g;->e:Le/f/a/n/o/b0/d;

    invoke-interface {v2, v0}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    .line 11
    iput-object p1, p0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    .line 12
    iget-object p1, p0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/n/q/h/g$b;

    .line 14
    invoke-interface {v2}, Le/f/a/n/q/h/g$b;->a()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Le/f/a/n/q/h/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-virtual {p0}, Le/f/a/n/q/h/g;->a()V

    return-void
.end method

.method public c(Le/f/a/n/m;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le/f/a/n/q/h/g;->m:Le/f/a/n/m;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    .line 5
    iget-object v0, p0, Le/f/a/n/q/h/g;->h:Le/f/a/h;

    new-instance v1, Le/f/a/r/h;

    invoke-direct {v1}, Le/f/a/r/h;-><init>()V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, p1, v2}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    iput-object p1, p0, Le/f/a/n/q/h/g;->h:Le/f/a/h;

    .line 8
    invoke-static {p2}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Le/f/a/n/q/h/g;->o:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Le/f/a/n/q/h/g;->p:I

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Le/f/a/n/q/h/g;->q:I

    return-void
.end method
