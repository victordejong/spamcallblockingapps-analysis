.class public Le/a/z/l/b;
.super Le/a/z/l/a;
.source "SourceFile"


# instance fields
.field public final l:Landroidx/core/widget/NestedScrollView;

.field public m:J


# direct methods
.method public constructor <init>(Ln3/n/f;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Ln3/n/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x4

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Le/a/z/l/a;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Le/a/z/l/b;->m:J

    .line 4
    iget-object p1, p0, Le/a/z/l/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Le/a/z/l/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Le/a/z/l/b;->l:Landroidx/core/widget/NestedScrollView;

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Le/a/z/l/a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Le/a/z/l/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 11
    monitor-enter p0

    const-wide/16 p1, 0x40

    .line 12
    :try_start_0
    iput-wide p1, p0, Le/a/z/l/b;->m:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->g:Ljava/lang/CharSequence;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 5
    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->e:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->i:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

    .line 5
    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->j:Ljava/lang/CharSequence;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

    .line 5
    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public executeBindings()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Le/a/z/l/a;->e:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Le/a/z/l/a;->g:Ljava/lang/CharSequence;

    .line 7
    iget-object v6, p0, Le/a/z/l/a;->f:Ljava/lang/CharSequence;

    .line 8
    iget-object v7, p0, Le/a/z/l/a;->i:Landroid/view/View$OnClickListener;

    .line 9
    iget-object v8, p0, Le/a/z/l/a;->j:Ljava/lang/CharSequence;

    const-wide/16 v9, 0x41

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    const-wide/16 v10, 0x42

    and-long/2addr v10, v0

    cmp-long v10, v10, v2

    const-wide/16 v11, 0x44

    and-long/2addr v11, v0

    cmp-long v11, v11, v2

    const-wide/16 v12, 0x50

    and-long/2addr v12, v0

    cmp-long v12, v12, v2

    const-wide/16 v13, 0x60

    and-long/2addr v0, v13

    cmp-long v0, v0, v2

    if-eqz v12, :cond_0

    .line 10
    iget-object v1, p0, Le/a/z/l/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Le/a/z/l/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->u1(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v9, :cond_3

    .line 12
    iget-object v0, p0, Le/a/z/l/a;->b:Landroid/widget/ImageView;

    const-string v1, "imageView"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    if-eqz v10, :cond_4

    .line 16
    iget-object v0, p0, Le/a/z/l/a;->c:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->u1(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v11, :cond_5

    .line 17
    iget-object v0, p0, Le/a/z/l/a;->d:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->u1(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/z/l/a;->f:Ljava/lang/CharSequence;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 5
    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Le/a/z/l/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Le/a/z/l/b;->m:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Le/a/z/l/b;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Le/a/z/l/b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Le/a/z/l/b;->f(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Landroid/view/View$OnClickListener;

    .line 5
    iput-object p2, p0, Le/a/z/l/a;->h:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne v0, p1, :cond_4

    .line 6
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Le/a/z/l/b;->d(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xe

    if-ne v0, p1, :cond_5

    .line 7
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Le/a/z/l/b;->e(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
