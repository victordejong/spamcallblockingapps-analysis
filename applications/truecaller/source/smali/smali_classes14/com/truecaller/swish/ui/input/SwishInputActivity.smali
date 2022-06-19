.class public final Lcom/truecaller/swish/ui/input/SwishInputActivity;
.super Le/a/f5/h/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/f5/h/a/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008)\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000bJ\u0017\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u000f\u0010 \u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008 \u0010\u001dR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/truecaller/swish/ui/input/SwishInputActivity;",
        "Ln3/b/a/h;",
        "Le/a/f5/h/a/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "name",
        "H5",
        "(Ljava/lang/String;)V",
        "number",
        "q7",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "avatarXConfig",
        "K8",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "",
        "enabled",
        "A0",
        "(Z)V",
        "uri",
        "b8",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "v8",
        "()V",
        "visible",
        "j9",
        "onDestroy",
        "Le/a/b0/a/b/a;",
        "f",
        "Le/a/b0/a/b/a;",
        "avatarXPresenter",
        "Le/a/f5/f/a;",
        "e",
        "Le/a/f5/f/a;",
        "binding",
        "<init>",
        "swish-integration_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/f5/h/a/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/f5/f/a;

.field public final f:Le/a/b0/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/f5/h/a/b;-><init>()V

    .line 2
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-direct {v1, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->f:Le/a/b0/a/b/a;

    return-void
.end method

.method public static final synthetic pa(Lcom/truecaller/swish/ui/input/SwishInputActivity;)Le/a/f5/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public A0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f5/f/a;->h:Landroid/widget/Button;

    const-string v1, "binding.sendButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public H5(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f5/f/a;->f:Landroid/widget/TextView;

    const-string v1, "binding.nameTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public K8(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->f:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b8(Ljava/lang/String;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "se.bankgirot.swish"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public j9(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f5/f/a;->d:Landroid/widget/TextView;

    const-string v1, "binding.currencyTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/truecaller/swish/R$style;->Theme_Truecaller_Dark_Swish:I

    invoke-virtual {v0, v1}, Ln3/b/a/h;->setTheme(I)V

    .line 2
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v2, Lcom/truecaller/swish/R$layout;->activity_swish_input:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Lcom/truecaller/swish/R$id;->amountEditText:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_15

    .line 7
    sget v2, Lcom/truecaller/swish/R$id;->contactPhoto:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v9, :cond_15

    .line 9
    sget v2, Lcom/truecaller/swish/R$id;->currencyTextView:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_15

    .line 11
    sget v2, Lcom/truecaller/swish/R$id;->messageEditText:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_15

    .line 13
    sget v2, Lcom/truecaller/swish/R$id;->nameTextView:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_15

    .line 15
    sget v2, Lcom/truecaller/swish/R$id;->numberTextView:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_15

    .line 17
    sget v2, Lcom/truecaller/swish/R$id;->sendButton:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_15

    .line 19
    sget v2, Lcom/truecaller/swish/R$id;->sendButtonContainer:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_15

    .line 21
    sget v2, Lcom/truecaller/swish/R$id;->toolbar:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroidx/appcompat/widget/Toolbar;

    if-eqz v16, :cond_15

    .line 23
    new-instance v2, Le/a/f5/f/a;

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v6, v2

    invoke-direct/range {v6 .. v16}, Le/a/f5/f/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/Toolbar;)V

    const-string v1, "ActivitySwishInputBinding.inflate(layoutInflater)"

    .line 24
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    const-string v1, "binding"

    if-eqz v2, :cond_14

    .line 25
    iget-object v2, v2, Le/a/f5/f/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    invoke-virtual {v0, v2}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_13

    iget-object v2, v2, Le/a/f5/f/a;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ln3/b/a/a;->n(Z)V

    .line 29
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v6, Lcom/truecaller/swish/R$drawable;->ic_action_close:I

    invoke-virtual {v2, v6}, Ln3/b/a/a;->s(I)V

    .line 30
    :cond_1
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->d:Le/a/f5/h/a/e;

    const-string v6, "presenter"

    if-eqz v2, :cond_12

    invoke-virtual {v2, v0}, Le/a/f5/h/a/e;->Y0(Ljava/lang/Object;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "payee_number"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "payee_contact"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/truecaller/data/entity/Contact;

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "payee_avatarx_config"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 34
    iget-object v9, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->d:Le/a/f5/h/a/e;

    if-eqz v9, :cond_11

    if-nez v2, :cond_2

    .line 35
    iget-object v2, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f5/h/a/d;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/f5/h/a/d;->finish()V

    goto/16 :goto_4

    .line 36
    :cond_2
    iget-object v6, v9, Le/a/f5/h/a/e;->d:Le/a/f5/a;

    invoke-interface {v6, v2}, Le/a/f5/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 37
    iget-object v2, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f5/h/a/d;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/f5/h/a/d;->finish()V

    goto/16 :goto_4

    .line 38
    :cond_3
    iput-object v6, v9, Le/a/f5/h/a/e;->b:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 39
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v2

    :goto_0
    const-string v10, "contact?.displayName ?: normalizedNumber"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_7

    .line 40
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v10

    if-nez v10, :cond_7

    .line 41
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v10

    const-string v11, "contact.numbers"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/truecaller/data/entity/Number;

    const-string v13, "it"

    .line 43
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_6
    move-object v11, v3

    .line 44
    :goto_1
    check-cast v11, Lcom/truecaller/data/entity/Number;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, ""

    :goto_2
    const-string v10, "if (contact?.isUnknown =\u2026\n            \"\"\n        }"

    .line 45
    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v10, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/f5/h/a/d;

    if-eqz v10, :cond_8

    invoke-interface {v10, v6}, Le/a/f5/h/a/d;->H5(Ljava/lang/String;)V

    .line 47
    :cond_8
    iget-object v6, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/f5/h/a/d;

    if-eqz v6, :cond_9

    invoke-interface {v6, v2}, Le/a/f5/h/a/d;->q7(Ljava/lang/String;)V

    :cond_9
    if-eqz v7, :cond_b

    .line 48
    iget-object v2, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f5/h/a/d;

    if-eqz v2, :cond_b

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    new-instance v8, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xffff

    invoke-direct/range {v9 .. v26}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    :goto_3
    invoke-interface {v2, v8}, Le/a/f5/h/a/d;->K8(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 49
    :cond_b
    :goto_4
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_10

    iget-object v2, v2, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    const-string v6, "binding.amountEditText"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/truecaller/swish/ui/input/SwishInputActivity$a;

    invoke-direct {v7, v0}, Lcom/truecaller/swish/ui/input/SwishInputActivity$a;-><init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V

    invoke-static {v2, v7}, Le/a/m0/a1$k;->j(Landroid/widget/EditText;Ls1/z/b/l;)V

    .line 50
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_f

    iget-object v2, v2, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Lcom/truecaller/swish/ui/input/SwishInputActivity$b;

    invoke-direct {v6, v0}, Lcom/truecaller/swish/ui/input/SwishInputActivity$b;-><init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 51
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_e

    iget-object v2, v2, Le/a/f5/f/a;->h:Landroid/widget/Button;

    new-instance v4, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;

    invoke-direct {v4, v0}, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;-><init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_d

    iget-object v2, v2, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 53
    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v2, :cond_c

    iget-object v1, v2, Le/a/f5/f/a;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    iget-object v2, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->f:Le/a/b0/a/b/a;

    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void

    :cond_c
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_d
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_e
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_f
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_10
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_11
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_12
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_13
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_14
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->d:Le/a/f5/h/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public q7(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->e:Le/a/f5/f/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f5/f/a;->g:Landroid/widget/TextView;

    const-string v1, "binding.numberTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public v8()V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://details?id=se.bankgirot.swish"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/details?id=se.bankgirot.swish"

    .line 3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
