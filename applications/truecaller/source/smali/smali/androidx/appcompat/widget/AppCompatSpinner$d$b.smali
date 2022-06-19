.class public Landroidx/appcompat/widget/AppCompatSpinner$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$d;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$d;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$d;->J:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Ln3/b/f/b0;->dismiss()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->r()V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->a:Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 9
    invoke-virtual {v0}, Ln3/b/f/b0;->show()V

    :goto_1
    return-void
.end method
