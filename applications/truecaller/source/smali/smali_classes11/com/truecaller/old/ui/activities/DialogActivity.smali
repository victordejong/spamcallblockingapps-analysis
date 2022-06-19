.class public Lcom/truecaller/old/ui/activities/DialogActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f130362

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const p1, 0x7f0d013b

    .line 5
    invoke-static {p0, p1}, Le/a/o5/j0;->k(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0d0118

    .line 6
    invoke-static {p0, v0}, Le/a/o5/j0;->k(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    const p1, 0x1020002

    .line 8
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a060b

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ARG_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {p1, v0, v2}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0607

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ARG_TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {p1, v0, v2}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v0, 0x7f0a060d

    .line 13
    invoke-static {p1, v0, v1}, Le/a/o5/j0;->u(Landroid/view/View;IZ)Landroid/view/View;

    const v0, 0x7f0a0609

    .line 14
    invoke-static {p1, v0, v1}, Le/a/o5/j0;->u(Landroid/view/View;IZ)Landroid/view/View;

    const v0, 0x7f120726

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0608

    invoke-static {p1, v1, v0}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 17
    new-instance v0, Le/a/j4/c/a/a;

    invoke-direct {v0, p0}, Le/a/j4/c/a/a;-><init>(Lcom/truecaller/old/ui/activities/DialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
