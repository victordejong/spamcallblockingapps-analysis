.class public final synthetic Ln3/e/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/f1$h;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$a;

.field public final synthetic b:Ln3/e/b/j1/b0;

.field public final synthetic c:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$a;Ln3/e/b/j1/b0;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/e;->a:Landroidx/camera/view/PreviewView$a;

    iput-object p2, p0, Ln3/e/d/e;->b:Ln3/e/b/j1/b0;

    iput-object p3, p0, Ln3/e/d/e;->c:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/f1$g;)V
    .locals 10

    iget-object v0, p0, Ln3/e/d/e;->a:Landroidx/camera/view/PreviewView$a;

    iget-object v1, p0, Ln3/e/d/e;->b:Ln3/e/b/j1/b0;

    iget-object v2, p0, Ln3/e/d/e;->c:Ln3/e/b/f1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview transformation info updated. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "PreviewView"

    .line 3
    invoke-static {v5, v3, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {v1}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v1

    invoke-interface {v1}, Ln3/e/b/j1/z;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v3, v0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v3, v3, Landroidx/camera/view/PreviewView;->c:Ln3/e/d/u;

    .line 6
    iget-object v2, v2, Ln3/e/b/f1;->a:Landroid/util/Size;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transformation info set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PreviewTransform"

    .line 9
    invoke-static {v6, v5, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p1}, Ln3/e/b/f1$g;->a()Landroid/graphics/Rect;

    move-result-object v4

    .line 11
    const-class v5, Ln3/e/d/b0/a/a/b;

    invoke-static {v5}, Ln3/e/d/b0/a/a/a;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v5

    check-cast v5, Ln3/e/d/b0/a/a/b;

    if-eqz v5, :cond_1

    .line 12
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 13
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    .line 15
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 16
    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 17
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 18
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 19
    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 20
    :cond_1
    iput-object v4, v3, Ln3/e/d/u;->b:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1}, Ln3/e/b/f1$g;->a()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v3, Ln3/e/d/u;->c:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {p1}, Ln3/e/b/f1$g;->b()I

    move-result v4

    iput v4, v3, Ln3/e/d/u;->d:I

    .line 23
    invoke-virtual {p1}, Ln3/e/b/f1$g;->c()I

    move-result p1

    iput p1, v3, Ln3/e/d/u;->e:I

    .line 24
    iput-object v2, v3, Ln3/e/d/u;->a:Landroid/util/Size;

    .line 25
    iput-boolean v1, v3, Ln3/e/d/u;->f:Z

    .line 26
    iget-object p1, v0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroidx/camera/view/PreviewView;->a()V

    return-void
.end method
