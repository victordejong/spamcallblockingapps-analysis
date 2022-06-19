.class public Ln3/y/e/k$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$m;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ln3/y/e/k$m;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->e:Ln3/y/e/k$s;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Ln3/y/e/k;->v:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Ln3/y/e/k;->m0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Landroidx/media2/widget/R$drawable;->media2_widget_ic_fullscreen_exit:I

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Ln3/y/e/k$m;->a:Ln3/y/e/k;

    iget-object v1, p1, Ln3/y/e/k;->O:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-static {p1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p1, Ln3/y/e/k;->m0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Landroidx/media2/widget/R$drawable;->media2_widget_ic_fullscreen:I

    .line 11
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Ln3/y/e/k$m;->a:Ln3/y/e/k;

    iget-object v1, p1, Ln3/y/e/k;->O:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    invoke-static {p1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :goto_0
    iget-object p1, p0, Ln3/y/e/k$m;->a:Ln3/y/e/k;

    iput-boolean v0, p1, Ln3/y/e/k;->v:Z

    .line 18
    iget-object v1, p1, Ln3/y/e/k;->e:Ln3/y/e/k$s;

    invoke-interface {v1, p1, v0}, Ln3/y/e/k$s;->a(Landroid/view/View;Z)V

    return-void
.end method
