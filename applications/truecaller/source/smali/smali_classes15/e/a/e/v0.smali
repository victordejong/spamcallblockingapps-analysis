.class public Le/a/e/v0;
.super Le/a/e/x0;
.source "SourceFile"


# static fields
.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Landroid/os/Bundle;

.field public f:Z

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/truecaller/ui/components/NewComboBase;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/EditText;

.field public p:Landroid/view/MenuItem;

.field public q:Landroid/view/View;

.field public r:Landroid/graphics/Paint;

.field public s:I

.field public t:I

.field public u:Le/a/e/u0;

.field public v:Le/a/p5/u;

.field public w:Le/a/b0/o/a;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [Le/a/e/c2/i0;

    .line 1
    new-instance v1, Le/a/e/c2/i0;

    const/4 v2, 0x0

    const v3, 0x7f12028e

    const/4 v4, -0x1

    const-string v5, ""

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120295

    .line 4
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 5
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120291

    .line 6
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 7
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f12028f

    .line 8
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 9
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120290

    .line 10
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 11
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f12028d

    .line 12
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 13
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120293

    .line 14
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 15
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120294

    .line 16
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 17
    new-instance v3, Le/a/e/c2/i0;

    const v6, 0x7f120292

    .line 18
    invoke-direct {v3, v2, v6, v4, v5}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object v3, v0, v1

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/e/v0;->y:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/e/x0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/e/v0;->f:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Le/a/e/v0;->y:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Le/a/e/v0;->x:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public PA()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    .line 2
    iput-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    .line 3
    iput-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    .line 4
    iput-object v0, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    .line 5
    iput-object v0, p0, Le/a/e/v0;->i:Landroid/widget/EditText;

    .line 6
    iput-object v0, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    return-void
.end method

.method public final WA(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/p5/g0;->a:Ljava/util/Set;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const p1, 0x7f120282

    .line 4
    invoke-virtual {p0, p1}, Le/a/e/x0;->TA(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/e/v0;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    .line 6
    iget-object p1, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v3

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/e/v0;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v3}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    return v2
.end method

.method public final XA(ZI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ge p2, v2, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f120283

    new-array v2, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/e/x0;->We(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/e/v0;->n:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    .line 3
    iget-object p1, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/e/v0;->n:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    return v0
.end method

.method public final YA(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f120284

    .line 2
    invoke-virtual {p0, p1}, Le/a/e/x0;->TA(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/e/v0;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    .line 4
    iget-object p1, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/e/v0;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    return v1
.end method

.method public final ZA(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2
    iget-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Le/a/e/v0;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Le/a/e/v0;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object v0, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 9
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 11
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public final aB(Landroid/widget/TextView;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const v1, 0x7f08084b

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Le/a/e/v0;->t:I

    goto :goto_1

    :cond_1
    iget p2, p0, Le/a/e/v0;->s:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/a/e/x0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/a/e/v0;->r:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    const v2, 0xffffff

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0015

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a075c

    .line 3
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Le/a/e/v0;->p:Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const v1, 0x7f120296

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    check-cast v0, Le/a/e/w0;

    .line 4
    iget-object v0, v0, Le/a/e/w0;->c:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0d001c

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/e/v0;->q:Landroid/view/View;

    .line 6
    iget-object v1, p0, Le/a/e/v0;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const p3, 0x7f0d04c6

    .line 7
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0a075c

    const/4 v4, 0x0

    if-ne v1, v3, :cond_6

    .line 3
    iget-boolean v1, v0, Le/a/e/v0;->f:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-virtual {v0, v2}, Le/a/e/v0;->YA(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Le/a/e/v0;->WA(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, v0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v1}, Lcom/truecaller/ui/components/NewComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    .line 6
    iget v1, v1, Le/a/e/c2/i0;->e:I

    const v3, 0x7f12028e

    if-ne v1, v3, :cond_2

    const v1, 0x7f120288

    .line 7
    invoke-virtual {v0, v1}, Le/a/e/x0;->TA(I)V

    .line 8
    iget-object v1, v0, Le/a/e/v0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    .line 9
    iget-object v1, v0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    move v1, v4

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, Le/a/e/v0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    iget-object v1, v0, Le/a/e/v0;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Le/a/e/v0;->XA(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 12
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    .line 13
    iget-object v3, v0, Le/a/e/v0;->v:Le/a/p5/u;

    invoke-interface {v3}, Le/a/p5/u;->d()Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f12027d

    const/4 v5, 0x0

    const/4 v6, 0x6

    .line 15
    invoke-static {v1, v3, v5, v4, v6}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 16
    :cond_5
    iput-boolean v2, v0, Le/a/e/v0;->f:Z

    .line 17
    invoke-virtual {v0, v4}, Le/a/e/v0;->ZA(Z)V

    .line 18
    iget-object v3, v0, Le/a/e/v0;->p:Landroid/view/MenuItem;

    iget-object v4, v0, Le/a/e/v0;->q:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 19
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    invoke-virtual {v0, v3}, Le/a/e/v0;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v4, 0x7f120293

    .line 21
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FeedbackFormFragment.STATE_SUBJECT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 22
    iget-object v8, v0, Le/a/e/v0;->u:Le/a/e/u0;

    const-string v4, "FeedbackFormFragment.STATE_NAME"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "FeedbackFormFragment.STATE_EMAIL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "FeedbackFormFragment.STATE_FEEDBACK"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v10, Le/a/e/m;

    invoke-direct {v10, v0, v1}, Le/a/e/m;-><init>(Le/a/e/v0;Landroid/app/Activity;)V

    .line 24
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lifecycleOwner"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "email"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subject"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onResultAction"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static/range {p0 .. p0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v1

    new-instance v18, Le/a/e/t0;

    const/4 v15, 0x0

    move-object/from16 v7, v18

    invoke-direct/range {v7 .. v15}, Le/a/e/t0;-><init>(Le/a/e/u0;ZLs1/z/b/l;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ls1/w/d;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object v15, v1

    invoke-static/range {v15 .. v20}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_2
    return v2

    :cond_6
    return v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackFormFragment.STATE_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackFormFragment.STATE_EMAIL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackFormFragment.STATE_FEEDBACK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v0}, Lcom/truecaller/ui/components/NewComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackFormFragment.STATE_SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Le/a/e/x0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0756

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/v0;->g:Landroid/widget/TextView;

    const p2, 0x7f0a0755

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    const p2, 0x7f0a0759

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Le/a/e/v0;->i:Landroid/widget/EditText;

    const p2, 0x7f0a0752

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/v0;->j:Landroid/widget/TextView;

    const p2, 0x7f0a0751

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    const p2, 0x7f0a0758

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/v0;->l:Landroid/widget/TextView;

    const p2, 0x7f0a0757

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/ui/components/NewComboBase;

    iput-object p2, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    const p2, 0x7f0a0754

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/v0;->n:Landroid/widget/TextView;

    const p2, 0x7f0a0753

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 12
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 15
    :cond_0
    check-cast p2, Le/a/w1;

    invoke-interface {p2}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Le/a/j2;->D5()Le/a/e/u0;

    move-result-object p2

    iput-object p2, p0, Le/a/e/v0;->u:Le/a/e/u0;

    .line 17
    invoke-interface {p1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object p2

    iput-object p2, p0, Le/a/e/v0;->v:Le/a/p5/u;

    .line 18
    invoke-interface {p1}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object p1

    iput-object p1, p0, Le/a/e/v0;->w:Le/a/b0/o/a;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f04068d

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/e/v0;->s:I

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04056e

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/e/v0;->t:I

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f04068f

    invoke-static {p2, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    .line 23
    iget-object v0, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    const v1, 0x7f0a0b1e

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    iget-object v2, p0, Le/a/e/v0;->w:Le/a/b0/o/a;

    invoke-static {v2}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    iget-object v2, p0, Le/a/e/v0;->w:Le/a/b0/o/a;

    const-string v3, "profileEmail"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-static {v0, v1}, Le/a/o5/j0;->m(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    const-string v3, "FeedbackFormFragment.STATE_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    iget-object v2, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    const-string v3, "FeedbackFormFragment.STATE_EMAIL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    iget-object v2, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    const-string v3, "FeedbackFormFragment.STATE_FEEDBACK"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Le/a/e/v0;->e:Landroid/os/Bundle;

    const-string v2, "FeedbackFormFragment.STATE_SUBJECT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v2, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    new-instance v3, Le/a/e/c2/i0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    .line 32
    invoke-direct {v3, v5, v0, v4, v6}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v2, v3}, Lcom/truecaller/ui/components/NewComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 34
    iget-object v2, p0, Le/a/e/v0;->x:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/e/c2/i0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-static {v0, v1}, Le/a/o5/j0;->m(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "profileUserId"

    .line 37
    invoke-interface {v0, v3, v1, v2}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Le/a/e/v0;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    iget-object v1, p0, Le/a/e/v0;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/truecaller/ui/components/NewComboBase;->setData(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 41
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 42
    iget-object v0, p0, Le/a/e/v0;->m:Lcom/truecaller/ui/components/NewComboBase;

    new-instance v1, Le/a/e/n;

    invoke-direct {v1, p0, p2, p1}, Le/a/e/n;-><init>(Le/a/e/v0;II)V

    invoke-virtual {v0, v1}, Lcom/truecaller/ui/components/NewComboBase;->setObserver(Lcom/truecaller/ui/components/NewComboBase$a;)V

    .line 43
    iget-object p1, p0, Le/a/e/v0;->h:Landroid/widget/EditText;

    new-instance p2, Le/a/e/v0$a;

    invoke-direct {p2, p0}, Le/a/e/v0$a;-><init>(Le/a/e/v0;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    iget-object p1, p0, Le/a/e/v0;->k:Landroid/widget/EditText;

    new-instance p2, Le/a/e/v0$b;

    invoke-direct {p2, p0}, Le/a/e/v0$b;-><init>(Le/a/e/v0;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object p1, p0, Le/a/e/v0;->o:Landroid/widget/EditText;

    new-instance p2, Le/a/e/v0$c;

    invoke-direct {p2, p0}, Le/a/e/v0$c;-><init>(Le/a/e/v0;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
