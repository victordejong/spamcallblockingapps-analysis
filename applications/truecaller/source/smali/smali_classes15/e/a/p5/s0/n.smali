.class public final Le/a/p5/s0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;IZLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/p5/s0/n;->a:Landroid/widget/ImageView;

    iput p2, p0, Le/a/p5/s0/n;->b:I

    iput-boolean p3, p0, Le/a/p5/s0/n;->c:Z

    iput-object p4, p0, Le/a/p5/s0/n;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p5/s0/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Le/a/p5/s0/n;->b:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Le/a/p5/s0/n;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/p5/s0/n;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 4
    invoke-static {v0, v1, v2}, Le/a/e/a2;->m(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/p5/s0/n;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6
    invoke-static {v0, v2, v1}, Le/a/e/a2;->m(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Le/a/p5/s0/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le/a/p5/s0/n;->a:Landroid/widget/ImageView;

    iget v1, p0, Le/a/p5/s0/n;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/p5/s0/n;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
