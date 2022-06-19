.class public final Le/a/h/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h/b/c$c;
    }
.end annotation


# instance fields
.field public a:Le/a/q3/b;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Lcom/truecaller/dialpad_view/Dialpad;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final h:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

.field public final i:Landroidx/appcompat/widget/AppCompatImageView;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Landroidx/appcompat/widget/AppCompatImageView;

.field public final l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

.field public final m:Landroid/widget/LinearLayout;

.field public final n:Landroid/widget/LinearLayout;

.field public final o:Landroid/widget/TextView;

.field public p:I

.field public final q:I

.field public final r:Le/a/h/b/c$c;

.field public final s:Le/a/h/b/j0$a;

.field public final t:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Le/a/h/b/j0$a;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 11

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    iput-object p2, p0, Le/a/h/b/c;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0a3d

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.id.input_window)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0a0611

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialpadContainer.findViewById(R.id.dialpad)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/dialpad_view/Dialpad;

    iput-object v1, p0, Le/a/h/b/c;->c:Lcom/truecaller/dialpad_view/Dialpad;

    const v2, 0x7f0a13af

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialpadContainer.findVie\u2026.id.view_tcx_dialpad_tab)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Le/a/h/b/c;->d:Landroid/view/View;

    const v2, 0x7f0a1169

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialpadContainer.findVie\u2026d.tcx_dial_pad_dummy_tab)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Le/a/h/b/c;->e:Landroid/view/View;

    const v3, 0x7f0a116b

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "rootView.findViewById(R.id.tcx_fab_dialer)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v3, p0, Le/a/h/b/c;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v4, 0x7f0a0716

    .line 7
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v4, "rootView.findViewById(R.id.fab_sim)"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Le/a/h/b/c;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const p2, 0x7f0a116a

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v4, "dialpadContainer.findViewById(R.id.tcx_fab_call)"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    iput-object p2, p0, Le/a/h/b/c;->h:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    const v4, 0x7f0a1168

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "dialpadContainer.findVie\u2026cx_dial_pad_button_close)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v4, p0, Le/a/h/b/c;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const v5, 0x7f0a0128

    .line 10
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "dialpadContainer.findViewById(R.id.addContact)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v5, p0, Le/a/h/b/c;->j:Landroidx/appcompat/widget/AppCompatImageView;

    const v6, 0x7f0a05bc

    .line 11
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "dialpadContainer.findViewById(R.id.delete)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v6, p0, Le/a/h/b/c;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const v7, 0x7f0a0a37

    .line 12
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "dialpadContainer.findViewById(R.id.inputField)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    iput-object v7, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    const v8, 0x7f0a0a38

    .line 13
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "dialpadContainer.findVie\u2026R.id.inputFieldContainer)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Le/a/h/b/c;->m:Landroid/widget/LinearLayout;

    const v8, 0x7f0a1160

    .line 14
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "dialpadContainer.findVie\u2026R.id.tapToPasteContainer)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Le/a/h/b/c;->n:Landroid/widget/LinearLayout;

    const v9, 0x7f0a1161

    .line 15
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "dialpadContainer.findVie\u2026Id(R.id.tapToPasteNumber)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Le/a/h/b/c;->o:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070502

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Le/a/h/b/c;->p:I

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f070503

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Le/a/h/b/c;->q:I

    .line 18
    new-instance v0, Le/a/h/b/c$c;

    invoke-direct {v0, p0}, Le/a/h/b/c$c;-><init>(Le/a/h/b/c;)V

    iput-object v0, p0, Le/a/h/b/c;->r:Le/a/h/b/c$c;

    .line 19
    new-instance v0, Le/a/h/b/c$d;

    invoke-direct {v0, p0}, Le/a/h/b/c$d;-><init>(Le/a/h/b/c;)V

    .line 20
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    invoke-virtual {v7, p1}, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->setSelectionChangeListener(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;)V

    .line 22
    new-instance v0, Le/a/o5/n0;

    invoke-direct {v0, v7}, Le/a/o5/n0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    if-lt v0, v10, :cond_0

    .line 24
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 25
    :cond_0
    invoke-virtual {v1, p1}, Lcom/truecaller/dialpad_view/Dialpad;->setDialpadListener(Le/a/q3/e;)V

    .line 26
    invoke-virtual {v1, p1}, Lcom/truecaller/dialpad_view/Dialpad;->setActionsListener(Le/a/q3/a;)V

    .line 27
    new-instance p1, Le/a/h/b/c$a;

    invoke-direct {p1, v9, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p1, Le/a/h/b/c$e;

    invoke-direct {p1, p0}, Le/a/h/b/c$e;-><init>(Le/a/h/b/c;)V

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 29
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 30
    new-instance p1, Le/a/h/b/c$a;

    invoke-direct {p1, v0, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p1, Le/a/h/b/c$a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance p1, Le/a/h/b/c$a;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance p1, Le/a/h/b/c$a;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Le/a/h/b/c$a;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Le/a/h/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget-object p1, Le/a/h/b/c$g;->a:Le/a/h/b/c$g;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance p1, Le/a/h/b/c$f;

    invoke-direct {p1, p0}, Le/a/h/b/c$f;-><init>(Le/a/h/b/c;)V

    .line 37
    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->a:Le/a/q3/b;

    if-nez v0, :cond_0

    new-instance v0, Le/a/q3/b;

    iget-object v1, p0, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/q3/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/h/b/c;->a:Le/a/q3/b;

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h/b/c;->c:Lcom/truecaller/dialpad_view/Dialpad;

    iget-object v1, p0, Le/a/h/b/c;->a:Le/a/q3/b;

    invoke-virtual {v0, v1}, Lcom/truecaller/dialpad_view/Dialpad;->setFeedback(Le/a/q3/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const p1, 0x80001

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->c:Lcom/truecaller/dialpad_view/Dialpad;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    const-string v2, "dialpadViewHelper"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/q3/h;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v1, v0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Le/a/q3/h;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    iget-object v2, v0, Lcom/truecaller/dialpad_view/Dialpad;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 4
    iput-object v1, v0, Lcom/truecaller/dialpad_view/Dialpad;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/dialpad_view/Dialpad;->a()V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public e(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public f(Z)V
    .locals 7

    .line 1
    new-instance v6, Ln3/i/c/d;

    invoke-direct {v6}, Ln3/i/c/d;-><init>()V

    .line 2
    iget-object v0, p0, Le/a/h/b/c;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Ln3/i/c/d;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v0, p0, Le/a/h/b/c;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Ln3/i/c/d;->d(II)V

    .line 4
    iget-object v0, p0, Le/a/h/b/c;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    if-eqz p1, :cond_0

    const v0, 0x7f0a0a3d

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iget p1, p0, Le/a/h/b/c;->p:I

    goto :goto_2

    :cond_2
    iget p1, p0, Le/a/h/b/c;->q:I

    :goto_2
    move v5, p1

    const/4 p1, 0x4

    move-object v0, v6

    move v1, v2

    move v2, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Ln3/i/c/d;->g(IIIII)V

    .line 7
    iget-object p1, p0, Le/a/h/b/c;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, p1}, Ln3/i/c/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public g(Le/a/h/b/g0$b;)V
    .locals 5

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->m:Landroid/widget/LinearLayout;

    instance-of v1, p1, Le/a/h/b/g0$b$b;

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Le/a/h/b/c;->n:Landroid/widget/LinearLayout;

    instance-of v1, p1, Le/a/h/b/g0$b$c;

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Le/a/h/b/c;->o:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12077f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Le/a/h/b/g0$b$c;

    .line 4
    iget-object p1, p1, Le/a/h/b/g0$b$c;->a:Ljava/lang/String;

    aput-object p1, v3, v4

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->c:Lcom/truecaller/dialpad_view/Dialpad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/dialpad_view/Dialpad;->setFeedback(Le/a/q3/b;)V

    .line 2
    iget-object v0, p0, Le/a/h/b/c;->a:Le/a/q3/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Le/a/q3/b;->c:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    iput-object v1, v0, Le/a/q3/b;->c:Landroid/os/HandlerThread;

    .line 6
    :cond_0
    iput-object v1, p0, Le/a/h/b/c;->a:Le/a/q3/b;

    return-void
.end method

.method public i(Le/a/o5/r1;)V
    .locals 2

    const-string v0, "sequenceResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dialpadContainer.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/o5/r1;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 6

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1202d5

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 3
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v0, 0x7f1202d6

    .line 5
    new-instance v2, Le/a/h/b/c$b;

    invoke-direct {v2, v5, p0, p1}, Le/a/h/b/c$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f1202d7

    .line 6
    new-instance v2, Le/a/h/b/c$b;

    invoke-direct {v2, v3, p0, p1}, Le/a/h/b/c$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    new-instance v0, Le/a/h/b/c$h;

    invoke-direct {v0, p0, p1}, Le/a/h/b/c$h;-><init>(Le/a/h/b/c;Ljava/lang/String;)V

    .line 8
    iget-object p1, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 9
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :cond_0
    return-void
.end method

.method public k(IILjava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public l(Lcom/truecaller/calling/dialer/DialpadState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->h:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->r(Lcom/truecaller/calling/dialer/DialpadState;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public n(Le/a/h/b/e/d;)V
    .locals 2

    const-string v0, "numberFormatter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Le/a/h/b/c;->l:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "inputField.editableText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/h/b/e/d;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->d:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->h:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Le/a/h/b/c;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/c;->r:Le/a/h/b/c$c;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-boolean p1, v0, Le/a/h/b/c$c;->b:Z

    xor-int/2addr p1, v1

    iget-boolean v2, v0, Le/a/h/b/c$c;->a:Z

    xor-int/2addr v2, v1

    and-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 4
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 5
    invoke-static {p1}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 7
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 8
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 9
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 10
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v1, v0, Le/a/h/b/c$c;->a:Z

    .line 13
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 14
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 15
    iget-object v0, v0, Le/a/h/b/c$c;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-boolean p1, v0, Le/a/h/b/c$c;->b:Z

    xor-int/2addr p1, v1

    iget-boolean v2, v0, Le/a/h/b/c$c;->a:Z

    xor-int/2addr v2, v1

    and-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 19
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    iput-boolean v1, v0, Le/a/h/b/c$c;->b:Z

    .line 22
    iget-object p1, v0, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 23
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 24
    iget-object v0, v0, Le/a/h/b/c$c;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_0
    return-void
.end method
