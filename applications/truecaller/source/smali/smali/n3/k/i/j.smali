.class public Ln3/k/i/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(FFZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/k/i/j;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->b1(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public b(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/k/i/j;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->c1(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public c(II[I[II)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Ln3/k/i/j;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0, p5}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_8

    .line 3
    aput v1, p4, v1

    .line 4
    aput v1, p4, v0

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 5
    iget-object v3, p0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    aget v3, p4, v1

    .line 7
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    move v8, v1

    move v9, v8

    :goto_1
    if-nez p3, :cond_5

    .line 8
    iget-object p3, p0, Ln3/k/i/j;->e:[I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 9
    iput-object p3, p0, Ln3/k/i/j;->e:[I

    .line 10
    :cond_4
    iget-object p3, p0, Ln3/k/i/j;->e:[I

    .line 11
    :cond_5
    aput v1, p3, v1

    .line 12
    aput v1, p3, v0

    .line 13
    iget-object v3, p0, Ln3/k/i/j;->c:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;->d1(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_6

    .line 14
    iget-object p1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 16
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 17
    :cond_6
    aget p1, p3, v1

    if-nez p1, :cond_7

    aget p1, p3, v0

    if-eqz p1, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    :goto_2
    return v1
.end method

.method public d(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Ln3/k/i/j;->e(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public final e(IIII[II[I)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    .line 1
    iget-boolean v2, v0, Ln3/k/i/j;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    move/from16 v2, p6

    .line 2
    invoke-virtual {p0, v2}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    const/4 v12, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_7

    .line 3
    aput v3, v1, v3

    .line 4
    aput v3, v1, v12

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget-object v5, v0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    aget v5, v1, v3

    .line 7
    aget v6, v1, v12

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_3
    move v13, v3

    move v14, v13

    :goto_1
    if-nez p7, :cond_5

    .line 8
    iget-object v5, v0, Ln3/k/i/j;->e:[I

    if-nez v5, :cond_4

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 9
    iput-object v5, v0, Ln3/k/i/j;->e:[I

    .line 10
    :cond_4
    iget-object v5, v0, Ln3/k/i/j;->e:[I

    .line 11
    aput v3, v5, v3

    .line 12
    aput v3, v5, v12

    move-object v11, v5

    goto :goto_2

    :cond_5
    move-object/from16 v11, p7

    .line 13
    :goto_2
    iget-object v5, v0, Ln3/k/i/j;->c:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, Landroid/support/v4/media/session/MediaSessionCompat;->e1(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_6

    .line 14
    iget-object v2, v0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    aget v2, v1, v3

    sub-int/2addr v2, v13

    aput v2, v1, v3

    .line 16
    aget v2, v1, v12

    sub-int/2addr v2, v14

    aput v2, v1, v12

    :cond_6
    return v12

    :cond_7
    :goto_3
    return v3
.end method

.method public final f(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Ln3/k/i/j;->b:Landroid/view/ViewParent;

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Ln3/k/i/j;->a:Landroid/view/ViewParent;

    return-object p1
.end method

.method public g(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(II)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget-boolean v0, p0, Ln3/k/i/j;->d:Z

    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, Ln3/k/i/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    iget-object v3, p0, Ln3/k/i/j;->c:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_a

    .line 5
    iget-object v4, p0, Ln3/k/i/j;->c:Landroid/view/View;

    .line 6
    instance-of v5, v0, Ln3/k/i/k;

    const-string v6, "ViewParent "

    if-eqz v5, :cond_2

    .line 7
    move-object v7, v0

    check-cast v7, Ln3/k/i/k;

    invoke-interface {v7, v3, v4, p1, p2}, Ln3/k/i/k;->A0(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 8
    :try_start_0
    invoke-interface {v0, v3, v4, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v4, :cond_8

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    iput-object v0, p0, Ln3/k/i/j;->b:Landroid/view/ViewParent;

    goto :goto_3

    .line 11
    :cond_5
    iput-object v0, p0, Ln3/k/i/j;->a:Landroid/view/ViewParent;

    .line 12
    :goto_3
    iget-object v1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 13
    check-cast v0, Ln3/k/i/k;

    invoke-interface {v0, v3, v1, p1, p2}, Ln3/k/i/k;->t(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    .line 14
    :try_start_1
    invoke-interface {v0, v3, v1, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 15
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    :goto_4
    return v2

    .line 16
    :cond_8
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_9

    .line 17
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 18
    :cond_9
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_a
    return v1
.end method

.method public i(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ln3/k/i/j;->f(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Ln3/k/i/j;->c:Landroid/view/View;

    .line 3
    instance-of v2, v0, Ln3/k/i/k;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Ln3/k/i/k;

    invoke-interface {v0, v1, p1}, Ln3/k/i/k;->u(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iput-object v0, p0, Ln3/k/i/j;->b:Landroid/view/ViewParent;

    goto :goto_1

    .line 8
    :cond_3
    iput-object v0, p0, Ln3/k/i/j;->a:Landroid/view/ViewParent;

    :cond_4
    :goto_1
    return-void
.end method
