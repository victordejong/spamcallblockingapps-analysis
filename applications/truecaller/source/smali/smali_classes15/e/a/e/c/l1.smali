.class public Le/a/e/c/l1;
.super Le/a/e/g1;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# static fields
.field public static final synthetic q:I


# instance fields
.field public e:Ln3/b/e/a;

.field public f:Lcom/truecaller/ui/components/DropdownMenuTextView;

.field public g:Le/a/e/c2/y;

.field public h:Lcom/truecaller/data/entity/Contact;

.field public final i:Landroid/database/ContentObserver;

.field public j:Le/a/r2/l;

.field public k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/a/r2/a;

.field public m:Lcom/truecaller/callrecording/CallRecordingManager;

.field public n:Le/a/o5/s1;

.field public o:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

.field public p:Le/a/d/c0/s1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/e/g1;-><init>()V

    .line 2
    new-instance v0, Le/a/e/c/l1$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Le/a/e/c/l1$a;-><init>(Le/a/e/c/l1;Landroid/os/Handler;)V

    iput-object v0, p0, Le/a/e/c/l1;->i:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public PA()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Ln3/l/a/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/e/c/l1;->i:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/l/a/a;->g(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/e/c/l1;->l:Le/a/r2/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_2
    return-void
.end method

.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 5
    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 6
    iget-object v1, p0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e001c

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d001d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a00ce

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/components/DropdownMenuTextView;

    iput-object v0, p0, Le/a/e/c/l1;->f:Lcom/truecaller/ui/components/DropdownMenuTextView;

    .line 10
    new-instance v1, Le/a/e/c/f;

    invoke-direct {v1, p0}, Le/a/e/c/f;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/ui/components/DropdownMenuTextView;->setOnMenuItemClickListener(Ln3/b/f/g0$b;)V

    .line 11
    invoke-virtual {p1, p2}, Ln3/b/e/a;->k(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final cB(II)V
    .locals 6

    if-lez p2, :cond_0

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const p2, 0x7f120726

    .line 4
    new-instance v1, Le/a/e/c/h;

    invoke-direct {v1, p0, p1}, Le/a/e/c/h;-><init>(Le/a/e/c/l1;I)V

    .line 5
    invoke-virtual {v0, p2, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f1206fb

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p1, p2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :cond_0
    return-void
.end method

.method public final dB()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/e/a;->c()V

    :cond_0
    return-void
.end method

.method public final eB()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/c/l1;->k:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    iget-object v2, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v0, v2, v1}, Le/a/l0/c;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/e/c/l1;->j:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/e/c/d;

    invoke-direct {v2, p0}, Le/a/e/c/d;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/e/c/l1;->l:Le/a/r2/a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Le/a/e/c/l1;->k:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l0/c;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Le/a/l0/c;->a(Ljava/lang/String;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/e/c/l1;->j:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/e/c/d;

    invoke-direct {v2, p0}, Le/a/e/c/d;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/e/c/l1;->l:Le/a/r2/a;

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/a/e/c/l1;->gB()V

    return-void
.end method

.method public final fB(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->f:Lcom/truecaller/ui/components/DropdownMenuTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100011

    invoke-virtual {v1, v3, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/e/c/l1;->f:Lcom/truecaller/ui/components/DropdownMenuTextView;

    if-ne p1, p2, :cond_0

    const/16 v4, 0x8

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public gB()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v3, p0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/e/x0;->VA()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const v4, 0x7f0a0b4b

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-static {v3, v0, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Le/a/e/g1;->WA()Landroid/widget/ImageView;

    move-result-object v0

    .line 8
    invoke-static {v0, v1, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Le/a/e/g1;->YA()Landroid/widget/TextView;

    move-result-object v0

    .line 10
    invoke-static {v0, v1, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    :cond_3
    return-void
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0011

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p3

    .line 2
    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ARG_CONTACT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    iput-object v0, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    :cond_1
    const p3, 0x7f0d04b7

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a00a6

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a060f

    .line 3
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/a/e/c/l1;->cB(II)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Le/a/e/x0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c/l1;->j:Le/a/r2/l;

    .line 4
    invoke-interface {p1}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c/l1;->k:Le/a/r2/f;

    .line 5
    invoke-interface {p1}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c/l1;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 6
    invoke-interface {p1}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c/l1;->n:Le/a/o5/s1;

    .line 7
    invoke-interface {p1}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c/l1;->o:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    .line 8
    invoke-interface {p1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/l1;->p:Le/a/d/c0/s1;

    .line 9
    iget-object p1, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const p2, 0x7f120245

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 12
    iget-object p2, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p2, p0, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const v0, 0x7f120182

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 15
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Le/a/e/g1;->bB(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Le/a/e/c/g;

    invoke-direct {v0, p0}, Le/a/e/c/g;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    new-instance v0, Le/a/e/c/i;

    invoke-direct {v0, p0}, Le/a/e/c/i;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 20
    :cond_1
    new-instance p1, Le/a/e/c2/y;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    iget-object v2, p0, Le/a/e/c/l1;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-direct {p1, v0, v2, p2, v1}, Le/a/e/c2/y;-><init>(Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingManager;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    .line 21
    new-instance p2, Le/a/e/c/n1;

    invoke-direct {p2, p0}, Le/a/e/c/n1;-><init>(Le/a/e/c/l1;)V

    invoke-virtual {p1, p2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 22
    invoke-virtual {p0}, Le/a/e/c/l1;->eB()V

    :cond_2
    return-void
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/e/c/l1;->dB()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    const v0, 0x7f0a00a5

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0610

    .line 3
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/a/e/c/l1;->cB(II)V

    :cond_0
    return p2

    :cond_1
    const v0, 0x7f0a00e3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 4
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v0}, Le/a/e/c/l1;->fB(II)V

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    if-ne v0, p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/e/c/l1;->f:Lcom/truecaller/ui/components/DropdownMenuTextView;

    .line 3
    invoke-virtual {v0, p1}, Ln3/b/e/a;->k(Landroid/view/View;)V

    .line 4
    iput-object p1, p0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    .line 5
    invoke-virtual {p0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    .line 10
    new-instance v0, Le/a/e/c/e;

    invoke-direct {v0, p1}, Le/a/e/c/e;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
