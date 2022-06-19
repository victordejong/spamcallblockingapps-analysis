.class public Ln3/b/f/q$a;
.super Ln3/k/b/d/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b/f/q;->m(Landroid/content/Context;Ln3/b/f/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Ln3/b/f/q;


# direct methods
.method public constructor <init>(Ln3/b/f/q;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/q$a;->d:Ln3/b/f/q;

    iput p2, p0, Ln3/b/f/q$a;->a:I

    iput p3, p0, Ln3/b/f/q$a;->b:I

    iput-object p4, p0, Ln3/b/f/q$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ln3/k/b/d/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    iget v0, p0, Ln3/b/f/q$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    iget v1, p0, Ln3/b/f/q$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/b/f/q$a;->d:Ln3/b/f/q;

    iget-object v1, p0, Ln3/b/f/q$a;->c:Ljava/lang/ref/WeakReference;

    .line 5
    iget-boolean v2, v0, Ln3/b/f/q;->m:Z

    if-eqz v2, :cond_3

    .line 6
    iput-object p1, v0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 8
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget v2, v0, Ln3/b/f/q;->j:I

    .line 11
    new-instance v3, Ln3/b/f/r;

    invoke-direct {v3, v0, v1, p1, v2}, Ln3/b/f/r;-><init>(Ln3/b/f/q;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 12
    :cond_2
    iget v0, v0, Ln3/b/f/q;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
