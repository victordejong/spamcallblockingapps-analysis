.class public Ln3/b/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ln3/b/a/g;->e(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Ln3/b/a/g;->e(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput p2, p0, Ln3/b/a/g$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Ln3/b/a/g;
    .locals 15

    .line 1
    new-instance v0, Ln3/b/a/g;

    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Ln3/b/a/g$a;->b:I

    invoke-direct {v0, v1, v2}, Ln3/b/a/g;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v10, v0, Ln3/b/a/g;->c:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->e:Landroid/view/View;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 4
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 6
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 7
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 10
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v11, v10, Landroidx/appcompat/app/AlertController;->B:I

    .line 12
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 16
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 17
    iget-object v3, v10, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_3
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    .line 20
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 21
    :goto_1
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, -0x2

    .line 22
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 23
    :goto_2
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, -0x3

    .line 24
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 25
    :goto_3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v2, :cond_7

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    .line 26
    :cond_7
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v3, v10, Landroidx/appcompat/app/AlertController;->L:I

    .line 27
    invoke-virtual {v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 28
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->w:Z

    if-eqz v3, :cond_8

    .line 29
    new-instance v14, Ln3/b/a/d;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v6, v10, Landroidx/appcompat/app/AlertController;->M:I

    const v7, 0x1020014

    iget-object v8, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    move-object v3, v14

    move-object v4, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Ln3/b/a/d;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    .line 30
    :cond_8
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->x:Z

    if-eqz v3, :cond_9

    .line 31
    iget v3, v10, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_4

    .line 32
    :cond_9
    iget v3, v10, Landroidx/appcompat/app/AlertController;->O:I

    .line 33
    :goto_4
    iget-object v14, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_a

    goto :goto_5

    .line 34
    :cond_a
    new-instance v14, Landroidx/appcompat/app/AlertController$d;

    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v5, 0x1020014

    iget-object v6, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    invoke-direct {v14, v4, v3, v5, v6}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 35
    :goto_5
    iput-object v14, v10, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 36
    iget v3, v1, Landroidx/appcompat/app/AlertController$b;->y:I

    iput v3, v10, Landroidx/appcompat/app/AlertController;->I:I

    .line 37
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_b

    .line 38
    new-instance v3, Ln3/b/a/e;

    invoke-direct {v3, v1, v10}, Ln3/b/a/e;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    .line 39
    :cond_b
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_c

    .line 40
    new-instance v3, Ln3/b/a/f;

    invoke-direct {v3, v1, v2, v10}, Ln3/b/a/f;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    :cond_c
    :goto_6
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->x:Z

    if-eqz v3, :cond_d

    .line 42
    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_7

    .line 43
    :cond_d
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->w:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 45
    :cond_e
    :goto_7
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 46
    :cond_f
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 47
    iput-object v2, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 48
    iput v11, v10, Landroidx/appcompat/app/AlertController;->i:I

    .line 49
    iput-boolean v11, v10, Landroidx/appcompat/app/AlertController;->n:Z

    goto :goto_8

    .line 50
    :cond_10
    iget v1, v1, Landroidx/appcompat/app/AlertController$b;->t:I

    if-eqz v1, :cond_11

    .line 51
    iput-object v12, v10, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 52
    iput v1, v10, Landroidx/appcompat/app/AlertController;->i:I

    .line 53
    iput-boolean v11, v10, Landroidx/appcompat/app/AlertController;->n:Z

    .line 54
    :cond_11
    :goto_8
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 55
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    if-eqz v1, :cond_12

    .line 56
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    :cond_12
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    iget-object v1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_13

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_13
    return-object v0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 0

    .line 1
    iget-object p2, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, p2, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e(I)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 0

    .line 1
    iget-object p2, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, p2, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p2, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public k(IILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p3, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, p1, Landroidx/appcompat/app/AlertController$b;->y:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Landroidx/appcompat/app/AlertController$b;->x:Z

    return-object p0
.end method

.method public l([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->y:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->x:Z

    return-object p0
.end method

.method public m(I)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(I)Ln3/b/a/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->t:I

    return-object p0
.end method

.method public p(Landroid/view/View;)Ln3/b/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->t:I

    return-object p0
.end method

.method public q()Ln3/b/a/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
