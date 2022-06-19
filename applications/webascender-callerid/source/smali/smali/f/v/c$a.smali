.class Lf/v/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/c;->o(Landroid/view/ViewGroup;Lf/v/s;Lf/v/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F


# direct methods
.method constructor <init>(Lf/v/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/v/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lf/v/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lf/v/c$a;->c:Landroid/view/View;

    iput p5, p0, Lf/v/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lf/v/c0;->b(Landroid/view/View;)Lf/v/b0;

    move-result-object p1

    iget-object v0, p0, Lf/v/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lf/v/b0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lf/v/c$a;->c:Landroid/view/View;

    iget v0, p0, Lf/v/c$a;->d:F

    invoke-static {p1, v0}, Lf/v/c0;->g(Landroid/view/View;F)V

    return-void
.end method
