.class public final synthetic Le/a/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/FeedbackDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/FeedbackDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/l;->a:Lcom/truecaller/ui/FeedbackDialogActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Le/a/e/l;->a:Lcom/truecaller/ui/FeedbackDialogActivity;

    .line 1
    sget v1, Lcom/truecaller/ui/FeedbackDialogActivity;->d:I

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    :cond_2
    new-instance v3, Le/a/e/a/k2;

    invoke-direct {v3, v0}, Le/a/e/a/k2;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0113

    .line 7
    iput v4, v3, Le/a/e/a/k2;->a:I

    .line 8
    new-instance v4, Le/a/e/a/j2;

    invoke-direct {v4, v3}, Le/a/e/a/j2;-><init>(Le/a/e/a/k2;)V

    .line 9
    iput-object v4, v0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    .line 10
    invoke-virtual {v4}, Le/a/e/a/i2;->a()V

    .line 11
    iget-object v3, v4, Le/a/e/a/i2;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3

    goto/16 :goto_8

    .line 12
    :cond_3
    new-instance v3, Landroid/app/Dialog;

    iget-object v7, v4, Le/a/e/a/i2;->a:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 13
    invoke-virtual {v3}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Le/a/l4/k;->t0(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0d013b

    .line 14
    invoke-virtual {v3, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 15
    iget v8, v4, Le/a/e/a/i2;->d:I

    invoke-virtual {v3, v8, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Le/a/e/a/i2;->g:Landroid/view/View;

    .line 16
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    new-instance v3, Le/a/e/a/h2;

    iget-object v8, v4, Le/a/e/a/i2;->a:Landroid/content/Context;

    const v9, 0x103000b

    invoke-direct {v3, v4, v8, v9}, Le/a/e/a/h2;-><init>(Le/a/e/a/i2;Landroid/content/Context;I)V

    iput-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 18
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 19
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 23
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    iget-boolean v7, v4, Le/a/e/a/i2;->e:Z

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 24
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    iget-boolean v7, v4, Le/a/e/a/i2;->e:Z

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    iget-object v3, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 26
    iget v3, v4, Le/a/e/a/i2;->k:I

    const v7, 0x7f0a060b

    if-eqz v3, :cond_4

    .line 27
    iget-object v8, v4, Le/a/e/a/i2;->a:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Le/a/e/a/i2;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v3, v4, Le/a/e/a/i2;->b:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Le/a/e/a/i2;->b(ILjava/lang/String;)V

    .line 29
    :goto_1
    iget v3, v4, Le/a/e/a/i2;->l:I

    const v7, 0x7f0a0607

    if-eqz v3, :cond_5

    .line 30
    iget-object v8, v4, Le/a/e/a/i2;->a:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Le/a/e/a/i2;->b(ILjava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object v3, v4, Le/a/e/a/i2;->c:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Le/a/e/a/i2;->b(ILjava/lang/String;)V

    :goto_2
    const/4 v3, 0x3

    new-array v7, v3, [I

    .line 32
    fill-array-data v7, :array_0

    new-array v8, v3, [I

    .line 33
    iget v9, v4, Le/a/e/a/i2;->i:I

    aput v9, v8, v5

    iget v9, v4, Le/a/e/a/i2;->j:I

    aput v9, v8, v6

    iget v9, v4, Le/a/e/a/i2;->h:I

    const/4 v10, 0x2

    aput v9, v8, v10

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v10, v5

    :goto_3
    if-ge v10, v3, :cond_a

    .line 36
    aget v11, v7, v10

    aget v12, v8, v10

    .line 37
    iget-object v13, v4, Le/a/e/a/i2;->g:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_8

    if-lez v12, :cond_6

    .line 38
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    .line 39
    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-lez v12, :cond_7

    move v13, v5

    goto :goto_4

    :cond_7
    const/16 v13, 0x8

    .line 40
    :goto_4
    invoke-virtual {v11, v13}, Landroid/widget/Button;->setVisibility(I)V

    if-lez v12, :cond_8

    goto :goto_5

    :cond_8
    move-object v11, v2

    :goto_5
    if-eqz v11, :cond_9

    .line 41
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 42
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 43
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_b
    if-le v2, v6, :cond_c

    .line 44
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v7, 0x7f0801df

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    sub-int/2addr v2, v6

    .line 45
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v7, 0x7f0801e0

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_c

    .line 46
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x7f0801de

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 47
    :cond_c
    :goto_7
    iget-object v2, v4, Le/a/e/a/j2;->m:Le/a/e/a/k2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v2, v4, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 49
    :goto_8
    iget-object v2, v0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    .line 50
    iget-object v2, v2, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 51
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 52
    iget-object v2, v0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    .line 53
    iget-object v2, v2, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 54
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v2, v0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    .line 56
    iget-object v2, v2, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 57
    new-instance v3, Le/a/e/k;

    invoke-direct {v3, v0}, Le/a/e/k;-><init>(Lcom/truecaller/ui/FeedbackDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    iget-object v2, v0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    .line 59
    iget-object v2, v2, Le/a/e/a/i2;->g:Landroid/view/View;

    .line 60
    check-cast v2, Lcom/truecaller/ui/components/FeedbackItemView;

    .line 61
    new-instance v3, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 62
    invoke-static {}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->values()[Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    move-result-object v4

    const-string v7, "FeedbackDialogActivity.EXTRA_SOURCE"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    aget-object v4, v4, v7

    .line 63
    invoke-static {}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->values()[Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    move-result-object v7

    const-string v8, "FeedbackDialogActivity.EXTRA_STATE"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v1, v7, v1

    invoke-direct {v3, v4, v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;-><init>(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;)V

    .line 64
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v2, v3, v1}, Lcom/truecaller/ui/components/FeedbackItemView;->g(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;Ljava/lang/Boolean;)V

    .line 66
    invoke-virtual {v2, v0}, Lcom/truecaller/ui/components/FeedbackItemView;->setFeedbackItemListener(Lcom/truecaller/ui/components/FeedbackItemView$c;)V

    .line 67
    invoke-virtual {v2, v6}, Lcom/truecaller/ui/components/FeedbackItemView;->setDialogStyle(Z)V

    const-string v0, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 68
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    :goto_9
    return-void

    :array_0
    .array-data 4
        0x7f0a0609
        0x7f0a0608
        0x7f0a060d
    .end array-data
.end method
