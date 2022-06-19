.class public final Le/a/e/a/g4;
.super Le/m/a/g/e/e;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Le/a/m3/o;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object p1, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    iput-object p2, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    iput-object p3, p0, Le/a/e/a/g4;->e:Ls1/z/b/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object p1, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    iput-object p2, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    iput-object p3, p0, Le/a/e/a/g4;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0099

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a022c

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const p2, 0x7f0a0279

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_1

    const p2, 0x7f0a0290

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_1

    const p2, 0x7f0a0987

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_1

    const p2, 0x7f0a0bbf

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    const p2, 0x7f0a1302

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    const p2, 0x7f0a1303

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 10
    new-instance p2, Le/a/m3/o;

    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Le/a/m3/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p1, "BottomSheetWarnYourFrien\u2026 true), container, false)"

    .line 11
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p2, :cond_0

    .line 12
    iget-object p1, p2, Le/a/m3/o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p1

    :cond_0
    const-string p1, "binding"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/g4;->e:Ls1/z/b/l;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le/a/e/a/g4;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    const-string p2, "binding"

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p1, Le/a/m3/o;->b:Landroid/widget/TextView;

    const-string v1, "binding.blockTitle"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1207b6

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p1, :cond_8

    iget-object p1, p1, Le/a/m3/o;->e:Landroid/widget/TextView;

    const-string v1, "binding.txtName"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p1, :cond_7

    iget-object p1, p1, Le/a/m3/o;->f:Landroid/widget/TextView;

    const-string v1, "binding.txtNumber"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    invoke-static {v3}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d0524

    invoke-virtual {p1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a0c0a

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "sharedView.findViewById<TextView>(R.id.name)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    const v6, 0x7f0a0c68

    const-string v7, "sharedView.findViewById<TextView>(R.id.number)"

    invoke-static {v3, v4, p1, v6, v7}, Le/d/c/a/a;->f1(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 7
    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v3, p0, Le/a/e/a/g4;->c:Ljava/lang/String;

    iget-object v4, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v3, v4, v5, v8}, Ls1/f0/r;->o(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz v3, :cond_0

    iget-object v3, v3, Le/a/m3/o;->f:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    const-string v3, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->f0()Le/a/b0/q/j0;

    move-result-object v1

    const-string v3, "(context?.applicationCon\u2026raph.tcSearchUrlCreator()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Le/a/e/a/g4;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Le/a/b0/q/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sharedView"

    .line 14
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Le/a/b0/q/g0;->N(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Le/a/b0/q/g0;->P(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v3, :cond_4

    .line 18
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p1, :cond_3

    iget-object p1, p1, Le/a/m3/o;->d:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "binding.btnShare"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    :goto_2
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p1, :cond_6

    iget-object p1, p1, Le/a/m3/o;->c:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Le/a/e/a/g4$a;

    invoke-direct {v2, p0}, Le/a/e/a/g4$a;-><init>(Le/a/e/a/g4;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Le/a/e/a/g4;->b:Le/a/m3/o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Le/a/m3/o;->d:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Le/a/e/a/g4$b;

    invoke-direct {p2, p0, v1, v3}, Le/a/e/a/g4$b;-><init>(Le/a/e/a/g4;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_7
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_8
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_9
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
