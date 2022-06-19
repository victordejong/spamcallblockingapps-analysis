.class public Le/m/a/c/d0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/c/d0;-><init>([Le/m/a/c/u0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/p1/f;Le/m/a/c/q1/f;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/c/d0;


# direct methods
.method public constructor <init>(Le/m/a/c/d0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/d0$a;->a:Le/m/a/c/d0;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget-object v0, p0, Le/m/a/c/d0$a;->a:Le/m/a/c/d0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_2

    .line 4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Le/m/a/c/o0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    .line 5
    iget p1, v0, Le/m/a/c/d0;->s:I

    add-int/2addr p1, v2

    iput p1, v0, Le/m/a/c/d0;->s:I

    .line 6
    :cond_1
    iget p1, v0, Le/m/a/c/d0;->s:I

    if-nez p1, :cond_8

    .line 7
    iget-object p1, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    invoke-virtual {p1, v1}, Le/m/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 8
    iput-object v1, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    .line 9
    new-instance p1, Le/m/a/c/b;

    invoke-direct {p1, v1}, Le/m/a/c/b;-><init>(Le/m/a/c/o0;)V

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    goto :goto_3

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 11
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Le/m/a/c/n0;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eq p1, v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    .line 12
    :goto_0
    iget v4, v0, Le/m/a/c/d0;->o:I

    sub-int/2addr v4, v1

    iput v4, v0, Le/m/a/c/d0;->o:I

    if-nez v4, :cond_8

    .line 13
    iget-wide v6, v5, Le/m/a/c/n0;->c:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-nez v1, :cond_5

    .line 14
    iget-object v6, v5, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    const-wide/16 v7, 0x0

    iget-wide v9, v5, Le/m/a/c/n0;->d:J

    iget-wide v11, v5, Le/m/a/c/n0;->l:J

    .line 15
    invoke-virtual/range {v5 .. v12}, Le/m/a/c/n0;->a(Le/m/a/c/l1/p$a;JJJ)Le/m/a/c/n0;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v5

    .line 16
    :goto_1
    iget-object v4, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v4, v4, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v4}, Le/m/a/c/y0;->p()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v4}, Le/m/a/c/y0;->p()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    iput v3, v0, Le/m/a/c/d0;->x:I

    .line 18
    iput v3, v0, Le/m/a/c/d0;->w:I

    const-wide/16 v4, 0x0

    .line 19
    iput-wide v4, v0, Le/m/a/c/d0;->y:J

    .line 20
    :cond_6
    iget-boolean v4, v0, Le/m/a/c/d0;->p:Z

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    .line 21
    :goto_2
    iget-boolean v5, v0, Le/m/a/c/d0;->q:Z

    .line 22
    iput-boolean v3, v0, Le/m/a/c/d0;->p:Z

    .line 23
    iput-boolean v3, v0, Le/m/a/c/d0;->q:Z

    move v3, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Le/m/a/c/d0;->h(Le/m/a/c/n0;ZIIZ)V

    :cond_8
    :goto_3
    return-void
.end method
