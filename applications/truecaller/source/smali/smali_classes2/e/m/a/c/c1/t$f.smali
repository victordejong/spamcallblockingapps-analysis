.class public final Le/m/a/c/c1/t$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/c1/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/c1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/c/c1/t;


# direct methods
.method public constructor <init>(Le/m/a/c/c1/t;Le/m/a/c/c1/t$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/c1/t$f;->a:Le/m/a/c/c1/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/c/c1/t$f;->a:Le/m/a/c/c1/t;

    .line 2
    iget-object p2, p1, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean p3, p2, Le/m/a/c/c1/t$c;->a:Z

    if-eqz p3, :cond_0

    iget-wide p3, p1, Le/m/a/c/c1/t;->u:J

    iget p2, p2, Le/m/a/c/c1/t$c;->b:I

    int-to-long p5, p2

    div-long/2addr p3, p5

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/a/c/c1/t;->g()J

    return-void
.end method

.method public b(JJJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/c/c1/t$f;->a:Le/m/a/c/c1/t;

    .line 2
    iget-object p2, p1, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean p3, p2, Le/m/a/c/c1/t$c;->a:Z

    if-eqz p3, :cond_0

    iget-wide p3, p1, Le/m/a/c/c1/t;->u:J

    iget p2, p2, Le/m/a/c/c1/t$c;->b:I

    int-to-long p5, p2

    div-long/2addr p3, p5

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/a/c/c1/t;->g()J

    return-void
.end method

.method public c(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t$f;->a:Le/m/a/c/c1/t;

    .line 2
    iget-object v0, v0, Le/m/a/c/c1/t;->j:Le/m/a/c/c1/n$c;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Le/m/a/c/c1/t$f;->a:Le/m/a/c/c1/t;

    .line 4
    iget-wide v3, v2, Le/m/a/c/c1/t;->P:J

    sub-long v10, v0, v3

    .line 5
    iget-object v0, v2, Le/m/a/c/c1/t;->j:Le/m/a/c/c1/n$c;

    .line 6
    check-cast v0, Le/m/a/c/c1/w$b;

    .line 7
    iget-object v1, v0, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 8
    iget-object v6, v1, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    .line 9
    iget-object v1, v6, Le/m/a/c/c1/m$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 10
    new-instance v2, Le/m/a/c/c1/b;

    move-object v5, v2

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v5 .. v11}, Le/m/a/c/c1/b;-><init>(Le/m/a/c/c1/m$a;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    iget-object p1, v0, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 0

    return-void
.end method
