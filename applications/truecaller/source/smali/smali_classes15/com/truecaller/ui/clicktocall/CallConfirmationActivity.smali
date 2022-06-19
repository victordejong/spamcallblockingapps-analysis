.class public Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/e/b2/f;


# instance fields
.field public a:Le/a/e/b2/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

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

    invoke-static {p1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "truecaller"

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "call_confirmation"

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tel"

    .line 9
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v0, Le/a/j2;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    invoke-interface {p1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v3, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "deepLinkClickToCall"

    invoke-direct {v3, v0, v4, v5}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 17
    iput v0, v3, Le/a/f4/g/p;->o:I

    .line 18
    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 19
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object v5

    .line 21
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    new-instance p1, Le/a/e/b2/e;

    const-string v6, "deepLinkClickToCall"

    move-object v0, p1

    move-object v2, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Le/a/e/b2/e;-><init>(Ljava/lang/String;Le/a/f4/g/p;Ljava/lang/String;Le/a/q2/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;)V

    .line 23
    iput-object p1, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->a:Le/a/e/b2/c;

    const p1, 0x7f0d00c1

    .line 24
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    const p1, 0x7f0a12e9

    .line 25
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f0a12dd

    .line 26
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->b:Landroid/widget/TextView;

    const p1, 0x7f0a02e8

    .line 27
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 28
    new-instance v0, Le/a/e/b2/b;

    invoke-direct {v0, p0}, Le/a/e/b2/b;-><init>(Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0406de

    .line 29
    invoke-static {p1, v0}, Le/a/o5/j0;->w(Landroid/widget/TextView;I)V

    const p1, 0x7f0a02eb

    .line 30
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 31
    new-instance v0, Le/a/e/b2/a;

    invoke-direct {v0, p0}, Le/a/e/b2/a;-><init>(Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f040729

    .line 32
    invoke-static {p1, v0}, Le/a/o5/j0;->w(Landroid/widget/TextView;I)V

    .line 33
    iget-object p1, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->a:Le/a/e/b2/c;

    invoke-virtual {p1, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;->a:Le/a/e/b2/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/a/u2/a/b;->c()V

    .line 3
    :cond_0
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method
