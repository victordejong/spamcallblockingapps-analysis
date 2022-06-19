.class public final Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R%\u0010\r\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR%\u0010\u0012\u001a\n \u0008*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u0011R%\u0010\u0015\u001a\n \u0008*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0014\u0010\u0011R%\u0010\u0018\u001a\n \u0008*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\n\u001a\u0004\u0008\u0017\u0010\u0011R%\u0010\u001b\u001a\n \u0008*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u001a\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "e",
        "Ls1/g;",
        "getImage",
        "()Landroid/widget/ImageView;",
        "image",
        "Landroid/widget/TextView;",
        "b",
        "getDialogTitle",
        "()Landroid/widget/TextView;",
        "dialogTitle",
        "d",
        "getShareButton",
        "shareButton",
        "a",
        "getDialogText",
        "dialogText",
        "c",
        "getGotItButton",
        "gotItButton",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    const v0, 0x7f0a060a

    .line 2
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->a:Ls1/g;

    const v0, 0x7f0a060b

    .line 3
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->b:Ls1/g;

    const v0, 0x7f0a08c0

    .line 4
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->c:Ls1/g;

    const v0, 0x7f0a0feb

    .line 5
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->d:Ls1/g;

    const v0, 0x7f0a0987

    .line 6
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

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

    const p1, 0x7f0d0128

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "dialogTitle"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ARG_TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "dialogText"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ARG_TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ARG_LEVEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "gold"

    invoke-static {p1, v2, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "https://tclr.se/2OGXxcW"

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v3, 0x7f0804c7

    .line 12
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v3, 0x7f0602d0

    .line 14
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {p0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 16
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204df

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f1204e1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (intent.getStringExtr\u2026ge, SHARE_LINK)\n        }"

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    new-instance v1, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$a;-><init>(Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    new-instance v1, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;-><init>(Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
