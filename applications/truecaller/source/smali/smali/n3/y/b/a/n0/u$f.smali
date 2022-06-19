.class public final Ln3/y/b/a/n0/u$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/n0/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/n0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/b/a/n0/u;


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/u;Ln3/y/b/a/n0/u$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/n0/u$f;->a:Ln3/y/b/a/n0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/n0/u$f;->a:Ln3/y/b/a/n0/u;

    .line 2
    iget-object p2, p1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean p3, p2, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz p3, :cond_0

    .line 3
    iget-wide p3, p1, Ln3/y/b/a/n0/u;->u:J

    iget p2, p2, Ln3/y/b/a/n0/u$c;->b:I

    int-to-long p5, p2

    div-long/2addr p3, p5

    .line 4
    :cond_0
    invoke-virtual {p1}, Ln3/y/b/a/n0/u;->g()J

    return-void
.end method

.method public b(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/n0/u$f;->a:Ln3/y/b/a/n0/u;

    .line 2
    iget-object p2, p1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean p3, p2, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz p3, :cond_0

    .line 3
    iget-wide p3, p1, Ln3/y/b/a/n0/u;->u:J

    iget p2, p2, Ln3/y/b/a/n0/u$c;->b:I

    int-to-long p5, p2

    div-long/2addr p3, p5

    .line 4
    :cond_0
    invoke-virtual {p1}, Ln3/y/b/a/n0/u;->g()J

    return-void
.end method

.method public c(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u$f;->a:Ln3/y/b/a/n0/u;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/n0/u;->j:Ln3/y/b/a/n0/o$c;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Ln3/y/b/a/n0/u$f;->a:Ln3/y/b/a/n0/u;

    .line 4
    iget-wide v3, v2, Ln3/y/b/a/n0/u;->P:J

    sub-long v10, v0, v3

    .line 5
    iget-object v0, v2, Ln3/y/b/a/n0/u;->j:Ln3/y/b/a/n0/o$c;

    .line 6
    check-cast v0, Ln3/y/b/a/n0/x$b;

    .line 7
    iget-object v1, v0, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 8
    iget-object v6, v1, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 9
    iget-object v1, v6, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v6, Ln3/y/b/a/n0/n$a;->a:Landroid/os/Handler;

    new-instance v2, Ln3/y/b/a/n0/k;

    move-object v5, v2

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v5 .. v11}, Ln3/y/b/a/n0/k;-><init>(Ln3/y/b/a/n0/n$a;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    iget-object p1, v0, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 0

    return-void
.end method
