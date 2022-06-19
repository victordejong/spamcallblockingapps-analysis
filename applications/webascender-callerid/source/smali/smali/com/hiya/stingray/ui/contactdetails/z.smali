.class public Lcom/hiya/stingray/ui/contactdetails/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/contactdetails/z$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/ui/contactdetails/x;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/t/d0;

.field private d:Lcom/hiya/stingray/ui/contactdetails/d0;

.field private final e:Lcom/hiya/stingray/ui/contactdetails/v;

.field private final f:Lcom/hiya/stingray/util/a0;

.field private final g:Lcom/hiya/stingray/manager/u2;

.field private h:Lcom/hiya/stingray/ui/contactdetails/z$b;

.field private i:Lcom/hiya/stingray/ui/userfeedback/c;

.field private j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/x;Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/ui/contactdetails/v;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/u2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->j:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->a:Lcom/hiya/stingray/ui/contactdetails/x;

    .line 5
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    .line 7
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 8
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    .line 9
    iput-object p6, p0, Lcom/hiya/stingray/ui/contactdetails/z;->f:Lcom/hiya/stingray/util/a0;

    .line 10
    iput-object p7, p0, Lcom/hiya/stingray/ui/contactdetails/z;->g:Lcom/hiya/stingray/manager/u2;

    return-void
.end method

.method private C(Landroidx/appcompat/widget/Toolbar;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/z$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0d0005

    .line 2
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    goto :goto_0

    :pswitch_1
    const/high16 p2, 0x7f0d0000

    .line 3
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    goto :goto_0

    :pswitch_2
    const p2, 0x7f0d0002

    .line 4
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    goto :goto_0

    :pswitch_3
    const p2, 0x7f0d0004

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    goto :goto_0

    :pswitch_4
    const p2, 0x7f0d0003

    .line 6
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    .line 7
    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->D(Landroidx/appcompat/widget/Toolbar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private D(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f09004a

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/p;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/p;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f09004b

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/k;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/k;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f09003e

    .line 8
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/q;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/q;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f090049

    .line 10
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/l;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/l;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f09004d

    .line 12
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/n;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/n;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f09004e

    .line 14
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/m;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/m;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    const v0, 0x7f090048

    .line 16
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/r;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/r;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method private synthetic c(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/contactdetails/z;->v()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic e(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->m(Landroid/content/Context;Lcom/hiya/stingray/t/n0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->n(Lcom/hiya/stingray/t/d0;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic g(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->a:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/contactdetails/x;->M(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->w(Z)V

    return p1
.end method

.method private synthetic i(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->k()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic k(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    const v0, 0x7f110419

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    .line 3
    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "https://hiya.app.link/increase-phone-protection"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f110417

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/util/u;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->v()V

    return v4
.end method

.method private synthetic m(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->i:Lcom/hiya/stingray/ui/userfeedback/c;

    sget-object v0, Lcom/hiya/stingray/ui/userfeedback/a;->IDENTITY:Lcom/hiya/stingray/ui/userfeedback/a;

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/userfeedback/c;->o0(Lcom/hiya/stingray/ui/userfeedback/a;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->w()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic o(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->i:Lcom/hiya/stingray/ui/userfeedback/c;

    sget-object v0, Lcom/hiya/stingray/ui/userfeedback/a;->REPUTATION:Lcom/hiya/stingray/ui/userfeedback/a;

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/userfeedback/c;->o0(Lcom/hiya/stingray/ui/userfeedback/a;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->g()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->h:Lcom/hiya/stingray/ui/contactdetails/z$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/hiya/stingray/ui/contactdetails/z$b;->a()V

    :cond_0
    return-void
.end method

.method private synthetic s(ZLcom/hiya/stingray/t/d0;Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/z;->a:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p3, p2, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->P(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/z;->a:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {p3, p2, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->M(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->w(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private w(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->p()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/hiya/stingray/util/e0;->D(Landroid/app/Activity;Z)V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/hiya/stingray/ui/contactdetails/z;->b(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;)Z

    move-result v1

    const/high16 v3, 0x4000000

    const/high16 v4, -0x80000000

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    const p1, 0x106000d

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    if-eqz p1, :cond_1

    const p1, 0x7f06018a

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    sget-object v1, Lcom/hiya/stingray/ui/contactdetails/d0;->SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p1, v1, :cond_2

    const p1, 0x7f060151

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lcom/hiya/stingray/ui/contactdetails/d0;->FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p1, v1, :cond_3

    const p1, 0x7f060178

    goto :goto_0

    :cond_3
    const p1, 0x7f060049

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public B(Lcom/hiya/stingray/ui/contactdetails/z$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->h:Lcom/hiya/stingray/ui/contactdetails/z$b;

    return-void
.end method

.method public E(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    const v0, 0x7f080107

    .line 1
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    const v0, 0x7f1103f7

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/contactdetails/z;->C(Landroidx/appcompat/widget/Toolbar;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/o;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/o;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public F(ZLandroidx/appcompat/widget/Toolbar;Lcom/hiya/stingray/t/d0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v0, 0x7f09003e

    .line 2
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f110401

    goto :goto_0

    :cond_0
    const v0, 0x7f11004e

    .line 3
    :goto_0
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/j;

    invoke-direct {v0, p0, p1, p3}, Lcom/hiya/stingray/ui/contactdetails/j;-><init>(Lcom/hiya/stingray/ui/contactdetails/z;ZLcom/hiya/stingray/t/d0;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public a(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f060189

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p1, v0, :cond_1

    const p1, 0x7f060150

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p1, v0, :cond_2

    const p1, 0x7f060177

    goto :goto_0

    :cond_2
    const p1, 0x7f060048

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public b(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->SCREENED:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->IDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->SAVED_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->MULTI_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic d(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->c(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic f(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->e(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic h(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->g(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic j(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->i(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->k(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic n(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->m(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic p(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->o(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->q(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t(ZLcom/hiya/stingray/t/d0;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/z;->s(ZLcom/hiya/stingray/t/d0;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public u(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->j:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->g:Lcom/hiya/stingray/manager/u2;

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->SAVE_TO_CONTACTS:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/u2;->k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z

    :cond_0
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->j:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/z;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/u;->h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->f:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/e;

    invoke-direct {v1}, Lcom/hiya/stingray/util/i0/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->f:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/v;->l(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public x(Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    return-void
.end method

.method public y(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/LinearLayout;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/z;->d:Lcom/hiya/stingray/ui/contactdetails/d0;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hiya/stingray/ui/contactdetails/z;->b(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    .line 3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 4
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/hiya/stingray/util/f0;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Lcom/hiya/stingray/util/f0;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p2, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090305

    .line 7
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 8
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    iget p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Lcom/hiya/stingray/util/f0;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/hiya/stingray/ui/userfeedback/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/z;->i:Lcom/hiya/stingray/ui/userfeedback/c;

    return-void
.end method
