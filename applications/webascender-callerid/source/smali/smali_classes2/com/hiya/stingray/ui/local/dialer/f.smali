.class public final Lcom/hiya/stingray/ui/local/dialer/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/dialer/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/util/w;

.field private b:Landroid/text/TextWatcher;

.field private c:Z

.field private d:Z

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/widget/EditText;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hiya/stingray/ui/local/dialer/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/EditText;Ljava/lang/ref/WeakReference;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/EditText;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hiya/stingray/ui/local/dialer/f$a;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "dialerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberTextView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/dialer/f;->g:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/hiya/stingray/ui/local/dialer/f;->h:Z

    iput-boolean p5, p0, Lcom/hiya/stingray/ui/local/dialer/f;->i:Z

    .line 2
    new-instance p1, Lcom/hiya/stingray/util/w;

    invoke-direct {p1}, Lcom/hiya/stingray/util/w;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->a:Lcom/hiya/stingray/util/w;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->d:Z

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->p()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->o()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/widget/EditText;Ljava/lang/ref/WeakReference;ZZILkotlin/w/c/g;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/dialer/f;-><init>(Landroid/view/ViewGroup;Landroid/widget/EditText;Ljava/lang/ref/WeakReference;ZZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/local/dialer/f;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/local/dialer/f;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/hiya/stingray/ui/local/dialer/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/local/dialer/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/ui/local/dialer/f;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/ui/local/dialer/f;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/ui/local/dialer/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f;->m(Z)V

    return-void
.end method

.method private final g(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/f;->m(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 5
    invoke-interface {v0, p2, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method static synthetic h(Lcom/hiya/stingray/ui/local/dialer/f;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/local/dialer/f;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->b:Landroid/text/TextWatcher;

    const/4 v2, 0x0

    const-string v3, "phoneNumberTextWatcher"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->a:Lcom/hiya/stingray/util/w;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->b:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/local/dialer/f$a;->w0(Z)V

    :cond_1
    return-void
.end method

.method private final n(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->c:Z

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    sget v0, Lcom/hiya/stingray/o;->U0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string v1, "dialerView.eraseButton"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->c:Z

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->c:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final o()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/f;->n(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/hiya/stingray/o;->L0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v2, "dialerView.dismissButton"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/local/dialer/f;->i:Z

    invoke-static {v0, v2}, Lcom/hiya/stingray/util/e0;->A(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$e;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/hiya/stingray/o;->U0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/hiya/stingray/ui/local/dialer/f$f;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/dialer/f$f;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$g;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/hiya/stingray/o;->h2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$h;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/hiya/stingray/o;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    const-string v1, "dialerView.buttonsContainer"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->e(Landroid/view/View;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    .line 9
    new-instance v2, Lcom/hiya/stingray/ui/local/dialer/f$c;

    invoke-direct {v2, v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$c;-><init>(Lcom/hiya/stingray/ui/local/dialer/DialerButton;Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->setClick(Lkotlin/w/b/l;)V

    .line 10
    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->getSecondaryCharacter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    new-instance v3, Lcom/hiya/stingray/ui/local/dialer/f$d;

    invoke-direct {v3, v2, v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$d;-><init>(Ljava/lang/String;Lcom/hiya/stingray/ui/local/dialer/DialerButton;Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->setLongPress(Lkotlin/w/b/l;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/dialer/f$i;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/dialer/f$i;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->b:Landroid/text/TextWatcher;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 4
    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/local/dialer/f;->m(Z)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$j;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$j;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$k;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/f$k;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_0
    const-string v0, "phoneNumberTextWatcher"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final i(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eqz p1, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/f$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$b;-><init>(Lcom/hiya/stingray/ui/local/dialer/f;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-nez p1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$a;->P(Z)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 9
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->d:Z

    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->a:Lcom/hiya/stingray/util/w;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/f;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "phoneNumberTextView.text"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, v3}, Lcom/hiya/stingray/ui/local/dialer/f;->m(Z)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/local/dialer/f;->n(Z)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/dialer/f$a;->o()V

    :cond_4
    return-void
.end method
