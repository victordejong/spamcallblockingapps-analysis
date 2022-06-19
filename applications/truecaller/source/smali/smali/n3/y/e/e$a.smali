.class public Ln3/y/e/e$a;
.super Ln3/y/e/f;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/d$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/e$a$c;,
        Ln3/y/e/e$a$d;,
        Ln3/y/e/e$a$a;,
        Ln3/y/e/e$a$b;,
        Ln3/y/e/e$a$e;
    }
.end annotation


# instance fields
.field public final g:Ln3/y/e/e$a$a;


# direct methods
.method public constructor <init>(Ln3/y/e/e;Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, p1}, Ln3/y/e/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Ln3/y/e/e$a$a;

    iget-object p2, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast p2, Ln3/y/e/e$a$b;

    invoke-direct {p1, p0, p2}, Ln3/y/e/e$a$a;-><init>(Ln3/y/e/e$a;Ln3/y/e/e$a$b;)V

    iput-object p1, p0, Ln3/y/e/e$a;->g:Ln3/y/e/e$a$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/e/d$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/e$a;->g:Ln3/y/e/e$a$a;

    invoke-virtual {v0, p1}, Ln3/y/e/e$a$a;->d(Ln3/y/e/d$c;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 7
    iget-object p1, p0, Ln3/y/e/f;->d:Ln3/y/e/b0$b$a;

    if-eqz p1, :cond_0

    .line 8
    check-cast p1, Ln3/y/e/z$a;

    .line 9
    iget-object p1, p1, Ln3/y/e/z$a;->a:Ln3/y/e/z;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ln3/y/e/f$b;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/e/e$a$b;

    invoke-direct {v0, p0, p1}, Ln3/y/e/e$a$b;-><init>(Ln3/y/e/e$a;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
