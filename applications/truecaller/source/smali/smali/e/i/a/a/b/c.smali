.class public Le/i/a/a/b/c;
.super Landroid/graphics/drawable/LevelListDrawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/os/Handler;

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    iput-object p1, p0, Le/i/a/a/b/c;->a:Landroid/widget/ImageView;

    const/4 p1, 0x0

    iput p1, p0, Le/i/a/a/b/c;->d:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/i/a/a/b/c;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Le/i/a/a/b/c;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le/i/a/a/b/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Le/i/a/a/b/c;->d:I

    invoke-virtual {p0, v1, v1, v0}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    iget v0, p0, Le/i/a/a/b/c;->d:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget v0, p0, Le/i/a/a/b/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/i/a/a/b/c;->d:I

    .line 1
    :cond_1
    iget-object v0, p0, Le/i/a/a/b/c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Le/i/a/a/b/c;->b:Landroid/os/Handler;

    new-instance v1, Le/i/a/a/b/b;

    invoke-direct {v1, p0}, Le/i/a/a/b/b;-><init>(Le/i/a/a/b/c;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0}, Le/i/a/a/b/c;->a()V

    invoke-super {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
