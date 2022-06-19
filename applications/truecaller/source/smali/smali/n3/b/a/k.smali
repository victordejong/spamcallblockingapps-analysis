.class public Ln3/b/a/k;
.super Ln3/b/a/j;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/a/k$b;,
        Ln3/b/a/k$f;,
        Ln3/b/a/k$h;,
        Ln3/b/a/k$g;,
        Ln3/b/a/k$e;,
        Ln3/b/a/k$i;,
        Ln3/b/a/k$j;,
        Ln3/b/a/k$c;,
        Ln3/b/a/k$k;,
        Ln3/b/a/k$d;
    }
.end annotation


# static fields
.field public static final i0:Ln3/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j0:[I

.field public static final k0:Z

.field public static final l0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:[Ln3/b/a/k$j;

.field public J:Ln3/b/a/k$j;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Ln3/b/a/k$g;

.field public U:Ln3/b/a/k$g;

.field public V:Z

.field public W:I

.field public final X:Ljava/lang/Runnable;

.field public Y:Z

.field public Z:Landroid/graphics/Rect;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public e:Landroid/view/Window;

.field public f:Ln3/b/a/k$e;

.field public final g:Ln3/b/a/i;

.field public g0:Landroid/graphics/Rect;

.field public h:Ln3/b/a/a;

.field public h0:Ln3/b/a/r;

.field public i:Landroid/view/MenuInflater;

.field public j:Ljava/lang/CharSequence;

.field public k:Ln3/b/f/u;

.field public l:Ln3/b/a/k$c;

.field public m:Ln3/b/a/k$k;

.field public n:Ln3/b/e/a;

.field public o:Landroidx/appcompat/widget/ActionBarContextView;

.field public p:Landroid/widget/PopupWindow;

.field public q:Ljava/lang/Runnable;

.field public r:Ln3/k/i/z;

.field public s:Z

.field public t:Landroid/view/ViewGroup;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/view/View;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ln3/g/h;

    invoke-direct {v0}, Ln3/g/h;-><init>()V

    sput-object v0, Ln3/b/a/k;->i0:Ln3/g/h;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Ln3/b/a/k;->j0:[I

    .line 3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Ln3/b/a/k;->k0:Z

    .line 5
    sput-boolean v0, Ln3/b/a/k;->l0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ln3/b/a/i;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ln3/b/a/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/b/a/k;->r:Ln3/k/i/z;

    const/16 v1, -0x64

    .line 3
    iput v1, p0, Ln3/b/a/k;->P:I

    .line 4
    new-instance v2, Ln3/b/a/k$a;

    invoke-direct {v2, p0}, Ln3/b/a/k$a;-><init>(Ln3/b/a/k;)V

    iput-object v2, p0, Ln3/b/a/k;->X:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Ln3/b/a/k;->g:Ln3/b/a/i;

    .line 7
    iput-object p4, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    .line 8
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    instance-of p3, p1, Ln3/b/a/h;

    if-eqz p3, :cond_0

    .line 10
    check-cast p1, Ln3/b/a/h;

    goto :goto_1

    .line 11
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 12
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object p1

    invoke-virtual {p1}, Ln3/b/a/j;->g()I

    move-result p1

    iput p1, p0, Ln3/b/a/k;->P:I

    .line 14
    :cond_2
    iget p1, p0, Ln3/b/a/k;->P:I

    if-ne p1, v1, :cond_3

    .line 15
    sget-object p1, Ln3/b/a/k;->i0:Ln3/g/h;

    iget-object p3, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1, p3, v0}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Ln3/b/a/k;->P:I

    .line 19
    iget-object p3, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0, p2}, Ln3/b/a/k;->E(Landroid/view/Window;)V

    .line 21
    :cond_4
    invoke-static {}, Ln3/b/f/e;->e()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/b/a/k;->j:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ln3/b/f/u;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ln3/b/a/a;->z(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ln3/b/a/k;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public B(Ln3/b/e/a$a;)Ln3/b/e/a;
    .locals 7

    if-eqz p1, :cond_f

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/e/a;->c()V

    .line 3
    :cond_0
    new-instance v0, Ln3/b/a/k$d;

    invoke-direct {v0, p0, p1}, Ln3/b/a/k$d;-><init>(Ln3/b/a/k;Ln3/b/e/a$a;)V

    .line 4
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 5
    iget-object p1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ln3/b/a/a;->B(Ln3/b/e/a$a;)Ln3/b/e/a;

    move-result-object p1

    iput-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Ln3/b/a/k;->g:Ln3/b/a/i;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, p1}, Ln3/b/a/i;->onSupportActionModeStarted(Ln3/b/e/a;)V

    .line 9
    :cond_1
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-nez p1, :cond_e

    .line 10
    invoke-virtual {p0}, Ln3/b/a/k;->L()V

    .line 11
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ln3/b/e/a;->c()V

    .line 13
    :cond_2
    iget-object p1, p0, Ln3/b/a/k;->g:Ln3/b/a/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Ln3/b/a/k;->O:Z

    if-nez v2, :cond_3

    .line 14
    :try_start_0
    invoke-interface {p1, v0}, Ln3/b/a/i;->onWindowStartingSupportActionMode(Ln3/b/e/a$a;)Ln3/b/e/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 15
    iput-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    goto/16 :goto_5

    .line 16
    :cond_4
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_7

    .line 17
    iget-boolean p1, p0, Ln3/b/a/k;->B:Z

    if-eqz p1, :cond_6

    .line 18
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 19
    iget-object v4, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 20
    sget v5, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    .line 22
    iget-object v5, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 24
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 25
    new-instance v4, Ln3/b/e/c;

    iget-object v6, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v4}, Ln3/b/e/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object v4, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 28
    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    invoke-direct {v5, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v5, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 32
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 33
    iget-object v5, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    iget-object v6, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v5, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 38
    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 39
    iget-object v4, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 40
    iget-object p1, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    new-instance p1, Ln3/b/a/n;

    invoke-direct {p1, p0}, Ln3/b/a/n;-><init>(Ln3/b/a/k;)V

    iput-object p1, p0, Ln3/b/a/k;->q:Ljava/lang/Runnable;

    goto :goto_2

    .line 42
    :cond_6
    iget-object p1, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    sget v4, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {p0}, Ln3/b/a/k;->P()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 44
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 45
    :cond_7
    :goto_2
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_c

    .line 46
    invoke-virtual {p0}, Ln3/b/a/k;->L()V

    .line 47
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 48
    new-instance p1, Ln3/b/e/d;

    iget-object v4, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    invoke-direct {p1, v4, v5, v0, v3}, Ln3/b/e/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Ln3/b/e/a$a;Z)V

    .line 49
    iget-object v3, p1, Ln3/b/e/d;->h:Ln3/b/e/i/g;

    .line 50
    iget-object v0, v0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    invoke-interface {v0, p1, v3}, Ln3/b/e/a$a;->c9(Ln3/b/e/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    invoke-virtual {p1}, Ln3/b/e/d;->i()V

    .line 52
    iget-object v0, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Ln3/b/e/a;)V

    .line 53
    iput-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    .line 54
    invoke-virtual {p0}, Ln3/b/a/k;->Z()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    .line 55
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 56
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln3/k/i/z;->a(F)Ln3/k/i/z;

    iput-object p1, p0, Ln3/b/a/k;->r:Ln3/k/i/z;

    .line 57
    new-instance v0, Ln3/b/a/o;

    invoke-direct {v0, p0}, Ln3/b/a/o;-><init>(Ln3/b/a/k;)V

    .line 58
    iget-object v1, p1, Ln3/k/i/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_a

    .line 59
    invoke-virtual {p1, v1, v0}, Ln3/k/i/z;->e(Landroid/view/View;Ln3/k/i/a0;)V

    goto :goto_4

    .line 60
    :cond_9
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 61
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 63
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_a

    .line 64
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 65
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 67
    :cond_a
    :goto_4
    iget-object p1, p0, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_c

    .line 68
    iget-object p1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ln3/b/a/k;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 69
    :cond_b
    iput-object v1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    .line 70
    :cond_c
    :goto_5
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz p1, :cond_d

    iget-object v0, p0, Ln3/b/a/k;->g:Ln3/b/a/i;

    if-eqz v0, :cond_d

    .line 71
    invoke-interface {v0, p1}, Ln3/b/a/i;->onSupportActionModeStarted(Ln3/b/e/a;)V

    .line 72
    :cond_d
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    .line 73
    iput-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    .line 74
    :cond_e
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    return-object p1

    .line 75
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ln3/b/a/k;->D(Z)Z

    move-result v0

    return v0
.end method

.method public final D(Z)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Ln3/b/a/k;->P:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    iget-object v2, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Ln3/b/a/k;->V(Landroid/content/Context;I)I

    move-result v2

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    iget-object v4, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0, v4, v2, v5}, Ln3/b/a/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 7
    iget-boolean v6, p0, Ln3/b/a/k;->S:Z

    const/16 v7, 0x18

    const/4 v8, 0x1

    if-nez v6, :cond_6

    iget-object v6, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 8
    iget-object v6, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_4

    :cond_2
    const/16 v9, 0x1d

    if-lt v3, v9, :cond_3

    const/high16 v9, 0x100c0000

    goto :goto_1

    :cond_3
    if-lt v3, v7, :cond_4

    const/high16 v9, 0xc0000

    goto :goto_1

    :cond_4
    move v9, v1

    .line 9
    :goto_1
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    iget-object v12, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v6, v10, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 12
    iget v6, v6, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    move v6, v8

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    iput-boolean v6, p0, Ln3/b/a/k;->R:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 13
    :catch_0
    iput-boolean v1, p0, Ln3/b/a/k;->R:Z

    .line 14
    :cond_6
    :goto_3
    iput-boolean v8, p0, Ln3/b/a/k;->S:Z

    .line 15
    iget-boolean v6, p0, Ln3/b/a/k;->R:Z

    .line 16
    :goto_4
    iget-object v9, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    .line 17
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v10, 0x1c

    if-eq v9, v4, :cond_b

    if-eqz p1, :cond_b

    if-nez v6, :cond_b

    .line 18
    iget-boolean p1, p0, Ln3/b/a/k;->L:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Ln3/b/a/k;->k0:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Ln3/b/a/k;->M:Z

    if-eqz p1, :cond_b

    :cond_7
    iget-object p1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v11, p1, Landroid/app/Activity;

    if-eqz v11, :cond_b

    check-cast p1, Landroid/app/Activity;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_b

    .line 20
    iget-object p1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    .line 21
    sget v11, Ln3/k/a/b;->c:I

    if-lt v3, v10, :cond_8

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_5

    :cond_8
    const/16 v11, 0x17

    if-gt v3, v11, :cond_9

    .line 23
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    new-instance v12, Ln3/k/a/a;

    invoke-direct {v12, p1}, Ln3/k/a/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 25
    :cond_9
    invoke-static {p1}, Ln3/k/a/d;->b(Landroid/app/Activity;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_a
    :goto_5
    move p1, v8

    goto :goto_6

    :cond_b
    move p1, v1

    :goto_6
    if-nez p1, :cond_1a

    if-eq v9, v4, :cond_1a

    .line 27
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 28
    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, -0x31

    or-int/2addr v4, v11

    iput v4, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 30
    invoke-virtual {p1, v9, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_16

    if-lt v3, v10, :cond_c

    goto :goto_8

    :cond_c
    const-string v4, "mDrawableCache"

    if-lt v3, v7, :cond_12

    .line 31
    sget-boolean v3, Landroid/support/v4/media/session/MediaSessionCompat;->h:Z

    if-nez v3, :cond_d

    .line 32
    :try_start_1
    const-class v3, Landroid/content/res/Resources;

    const-string v7, "mResourcesImpl"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->g:Ljava/lang/reflect/Field;

    .line 33
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    sput-boolean v8, Landroid/support/v4/media/session/MediaSessionCompat;->h:Z

    .line 35
    :cond_d
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->g:Ljava/lang/reflect/Field;

    if-nez v3, :cond_e

    goto :goto_8

    .line 36
    :cond_e
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-object p1, v5

    :goto_7
    if-nez p1, :cond_f

    goto :goto_8

    .line 37
    :cond_f
    sget-boolean v3, Landroid/support/v4/media/session/MediaSessionCompat;->b:Z

    if-nez v3, :cond_10

    .line 38
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Ljava/lang/reflect/Field;

    .line 39
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 40
    :catch_3
    sput-boolean v8, Landroid/support/v4/media/session/MediaSessionCompat;->b:Z

    .line 41
    :cond_10
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_11

    .line 42
    :try_start_4
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_11
    if-eqz v5, :cond_16

    .line 43
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->c0(Ljava/lang/Object;)V

    goto :goto_8

    .line 44
    :cond_12
    sget-boolean v3, Landroid/support/v4/media/session/MediaSessionCompat;->b:Z

    if-nez v3, :cond_13

    .line 45
    :try_start_5
    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Ljava/lang/reflect/Field;

    .line 46
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 47
    :catch_5
    sput-boolean v8, Landroid/support/v4/media/session/MediaSessionCompat;->b:Z

    .line 48
    :cond_13
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_14

    .line 49
    :try_start_6
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_14
    if-nez v5, :cond_15

    goto :goto_8

    .line 50
    :cond_15
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->c0(Ljava/lang/Object;)V

    .line 51
    :cond_16
    :goto_8
    iget p1, p0, Ln3/b/a/k;->Q:I

    if-eqz p1, :cond_17

    .line 52
    iget-object v3, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->setTheme(I)V

    .line 53
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v3, p0, Ln3/b/a/k;->Q:I

    invoke-virtual {p1, v3, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_17
    if-eqz v6, :cond_1b

    .line 54
    iget-object p1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1b

    .line 55
    check-cast p1, Landroid/app/Activity;

    .line 56
    instance-of v3, p1, Ln3/v/b0;

    if-eqz v3, :cond_19

    .line 57
    move-object v3, p1

    check-cast v3, Ln3/v/b0;

    invoke-interface {v3}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v3

    .line 58
    check-cast v3, Ln3/v/c0;

    .line 59
    iget-object v3, v3, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 60
    sget-object v4, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_18

    move v1, v8

    :cond_18
    if-eqz v1, :cond_1b

    .line 62
    invoke-virtual {p1, v9}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    .line 63
    :cond_19
    iget-boolean v1, p0, Ln3/b/a/k;->N:Z

    if-eqz v1, :cond_1b

    .line 64
    invoke-virtual {p1, v9}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    :cond_1a
    move v8, p1

    :cond_1b
    :goto_9
    if-eqz v8, :cond_1c

    .line 65
    iget-object p1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, p1, Ln3/b/a/h;

    if-eqz v1, :cond_1c

    .line 66
    check-cast p1, Ln3/b/a/h;

    invoke-virtual {p1, v2}, Ln3/b/a/h;->onNightModeChanged(I)V

    :cond_1c
    if-nez v0, :cond_1d

    .line 67
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ln3/b/a/k;->Q(Landroid/content/Context;)Ln3/b/a/k$g;

    move-result-object p1

    invoke-virtual {p1}, Ln3/b/a/k$g;->e()V

    goto :goto_a

    .line 68
    :cond_1d
    iget-object p1, p0, Ln3/b/a/k;->T:Ln3/b/a/k$g;

    if-eqz p1, :cond_1e

    .line 69
    invoke-virtual {p1}, Ln3/b/a/k$g;->a()V

    :cond_1e
    :goto_a
    const/4 p1, 0x3

    if-ne v0, p1, :cond_20

    .line 70
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    if-nez v0, :cond_1f

    .line 72
    new-instance v0, Ln3/b/a/k$f;

    invoke-direct {v0, p0, p1}, Ln3/b/a/k$f;-><init>(Ln3/b/a/k;Landroid/content/Context;)V

    iput-object v0, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    .line 73
    :cond_1f
    iget-object p1, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    .line 74
    invoke-virtual {p1}, Ln3/b/a/k$g;->e()V

    goto :goto_b

    .line 75
    :cond_20
    iget-object p1, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    if-eqz p1, :cond_21

    .line 76
    invoke-virtual {p1}, Ln3/b/a/k$g;->a()V

    :cond_21
    :goto_b
    return v8
.end method

.method public final E(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ln3/b/a/k$e;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Ln3/b/a/k$e;

    invoke-direct {v1, p0, v0}, Ln3/b/a/k$e;-><init>(Ln3/b/a/k;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ln3/b/a/k;->j0:[I

    invoke-static {v0, v1, v2}, Ln3/b/f/r0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ln3/b/f/r0;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ln3/b/f/r0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_0
    iget-object v0, v0, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    iput-object p1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(ILn3/b/a/k$j;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object p3, p2, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-boolean p2, p2, Ln3/b/a/k$j;->m:Z

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Ln3/b/a/k;->O:Z

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 5
    iget-object p2, p2, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public G(Ln3/b/e/i/g;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/b/a/k;->D:Z

    .line 3
    iget-object v0, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {v0}, Ln3/b/f/u;->i()V

    .line 4
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Ln3/b/a/k;->O:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ln3/b/a/k;->D:Z

    return-void
.end method

.method public H(Ln3/b/a/k$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget v0, p1, Ln3/b/a/k$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/b/f/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {p0, p1}, Ln3/b/a/k;->G(Ln3/b/e/i/g;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p1, Ln3/b/a/k$j;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 7
    iget p2, p1, Ln3/b/a/k$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ln3/b/a/k;->F(ILn3/b/a/k$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Ln3/b/a/k$j;->k:Z

    .line 9
    iput-boolean p2, p1, Ln3/b/a/k$j;->l:Z

    .line 10
    iput-boolean p2, p1, Ln3/b/a/k$j;->m:Z

    .line 11
    iput-object v1, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Ln3/b/a/k$j;->o:Z

    .line 13
    iget-object p2, p0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    if-ne p2, p1, :cond_2

    .line 14
    iput-object v1, p0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    :cond_2
    return-void
.end method

.method public final I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 3
    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public J(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Ln3/k/i/f$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Ln3/b/a/p;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Ln3/k/i/f;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 6
    iget-object v0, v0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 11
    invoke-virtual {p0, v4}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 12
    iget-boolean v1, v0, Ln3/b/a/k$j;->m:Z

    if-nez v1, :cond_15

    .line 13
    invoke-virtual {p0, v0, p1}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Ln3/b/a/k;->K:Z

    :cond_7
    :goto_2
    move v2, v4

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_11

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 15
    :cond_9
    iget-object v0, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 16
    :cond_a
    invoke-virtual {p0, v4}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 17
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v1, :cond_c

    .line 18
    invoke-interface {v1}, Ln3/b/f/u;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 20
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {v1}, Ln3/b/f/u;->c()Z

    move-result v1

    if-nez v1, :cond_b

    .line 21
    iget-boolean v1, p0, Ln3/b/a/k;->O:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 22
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {p1}, Ln3/b/f/u;->b()Z

    move-result p1

    goto :goto_5

    .line 23
    :cond_b
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {p1}, Ln3/b/f/u;->d()Z

    move-result p1

    goto :goto_5

    .line 24
    :cond_c
    iget-boolean v1, v0, Ln3/b/a/k$j;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Ln3/b/a/k$j;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    .line 25
    :cond_d
    iget-boolean v1, v0, Ln3/b/a/k$j;->k:Z

    if-eqz v1, :cond_f

    .line 26
    iget-boolean v1, v0, Ln3/b/a/k$j;->p:Z

    if-eqz v1, :cond_e

    .line 27
    iput-boolean v4, v0, Ln3/b/a/k$j;->k:Z

    .line 28
    invoke-virtual {p0, v0, p1}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    move v1, v2

    :goto_3
    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0, v0, p1}, Ln3/b/a/k;->W(Ln3/b/a/k$j;Landroid/view/KeyEvent;)V

    move p1, v2

    goto :goto_5

    :cond_f
    move p1, v4

    goto :goto_5

    .line 30
    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_15

    .line 31
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_15

    .line 33
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    .line 34
    :cond_11
    iget-boolean p1, p0, Ln3/b/a/k;->K:Z

    .line 35
    iput-boolean v4, p0, Ln3/b/a/k;->K:Z

    .line 36
    invoke-virtual {p0, v4}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 37
    iget-boolean v1, v0, Ln3/b/a/k$j;->m:Z

    if-eqz v1, :cond_12

    if-nez p1, :cond_15

    .line 38
    invoke-virtual {p0, v0, v2}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    goto :goto_8

    .line 39
    :cond_12
    iget-object p1, p0, Ln3/b/a/k;->n:Ln3/b/e/a;

    if-eqz p1, :cond_13

    .line 40
    invoke-virtual {p1}, Ln3/b/e/a;->c()V

    goto :goto_6

    .line 41
    :cond_13
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 42
    iget-object p1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz p1, :cond_14

    .line 43
    invoke-virtual {p1}, Ln3/b/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    :goto_6
    move p1, v2

    goto :goto_7

    :cond_14
    move p1, v4

    :goto_7
    if-eqz p1, :cond_7

    :cond_15
    :goto_8
    return v2
.end method

.method public K(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v2, v1}, Ln3/b/e/i/g;->w(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    iput-object v1, v0, Ln3/b/a/k$j;->q:Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v1, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v1}, Ln3/b/e/i/g;->A()V

    .line 8
    iget-object v1, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v1}, Ln3/b/e/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Ln3/b/a/k$j;->p:Z

    .line 10
    iput-boolean v1, v0, Ln3/b/a/k$j;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 13
    iput-boolean p1, v0, Ln3/b/a/k$j;->k:Z

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->r:Ln3/k/i/z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/k/i/z;->b()V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->s:Z

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v5}, Ln3/b/a/k;->u(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Ln3/b/a/k;->u(I)Z

    .line 8
    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Ln3/b/a/k;->u(I)Z

    .line 10
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Ln3/b/a/k;->u(I)Z

    .line 12
    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ln3/b/a/k;->B:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Ln3/b/a/k;->N()V

    .line 15
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Ln3/b/a/k;->C:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 18
    iget-boolean v1, p0, Ln3/b/a/k;->B:Z

    if-eqz v1, :cond_4

    .line 19
    sget v1, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-boolean v3, p0, Ln3/b/a/k;->z:Z

    iput-boolean v3, p0, Ln3/b/a/k;->y:Z

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-boolean v0, p0, Ln3/b/a/k;->y:Z

    if-eqz v0, :cond_8

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Ln3/b/e/c;

    iget-object v7, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 27
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    .line 28
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    sget v1, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ln3/b/f/u;

    iput-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    .line 31
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Ln3/b/f/u;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 32
    iget-boolean v1, p0, Ln3/b/a/k;->z:Z

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {v1, v2}, Ln3/b/f/u;->h(I)V

    .line 34
    :cond_6
    iget-boolean v1, p0, Ln3/b/a/k;->w:Z

    if-eqz v1, :cond_7

    .line 35
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ln3/b/f/u;->h(I)V

    .line 36
    :cond_7
    iget-boolean v1, p0, Ln3/b/a/k;->x:Z

    if-eqz v1, :cond_b

    .line 37
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ln3/b/f/u;->h(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    .line 38
    :cond_9
    iget-boolean v1, p0, Ln3/b/a/k;->A:Z

    if-eqz v1, :cond_a

    .line 39
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    .line 40
    :cond_a
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_19

    .line 41
    new-instance v1, Ln3/b/a/l;

    invoke-direct {v1, p0}, Ln3/b/a/l;-><init>(Ln3/b/a/k;)V

    invoke-static {v0, v1}, Ln3/k/i/s;->r(Landroid/view/View;Ln3/k/i/n;)V

    .line 42
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-nez v1, :cond_c

    .line 43
    sget v1, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln3/b/a/k;->u:Landroid/widget/TextView;

    .line 44
    :cond_c
    sget-object v1, Ln3/b/f/x0;->a:Ljava/lang/reflect/Method;

    .line 45
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makeOptionalFitsSystemWindows"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_d

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_d
    new-array v2, v3, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    sget v1, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 50
    iget-object v2, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 51
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 54
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_e
    const/4 v8, -0x1

    .line 55
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 56
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 57
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    .line 58
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_f
    iget-object v2, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 60
    new-instance v2, Ln3/b/a/m;

    invoke-direct {v2, p0}, Ln3/b/a/m;-><init>(Ln3/b/a/k;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 61
    iput-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 63
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 64
    :cond_10
    iget-object v0, p0, Ln3/b/a/k;->j:Ljava/lang/CharSequence;

    .line 65
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 66
    iget-object v1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v1, :cond_11

    .line 67
    invoke-interface {v1, v0}, Ln3/b/f/u;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 68
    :cond_11
    iget-object v1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v1, :cond_12

    .line 69
    invoke-virtual {v1, v0}, Ln3/b/a/a;->z(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 70
    :cond_12
    iget-object v1, p0, Ln3/b/a/k;->u:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_13
    :goto_5
    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 73
    iget-object v1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 77
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 81
    :cond_14
    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 83
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 84
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 86
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 87
    :cond_15
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 89
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 90
    :cond_16
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 92
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 93
    :cond_17
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 95
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 96
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 98
    iput-boolean v5, p0, Ln3/b/a/k;->s:Z

    .line 99
    invoke-virtual {p0, v3}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Ln3/b/a/k;->O:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-nez v0, :cond_1b

    .line 101
    invoke-virtual {p0, v4}, Ln3/b/a/k;->U(I)V

    goto :goto_6

    .line 102
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b/a/k;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln3/b/a/k;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln3/b/a/k;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln3/b/a/k;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln3/b/a/k;->C:Z

    const-string v3, " }"

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_6
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/b/a/k;->E(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O(Landroid/view/Menu;)Ln3/b/a/k$j;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->E:[Ln3/b/a/k$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v3, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final P()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/a/a;->e()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final Q(Landroid/content/Context;)Ln3/b/a/k$g;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->T:Ln3/b/a/k$g;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ln3/b/a/k$h;

    .line 3
    sget-object v1, Ln3/b/a/u;->d:Ln3/b/a/u;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    new-instance v1, Ln3/b/a/u;

    const-string v2, "location"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Ln3/b/a/u;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Ln3/b/a/u;->d:Ln3/b/a/u;

    .line 7
    :cond_0
    sget-object p1, Ln3/b/a/u;->d:Ln3/b/a/u;

    .line 8
    invoke-direct {v0, p0, p1}, Ln3/b/a/k$h;-><init>(Ln3/b/a/k;Ln3/b/a/u;)V

    iput-object v0, p0, Ln3/b/a/k;->T:Ln3/b/a/k$g;

    .line 9
    :cond_1
    iget-object p1, p0, Ln3/b/a/k;->T:Ln3/b/a/k$g;

    return-object p1
.end method

.method public R(I)Ln3/b/a/k$j;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->E:[Ln3/b/a/k$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Ln3/b/a/k$j;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iput-object v1, p0, Ln3/b/a/k;->E:[Ln3/b/a/k$j;

    move-object v0, v1

    .line 5
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Ln3/b/a/k$j;

    invoke-direct {v1, p1}, Ln3/b/a/k$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final S()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final T()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-boolean v0, p0, Ln3/b/a/k;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Ln3/b/a/v;

    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Ln3/b/a/k;->z:Z

    invoke-direct {v0, v1, v2}, Ln3/b/a/v;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ln3/b/a/v;

    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Ln3/b/a/v;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Ln3/b/a/k;->Y:Z

    invoke-virtual {v0, v1}, Ln3/b/a/a;->m(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final U(I)V
    .locals 3

    .line 1
    iget v0, p0, Ln3/b/a/k;->W:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ln3/b/a/k;->W:I

    .line 2
    iget-boolean p1, p0, Ln3/b/a/k;->V:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ln3/b/a/k;->X:Ljava/lang/Runnable;

    .line 4
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6
    iput-boolean v1, p0, Ln3/b/a/k;->V:Z

    :cond_0
    return-void
.end method

.method public V(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ln3/b/a/k$f;

    invoke-direct {p2, p0, p1}, Ln3/b/a/k$f;-><init>(Ln3/b/a/k;Landroid/content/Context;)V

    iput-object p2, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    .line 4
    invoke-virtual {p1}, Ln3/b/a/k$g;->c()I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 8
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Ln3/b/a/k;->Q(Landroid/content/Context;)Ln3/b/a/k$g;

    move-result-object p1

    invoke-virtual {p1}, Ln3/b/a/k$g;->c()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final W(Ln3/b/a/k$j;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1
    iget-boolean v0, p1, Ln3/b/a/k$j;->m:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ln3/b/a/k;->O:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    iget v0, p1, Ln3/b/a/k$j;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Ln3/b/a/k$j;->a:I

    iget-object v4, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, v2}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0, p1, p2}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p2, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Ln3/b/a/k$j;->o:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object p2, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_19

    move v6, v3

    goto/16 :goto_a

    :cond_7
    :goto_1
    if-nez p2, :cond_a

    .line 14
    invoke-virtual {p0}, Ln3/b/a/k;->P()Landroid/content/Context;

    move-result-object p2

    .line 15
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 18
    sget v6, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 21
    :cond_8
    sget v6, Landroidx/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_9

    .line 23
    invoke-virtual {v5, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    .line 24
    :cond_9
    sget v3, Landroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v5, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 25
    :goto_2
    new-instance v3, Ln3/b/e/c;

    invoke-direct {v3, p2, v1}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v3}, Ln3/b/e/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 27
    iput-object v3, p1, Ln3/b/a/k$j;->j:Landroid/content/Context;

    .line 28
    sget-object p2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v3, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 29
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Ln3/b/a/k$j;->b:I

    .line 30
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Ln3/b/a/k$j;->d:I

    .line 31
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p2, Ln3/b/a/k$i;

    iget-object v3, p1, Ln3/b/a/k$j;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Ln3/b/a/k$i;-><init>(Ln3/b/a/k;Landroid/content/Context;)V

    iput-object p2, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 33
    iput p2, p1, Ln3/b/a/k$j;->c:I

    goto :goto_3

    .line 34
    :cond_a
    iget-boolean v3, p1, Ln3/b/a/k$j;->o:Z

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_b

    .line 35
    iget-object p2, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    :cond_b
    :goto_3
    iget-object p2, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_c

    .line 37
    iput-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    goto :goto_4

    .line 38
    :cond_c
    iget-object p2, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-nez p2, :cond_d

    goto :goto_5

    .line 39
    :cond_d
    iget-object p2, p0, Ln3/b/a/k;->m:Ln3/b/a/k$k;

    if-nez p2, :cond_e

    .line 40
    new-instance p2, Ln3/b/a/k$k;

    invoke-direct {p2, p0}, Ln3/b/a/k$k;-><init>(Ln3/b/a/k;)V

    iput-object p2, p0, Ln3/b/a/k;->m:Ln3/b/a/k$k;

    .line 41
    :cond_e
    iget-object p2, p0, Ln3/b/a/k;->m:Ln3/b/a/k$k;

    .line 42
    iget-object v3, p1, Ln3/b/a/k$j;->i:Ln3/b/e/i/e;

    if-nez v3, :cond_f

    .line 43
    new-instance v3, Ln3/b/e/i/e;

    iget-object v5, p1, Ln3/b/a/k$j;->j:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v3, v5, v6}, Ln3/b/e/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, p1, Ln3/b/a/k$j;->i:Ln3/b/e/i/e;

    .line 44
    iput-object p2, v3, Ln3/b/e/i/e;->f:Ln3/b/e/i/m$a;

    .line 45
    iget-object p2, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    .line 46
    iget-object v5, p2, Ln3/b/e/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v3, v5}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    .line 47
    :cond_f
    iget-object p2, p1, Ln3/b/a/k$j;->i:Ln3/b/e/i/e;

    iget-object v3, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    .line 48
    iget-object v5, p2, Ln3/b/e/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_11

    .line 49
    iget-object v5, p2, Ln3/b/e/i/e;->b:Landroid/view/LayoutInflater;

    sget v6, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, p2, Ln3/b/e/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 50
    iget-object v3, p2, Ln3/b/e/i/e;->g:Ln3/b/e/i/e$a;

    if-nez v3, :cond_10

    .line 51
    new-instance v3, Ln3/b/e/i/e$a;

    invoke-direct {v3, p2}, Ln3/b/e/i/e$a;-><init>(Ln3/b/e/i/e;)V

    iput-object v3, p2, Ln3/b/e/i/e;->g:Ln3/b/e/i/e$a;

    .line 52
    :cond_10
    iget-object v3, p2, Ln3/b/e/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Ln3/b/e/i/e;->g:Ln3/b/e/i/e$a;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v3, p2, Ln3/b/e/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v3, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    :cond_11
    iget-object p2, p2, Ln3/b/e/i/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 55
    iput-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    if-eqz p2, :cond_12

    :goto_4
    move p2, v2

    goto :goto_6

    :cond_12
    :goto_5
    move p2, v1

    :goto_6
    if-eqz p2, :cond_1a

    .line 56
    iget-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    if-nez p2, :cond_13

    goto :goto_8

    .line 57
    :cond_13
    iget-object p2, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_14

    goto :goto_7

    .line 58
    :cond_14
    iget-object p2, p1, Ln3/b/a/k$j;->i:Ln3/b/e/i/e;

    invoke-virtual {p2}, Ln3/b/e/i/e;->h()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Ln3/b/e/i/e$a;

    invoke-virtual {p2}, Ln3/b/e/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_15

    :goto_7
    move p2, v2

    goto :goto_9

    :cond_15
    :goto_8
    move p2, v1

    :goto_9
    if-nez p2, :cond_16

    goto :goto_b

    .line 59
    :cond_16
    iget-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_17

    .line 60
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    :cond_17
    iget v3, p1, Ln3/b/a/k$j;->b:I

    .line 62
    iget-object v5, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    iget-object v3, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 64
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    .line 65
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_18
    iget-object v3, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_19

    .line 68
    iget-object p2, p1, Ln3/b/a/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_19
    move v6, v4

    .line 69
    :goto_a
    iput-boolean v1, p1, Ln3/b/a/k$j;->l:Z

    .line 70
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 71
    iget v1, p1, Ln3/b/a/k$j;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    iget v1, p1, Ln3/b/a/k$j;->d:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 73
    iget-object v1, p1, Ln3/b/a/k$j;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iput-boolean v2, p1, Ln3/b/a/k$j;->m:Z

    return-void

    .line 75
    :cond_1a
    :goto_b
    iput-boolean v2, p1, Ln3/b/a/k$j;->o:Z

    :cond_1b
    :goto_c
    return-void
.end method

.method public final X(Ln3/b/a/k$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Ln3/b/a/k$j;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Ln3/b/e/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-nez p3, :cond_3

    .line 5
    invoke-virtual {p0, p1, p2}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    :cond_3
    return v1
.end method

.method public final Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Ln3/b/a/k$j;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Ln3/b/a/k$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    .line 7
    :cond_3
    iget v3, p1, Ln3/b/a/k$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 8
    iget-object v5, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v5}, Ln3/b/f/u;->f()V

    .line 10
    :cond_6
    iget-object v5, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 11
    iget-object v5, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    .line 12
    instance-of v5, v5, Ln3/b/a/s;

    if-nez v5, :cond_19

    .line 13
    :cond_7
    iget-object v5, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Ln3/b/a/k$j;->p:Z

    if-eqz v7, :cond_13

    :cond_8
    if-nez v5, :cond_e

    .line 14
    iget-object v5, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 15
    iget v7, p1, Ln3/b/a/k$j;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v4, :cond_d

    .line 16
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 18
    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 22
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 23
    sget v9, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 24
    :cond_a
    sget v8, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 25
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 27
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    .line 29
    new-instance v4, Ln3/b/e/c;

    invoke-direct {v4, v5, v1}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {v4}, Ln3/b/e/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    .line 31
    :cond_d
    new-instance v4, Ln3/b/e/i/g;

    invoke-direct {v4, v5}, Ln3/b/e/i/g;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p0, v4, Ln3/b/e/i/g;->e:Ln3/b/e/i/g$a;

    .line 33
    invoke-virtual {p1, v4}, Ln3/b/a/k$j;->a(Ln3/b/e/i/g;)V

    .line 34
    iget-object v4, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    .line 35
    iget-object v4, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz v4, :cond_10

    .line 36
    iget-object v5, p0, Ln3/b/a/k;->l:Ln3/b/a/k$c;

    if-nez v5, :cond_f

    .line 37
    new-instance v5, Ln3/b/a/k$c;

    invoke-direct {v5, p0}, Ln3/b/a/k$c;-><init>(Ln3/b/a/k;)V

    iput-object v5, p0, Ln3/b/a/k;->l:Ln3/b/a/k$c;

    .line 38
    :cond_f
    iget-object v5, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    iget-object v7, p0, Ln3/b/a/k;->l:Ln3/b/a/k$c;

    invoke-interface {v4, v5, v7}, Ln3/b/f/u;->e(Landroid/view/Menu;Ln3/b/e/i/m$a;)V

    .line 39
    :cond_10
    iget-object v4, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v4}, Ln3/b/e/i/g;->A()V

    .line 40
    iget v4, p1, Ln3/b/a/k$j;->a:I

    iget-object v5, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 41
    invoke-virtual {p1, v6}, Ln3/b/a/k$j;->a(Ln3/b/e/i/g;)V

    if-eqz v3, :cond_11

    .line 42
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz p1, :cond_11

    .line 43
    iget-object p2, p0, Ln3/b/a/k;->l:Ln3/b/a/k$c;

    invoke-interface {p1, v6, p2}, Ln3/b/f/u;->e(Landroid/view/Menu;Ln3/b/e/i/m$a;)V

    :cond_11
    return v1

    .line 44
    :cond_12
    iput-boolean v1, p1, Ln3/b/a/k$j;->p:Z

    .line 45
    :cond_13
    iget-object v4, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v4}, Ln3/b/e/i/g;->A()V

    .line 46
    iget-object v4, p1, Ln3/b/a/k$j;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    .line 47
    iget-object v5, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v5, v4}, Ln3/b/e/i/g;->v(Landroid/os/Bundle;)V

    .line 48
    iput-object v6, p1, Ln3/b/a/k$j;->q:Landroid/os/Bundle;

    .line 49
    :cond_14
    iget-object v4, p1, Ln3/b/a/k$j;->g:Landroid/view/View;

    iget-object v5, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    .line 50
    iget-object p2, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    if-eqz p2, :cond_15

    .line 51
    iget-object v0, p0, Ln3/b/a/k;->l:Ln3/b/a/k$c;

    invoke-interface {p2, v6, v0}, Ln3/b/f/u;->e(Landroid/view/Menu;Ln3/b/e/i/m$a;)V

    .line 52
    :cond_15
    iget-object p1, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {p1}, Ln3/b/e/i/g;->z()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    .line 54
    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    move p2, v2

    goto :goto_4

    :cond_18
    move p2, v1

    :goto_4
    iput-boolean p2, p1, Ln3/b/a/k$j;->n:Z

    .line 56
    iget-object v0, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {v0, p2}, Ln3/b/e/i/g;->setQwertyMode(Z)V

    .line 57
    iget-object p2, p1, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-virtual {p2}, Ln3/b/e/i/g;->z()V

    .line 58
    :cond_19
    iput-boolean v2, p1, Ln3/b/a/k$j;->k:Z

    .line 59
    iput-boolean v1, p1, Ln3/b/a/k$j;->l:Z

    .line 60
    iput-object p1, p0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    return v2
.end method

.method public final Z()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Ln3/b/a/k;->O:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/e/i/g;->k()Ln3/b/e/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/b/a/k;->O(Landroid/view/Menu;)Ln3/b/a/k$j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Ln3/b/a/k$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ln3/b/e/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ln3/b/f/u;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    .line 3
    invoke-interface {p1}, Ln3/b/f/u;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object p1

    .line 5
    iget-object v2, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {v2}, Ln3/b/f/u;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {v0}, Ln3/b/f/u;->d()Z

    .line 7
    iget-boolean v0, p0, Ln3/b/a/k;->O:Z

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, v1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 9
    iget-object v0, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 10
    iget-boolean v2, p0, Ln3/b/a/k;->O:Z

    if-nez v2, :cond_4

    .line 11
    iget-boolean v2, p0, Ln3/b/a/k;->V:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ln3/b/a/k;->W:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ln3/b/a/k;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Ln3/b/a/k;->X:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 15
    iget-object v2, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Ln3/b/a/k$j;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Ln3/b/a/k$j;->g:Landroid/view/View;

    .line 16
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Ln3/b/a/k;->k:Ln3/b/f/u;

    invoke-interface {p1}, Ln3/b/f/u;->b()Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object p1

    .line 20
    iput-boolean v0, p1, Ln3/b/a/k$j;->o:Z

    .line 21
    invoke-virtual {p0, p1, v1}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Ln3/b/a/k;->W(Ln3/b/a/k$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b0(Ln3/k/i/d0;Landroid/graphics/Rect;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Ln3/k/i/d0;->f()I

    move-result p2

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_10

    .line 4
    iget-object v0, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v3, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    .line 7
    iget-object v3, p0, Ln3/b/a/k;->Z:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Ln3/b/a/k;->Z:Landroid/graphics/Rect;

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Ln3/b/a/k;->g0:Landroid/graphics/Rect;

    .line 10
    :cond_0
    iget-object v3, p0, Ln3/b/a/k;->Z:Landroid/graphics/Rect;

    .line 11
    iget-object v5, p0, Ln3/b/a/k;->g0:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1}, Ln3/k/i/d0;->d()I

    move-result v6

    .line 13
    invoke-virtual {p1}, Ln3/k/i/d0;->f()I

    move-result v7

    .line 14
    invoke-virtual {p1}, Ln3/k/i/d0;->e()I

    move-result v8

    .line 15
    invoke-virtual {p1}, Ln3/k/i/d0;->c()I

    move-result p1

    .line 16
    invoke-virtual {v3, v6, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object p1, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    .line 18
    sget-object v6, Ln3/b/f/x0;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v5, v7, v4

    .line 19
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_1
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 21
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 22
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 23
    iget-object v6, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    invoke-static {v6}, Ln3/k/i/s;->i(Landroid/view/View;)Ln3/k/i/d0;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v2

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v6}, Ln3/k/i/d0;->d()I

    move-result v7

    :goto_0
    if-nez v6, :cond_3

    move v6, v2

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v6}, Ln3/k/i/d0;->e()I

    move-result v6

    .line 26
    :goto_1
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v5, :cond_5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    .line 27
    :cond_5
    :goto_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v4

    :goto_3
    if-lez p1, :cond_6

    .line 30
    iget-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    if-nez p1, :cond_6

    .line 31
    new-instance p1, Landroid/view/View;

    iget-object v5, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-direct {p1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 35
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 36
    iget-object v5, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    iget-object v6, p0, Ln3/b/a/k;->v:Landroid/view/View;

    invoke-virtual {v5, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 37
    :cond_6
    iget-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v5, v8, :cond_7

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, v7, :cond_7

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v5, v6, :cond_8

    .line 40
    :cond_7
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 41
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    iget-object v5, p0, Ln3/b/a/k;->v:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_8
    :goto_4
    iget-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    if-eqz p1, :cond_9

    move v5, v4

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    if-eqz v5, :cond_c

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    .line 46
    iget-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    .line 47
    sget-object v6, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    move v4, v2

    :goto_6
    if-eqz v4, :cond_b

    .line 49
    iget-object v4, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$color;->abc_decor_view_status_guard_light:I

    .line 50
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 51
    invoke-static {v4, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    goto :goto_7

    .line 52
    :cond_b
    iget-object v4, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$color;->abc_decor_view_status_guard:I

    .line 53
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 54
    invoke-static {v4, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 55
    :goto_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    :cond_c
    iget-boolean p1, p0, Ln3/b/a/k;->A:Z

    if-nez p1, :cond_d

    if-eqz v5, :cond_d

    move p2, v2

    :cond_d
    move v4, v3

    goto :goto_8

    .line 57
    :cond_e
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_f

    .line 58
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v5, v2

    goto :goto_8

    :cond_f
    move v4, v2

    move v5, v4

    :goto_8
    if-eqz v4, :cond_11

    .line 59
    iget-object p1, p0, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_10
    move v5, v2

    .line 60
    :cond_11
    :goto_9
    iget-object p1, p0, Ln3/b/a/k;->v:Landroid/view/View;

    if-eqz p1, :cond_13

    if-eqz v5, :cond_12

    move v1, v2

    .line 61
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return p2
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 5
    iget-object p1, p1, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ln3/b/a/k;->L:Z

    .line 2
    iget v2, p0, Ln3/b/a/k;->P:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v2}, Ln3/b/a/k;->V(Landroid/content/Context;I)I

    move-result v2

    .line 4
    sget-boolean v3, Ln3/b/a/k;->l0:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, p1, v2, v4}, Ln3/b/a/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 6
    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    .line 7
    invoke-virtual {v5, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    :cond_1
    instance-of v3, p1, Ln3/b/e/c;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p0, p1, v2, v4}, Ln3/b/a/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 10
    :try_start_1
    move-object v5, p1

    check-cast v5, Ln3/b/e/c;

    invoke-virtual {v5, v3}, Ln3/b/e/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 11
    :catch_1
    :cond_2
    sget-boolean v3, Ln3/b/a/k;->k0:Z

    if-nez v3, :cond_3

    return-object p1

    .line 12
    :cond_3
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, -0x1

    .line 13
    iput v5, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    .line 14
    iput v5, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 18
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 20
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    iput v5, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 23
    :cond_4
    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    .line 24
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 25
    :cond_5
    iget v5, v3, Landroid/content/res/Configuration;->mcc:I

    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v5, v8, :cond_6

    .line 26
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 27
    :cond_6
    iget v5, v3, Landroid/content/res/Configuration;->mnc:I

    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v5, v8, :cond_7

    .line 28
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v5, 0x18

    if-lt v0, v5, :cond_8

    .line 29
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 30
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    .line 31
    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 32
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 33
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 34
    :cond_8
    iget-object v5, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 36
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 37
    :cond_9
    :goto_1
    iget v5, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v5, v8, :cond_a

    .line 38
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 39
    :cond_a
    iget v5, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v8, :cond_b

    .line 40
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 41
    :cond_b
    iget v5, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v5, v8, :cond_c

    .line 42
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 43
    :cond_c
    iget v5, v3, Landroid/content/res/Configuration;->navigation:I

    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v5, v8, :cond_d

    .line 44
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 45
    :cond_d
    iget v5, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v5, v8, :cond_e

    .line 46
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 47
    :cond_e
    iget v5, v3, Landroid/content/res/Configuration;->orientation:I

    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v8, :cond_f

    .line 48
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 49
    :cond_f
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_10

    .line 50
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 51
    :cond_10
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v5, v8, :cond_11

    .line 52
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 53
    :cond_11
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_12

    .line 54
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 55
    :cond_12
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v5, v8, :cond_13

    .line 56
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v5, 0x1a

    if-lt v0, v5, :cond_15

    .line 57
    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0x3

    if-eq v5, v8, :cond_14

    .line 58
    iget v5, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 59
    :cond_14
    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0xc

    if-eq v5, v8, :cond_15

    .line 60
    iget v5, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 61
    :cond_15
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_16

    .line 62
    iget v5, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 63
    :cond_16
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_17

    .line 64
    iget v5, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 65
    :cond_17
    iget v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v5, v8, :cond_18

    .line 66
    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 67
    :cond_18
    iget v5, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v8, :cond_19

    .line 68
    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 69
    :cond_19
    iget v5, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v5, v8, :cond_1a

    .line 70
    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 71
    :cond_1a
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v5, :cond_1c

    .line 72
    iput v5, v7, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v7, v4

    .line 73
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v2, v7}, Ln3/b/a/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 74
    new-instance v3, Ln3/b/e/c;

    sget v5, Landroidx/appcompat/R$style;->Theme_AppCompat_Empty:I

    invoke-direct {v3, p1, v5}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v3, v2}, Ln3/b/e/c;->a(Landroid/content/res/Configuration;)V

    const/4 v2, 0x0

    .line 76
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1d

    move p1, v1

    goto :goto_3

    :catch_2
    :cond_1d
    move p1, v2

    :goto_3
    if-eqz p1, :cond_21

    .line 77
    invoke-virtual {v3}, Ln3/b/e/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_1e

    .line 78
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_5

    .line 79
    :cond_1e
    sget-object v0, Ln3/k/b/d/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-boolean v5, Ln3/k/b/d/i;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1f

    .line 81
    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Ln3/k/b/d/i;->b:Ljava/lang/reflect/Method;

    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :catch_3
    :try_start_5
    sput-boolean v1, Ln3/k/b/d/i;->c:Z

    .line 84
    :cond_1f
    sget-object v1, Ln3/k/b/d/i;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_20

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 86
    :catch_4
    :try_start_7
    sput-object v4, Ln3/k/b/d/i;->b:Ljava/lang/reflect/Method;

    .line 87
    :cond_20
    :goto_4
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_21
    :goto_5
    return-object v3
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ln3/b/a/c$a;
    .locals 1

    .line 1
    new-instance v0, Ln3/b/a/k$b;

    invoke-direct {v0, p0}, Ln3/b/a/k$b;-><init>(Ln3/b/a/k;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/a/k;->P:I

    return v0
.end method

.method public h()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 3
    new-instance v0, Ln3/b/e/f;

    .line 4
    iget-object v1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln3/b/a/a;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Ln3/b/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/b/a/k;->i:Landroid/view/MenuInflater;

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/b/a/k;->i:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public i()Ln3/b/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Ln3/b/a/k;

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ln3/b/a/k;->U(I)V

    return-void
.end method

.method public l(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/b/a/k;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ln3/b/a/k;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/b/a/a;->h(Landroid/content/res/Configuration;)V

    .line 5
    :cond_0
    invoke-static {}, Ln3/b/f/e;->a()Ln3/b/f/e;

    move-result-object p1

    iget-object v0, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v1, p1, Ln3/b/f/e;->a:Ln3/b/f/h0;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, v1, Ln3/b/f/h0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/g/e;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ln3/g/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p1

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Ln3/b/a/k;->D(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ln3/b/a/k;->L:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ln3/b/a/k;->D(Z)Z

    .line 3
    invoke-virtual {p0}, Ln3/b/a/k;->N()V

    .line 4
    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->s0(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-nez v0, :cond_0

    .line 7
    iput-boolean p1, p0, Ln3/b/a/k;->Y:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ln3/b/a/a;->m(Z)V

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Ln3/b/a/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_1
    invoke-static {p0}, Ln3/b/a/j;->t(Ln3/b/a/j;)V

    .line 11
    sget-object v1, Ln3/b/a/j;->a:Ln3/g/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ln3/g/c;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_2
    :goto_1
    iput-boolean p1, p0, Ln3/b/a/k;->M:Z

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    sget-object v0, Ln3/b/a/k;->i0:Ln3/g/h;

    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Ln3/b/a/j;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {p0}, Ln3/b/a/j;->t(Ln3/b/a/j;)V

    .line 4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5
    :cond_0
    :goto_0
    iget-boolean v1, p0, Ln3/b/a/k;->V:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ln3/b/a/k;->X:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Ln3/b/a/k;->N:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ln3/b/a/k;->O:Z

    .line 9
    iget v1, p0, Ln3/b/a/k;->P:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/b/a/k;->P:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_1
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ln3/b/a/a;->i()V

    .line 15
    :cond_3
    iget-object v0, p0, Ln3/b/a/k;->T:Ln3/b/a/k$g;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Ln3/b/a/k$g;->a()V

    .line 17
    :cond_4
    iget-object v0, p0, Ln3/b/a/k;->U:Ln3/b/a/k$g;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Ln3/b/a/k$g;->a()V

    :cond_5
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p1, p0, Ln3/b/a/k;->h0:Ln3/b/a/r;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ln3/b/a/r;

    invoke-direct {p1}, Ln3/b/a/r;-><init>()V

    iput-object p1, p0, Ln3/b/a/k;->h0:Ln3/b/a/r;

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/b/a/r;

    iput-object p1, p0, Ln3/b/a/k;->h0:Ln3/b/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    new-instance p1, Ln3/b/a/r;

    invoke-direct {p1}, Ln3/b/a/r;-><init>()V

    iput-object p1, p0, Ln3/b/a/k;->h0:Ln3/b/a/r;

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Ln3/b/a/k;->h0:Ln3/b/a/r;

    .line 11
    sget-boolean v1, Ln3/b/f/w0;->a:Z

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Landroidx/appcompat/R$styleable;->View:[I

    invoke-virtual {p3, p4, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 14
    sget v2, Landroidx/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_3

    .line 16
    instance-of v1, p3, Ln3/b/e/c;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Ln3/b/e/c;

    .line 17
    iget v1, v1, Ln3/b/e/c;->a:I

    if-eq v1, v2, :cond_3

    .line 18
    :cond_2
    new-instance v1, Ln3/b/e/c;

    invoke-direct {v1, p3, v2}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move-object v1, p3

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_2
    move v2, v3

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "ToggleButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_8
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    const-string v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_a
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_b
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_2

    :cond_10
    move v2, v4

    goto :goto_3

    :sswitch_d
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_2

    :cond_11
    move v2, v0

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 20
    invoke-virtual {p1}, Ln3/b/a/r;->f()Landroid/view/View;

    move-result-object v2

    goto/16 :goto_4

    .line 21
    :pswitch_0
    invoke-virtual {p1, v1, p4}, Ln3/b/a/r;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 23
    :pswitch_1
    new-instance v2, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v2, v1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 25
    :pswitch_2
    invoke-virtual {p1, v1, p4}, Ln3/b/a/r;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v2

    .line 26
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {p1, v1, p4}, Ln3/b/a/r;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v2

    .line 28
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_4
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v2, v1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 31
    :pswitch_5
    new-instance v2, Ln3/b/f/t;

    invoke-direct {v2, v1, p4}, Ln3/b/f/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :pswitch_6
    invoke-virtual {p1, v1, p4}, Ln3/b/a/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Ln3/b/f/j;

    move-result-object v2

    .line 34
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :pswitch_7
    new-instance v2, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v2, v1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :pswitch_8
    new-instance v2, Ln3/b/f/m;

    invoke-direct {v2, v1, p4}, Ln3/b/f/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :pswitch_9
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v2, v1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 41
    :pswitch_a
    invoke-virtual {p1, v1, p4}, Ln3/b/a/r;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    .line 42
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :pswitch_b
    new-instance v2, Ln3/b/f/g;

    invoke-direct {v2, v1, p4}, Ln3/b/f/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 45
    :pswitch_c
    new-instance v2, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v2, v1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 47
    :pswitch_d
    new-instance v2, Ln3/b/f/k;

    invoke-direct {v2, v1, p4}, Ln3/b/f/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p1, v2, p2}, Ln3/b/a/r;->h(Landroid/view/View;Ljava/lang/String;)V

    :goto_4
    if-nez v2, :cond_16

    if-eq p3, v1, :cond_16

    const-string p3, "view"

    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_12

    const-string p2, "class"

    .line 50
    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_12
    :try_start_1
    iget-object p3, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v1, p3, v0

    .line 52
    aput-object p4, p3, v4

    const/16 p3, 0x2e

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v3, p3, :cond_15

    move p3, v0

    .line 54
    :goto_5
    sget-object v3, Ln3/b/a/r;->d:[Ljava/lang/String;

    array-length v5, v3

    if-ge p3, v5, :cond_14

    .line 55
    aget-object v3, v3, p3

    invoke-virtual {p1, v1, p2, v3}, Ln3/b/a/r;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_13

    .line 56
    iget-object p1, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 57
    aput-object v2, p1, v4

    move-object v2, v3

    goto :goto_6

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 58
    :cond_14
    iget-object p1, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 59
    aput-object v2, p1, v4

    goto :goto_6

    .line 60
    :cond_15
    :try_start_2
    invoke-virtual {p1, v1, p2, v2}, Ln3/b/a/r;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    iget-object p1, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 62
    aput-object v2, p1, v4

    move-object v2, p2

    goto :goto_6

    :catchall_1
    move-exception p2

    .line 63
    iget-object p1, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 64
    aput-object v2, p1, v4

    .line 65
    throw p2

    .line 66
    :catch_0
    iget-object p1, p1, Ln3/b/a/r;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 67
    aput-object v2, p1, v4

    :cond_16
    :goto_6
    if-eqz v2, :cond_19

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_19

    .line 70
    sget-object p2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_7

    .line 72
    :cond_17
    sget-object p2, Ln3/b/a/r;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 74
    new-instance p3, Ln3/b/a/r$a;

    invoke-direct {p3, v2, p2}, Ln3/b/a/r$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    :goto_7
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, p2, p3}, Ln3/b/a/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/a;->v(Z)V

    :cond_0
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/a/k;->N:Z

    .line 2
    invoke-virtual {p0}, Ln3/b/a/k;->C()Z

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/b/a/k;->N:Z

    .line 2
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Ln3/b/a/a;->v(Z)V

    :cond_0
    return-void
.end method

.method public u(I)Z
    .locals 5

    const/16 v0, 0x8

    const/16 v1, 0x6d

    const/16 v2, 0x6c

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ln3/b/a/k;->C:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    return v3

    .line 2
    :cond_2
    iget-boolean v0, p0, Ln3/b/a/k;->y:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 3
    iput-boolean v3, p0, Ln3/b/a/k;->y:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    .line 4
    iget-object v0, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 5
    :cond_4
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 6
    iput-boolean v4, p0, Ln3/b/a/k;->z:Z

    return v4

    .line 7
    :cond_5
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 8
    iput-boolean v4, p0, Ln3/b/a/k;->y:Z

    return v4

    .line 9
    :cond_6
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 10
    iput-boolean v4, p0, Ln3/b/a/k;->A:Z

    return v4

    .line 11
    :cond_7
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 12
    iput-boolean v4, p0, Ln3/b/a/k;->x:Z

    return v4

    .line 13
    :cond_8
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 14
    iput-boolean v4, p0, Ln3/b/a/k;->w:Z

    return v4

    .line 15
    :cond_9
    invoke-virtual {p0}, Ln3/b/a/k;->a0()V

    .line 16
    iput-boolean v4, p0, Ln3/b/a/k;->C:Z

    return v4
.end method

.method public v(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 6
    iget-object p1, p1, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 6
    iget-object p1, p1, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/k;->M()V

    .line 2
    iget-object v0, p0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    .line 6
    iget-object p1, p1, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public y(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    .line 4
    instance-of v1, v0, Ln3/b/a/v;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ln3/b/a/k;->i:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ln3/b/a/a;->i()V

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    new-instance v0, Ln3/b/a/s;

    .line 8
    iget-object v1, p0, Ln3/b/a/k;->c:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 9
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Ln3/b/a/k;->j:Ljava/lang/CharSequence;

    .line 11
    :goto_0
    iget-object v2, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    invoke-direct {v0, p1, v1, v2}, Ln3/b/a/s;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 12
    iput-object v0, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    .line 13
    iget-object p1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    .line 14
    iget-object v0, v0, Ln3/b/a/s;->c:Landroid/view/Window$Callback;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    .line 16
    :cond_3
    iput-object v1, p0, Ln3/b/a/k;->h:Ln3/b/a/a;

    .line 17
    iget-object p1, p0, Ln3/b/a/k;->e:Landroid/view/Window;

    iget-object v0, p0, Ln3/b/a/k;->f:Ln3/b/a/k$e;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Ln3/b/a/k;->k()V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/b/a/k;->Q:I

    return-void
.end method
