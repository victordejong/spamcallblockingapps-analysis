.class public Lcom/truecaller/flashsdk/ui/FlashButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/FlashButton$b;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/content/Context;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Landroid/graphics/PorterDuff$Mode;

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

.field public m:Landroid/view/View$OnClickListener;

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/flashsdk/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Lcom/truecaller/flashsdk/ui/FlashButton$a;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/FlashButton$a;-><init>(Lcom/truecaller/flashsdk/ui/FlashButton;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->n:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->getLayout()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->c:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->a:Landroid/os/Handler;

    .line 8
    sget v0, Lcom/truecaller/flashsdk/R$id;->flash_button_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->b:Landroid/widget/ImageView;

    .line 9
    sget-object v1, Lcom/truecaller/flashsdk/R$styleable;->flash_button:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/truecaller/flashsdk/R$styleable;->flash_button_normalColor:I

    const p3, -0xbbbbbc

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sget p3, Lcom/truecaller/flashsdk/R$styleable;->flash_button_tintModeAccent:I

    .line 11
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 12
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 13
    :cond_0
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 14
    :goto_0
    iput p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->h:I

    .line 15
    iput-object p3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->j:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-virtual {v0, p2, p3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    sget p2, Lcom/truecaller/flashsdk/R$styleable;->flash_button_disabledColor:I

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sget p3, Lcom/truecaller/flashsdk/R$styleable;->flash_button_tintModeProgress:I

    .line 18
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 19
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 20
    :cond_1
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 21
    :goto_1
    iput p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->i:I

    .line 22
    iput-object p3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 23
    sget p2, Lcom/truecaller/flashsdk/R$styleable;->flash_button_buttonColor:I

    const p3, -0xffff01

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/truecaller/flashsdk/ui/FlashButton;->setButtonColor(I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x8

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    .line 2
    iput-object p3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->g:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->f:Ljava/lang/String;

    .line 4
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object p1

    iget-wide p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/c/b;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object p1

    .line 5
    iget-wide p1, p1, Le/a/y/d/h;->b:J

    .line 6
    iput-wide p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->e:J

    .line 7
    sget-object p1, Le/a/y/d/l;->a:Landroid/net/Uri;

    iget-wide p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    :cond_0
    new-instance p2, Lcom/truecaller/flashsdk/ui/FlashButton$b;

    iget-object p3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->a:Landroid/os/Handler;

    invoke-direct {p2, p1, p3, p0}, Lcom/truecaller/flashsdk/ui/FlashButton$b;-><init>(Landroid/net/Uri;Landroid/os/Handler;Lcom/truecaller/flashsdk/ui/FlashButton;)V

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    .line 11
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    iget-object p4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->b()V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/c/b;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object v0

    .line 2
    iget-wide v0, v0, Le/a/y/d/h;->b:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->e:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 5
    iget-wide v4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->e:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->h:I

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->i:I

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    long-to-int v0, v2

    .line 10
    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/ui/FlashButton;->d(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/ui/FlashButton;->d(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->com_flashsdk_flash_button:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v1

    invoke-direct {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->f:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Le/a/y/c/b;->K(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->f:Ljava/lang/String;

    const-string v2, "flashContext"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v1

    const-string v2, "FlashTapped"

    invoke-interface {v1, v2, v0}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->d:J

    iget-object v6, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->f:Ljava/lang/String;

    const-wide/32 v8, 0xea60

    iget-wide v10, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->e:J

    sub-long/2addr v0, v10

    sub-long/2addr v8, v0

    invoke-interface/range {v2 .. v9}, Le/a/y/c/b;->l(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;J)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->l:Lcom/truecaller/flashsdk/ui/FlashButton$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public setAccentColor(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    iput p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->h:I

    .line 3
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->j:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setButtonColor(I)V
    .locals 0

    return-void
.end method

.method public setPostOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    iput p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->i:I

    .line 3
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method
