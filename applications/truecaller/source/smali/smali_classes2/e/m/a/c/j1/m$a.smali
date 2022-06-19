.class public final Le/m/a/c/j1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/h0/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/j1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/j1/j$a;


# direct methods
.method public constructor <init>(Le/m/a/c/j1/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/j1/m$a;->a:Le/m/a/c/j1/j$a;

    return-void
.end method


# virtual methods
.method public a(JJJ)V
    .locals 1

    const-wide/16 p5, -0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_1

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float/2addr p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p5, -0x40800000    # -1.0f

    .line 1
    :goto_1
    iget-object p6, p0, Le/m/a/c/j1/m$a;->a:Le/m/a/c/j1/j$a;

    check-cast p6, Le/m/a/c/j1/g$e;

    .line 2
    iget-object v0, p6, Le/m/a/c/j1/g$e;->c:Le/m/a/c/j1/i;

    iput-wide p3, v0, Le/m/a/c/j1/i;->a:J

    .line 3
    iput p5, v0, Le/m/a/c/j1/i;->b:F

    .line 4
    iget-wide p3, p6, Le/m/a/c/j1/g$e;->i:J

    cmp-long p3, p1, p3

    if-eqz p3, :cond_2

    .line 5
    iput-wide p1, p6, Le/m/a/c/j1/g$e;->i:J

    .line 6
    iget-object p1, p6, Le/m/a/c/j1/g$e;->f:Le/m/a/c/j1/g$c;

    if-eqz p1, :cond_2

    const/16 p2, 0xa

    .line 7
    invoke-virtual {p1, p2, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method
