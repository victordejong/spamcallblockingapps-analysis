.class public Lcom/truecaller/aftercall/AfterCallPromotionActivity;
.super Le/a/e/w0;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public d:Landroid/view/View;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/animation/ValueAnimator;

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:Lcom/truecaller/data/entity/HistoryEvent;

.field public l:Landroid/app/PendingIntent;

.field public m:Landroid/content/BroadcastReceiver;

.field public n:Le/a/q2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/w0;-><init>()V

    return-void
.end method

.method public static va(Landroid/content/Context;Lcom/truecaller/aftercall/PromotionType;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le/a/j2;->g7()Le/a/p2/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Le/a/p2/i;->b(Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->wa(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)V

    :cond_0
    return v1
.end method

.method public static wa(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Lcom/truecaller/aftercall/PromotionType;->category:Lcom/truecaller/aftercall/PromotionCategory;

    sget-object v1, Lcom/truecaller/aftercall/PromotionCategory;->DIALER:Lcom/truecaller/aftercall/PromotionCategory;

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastDialerPromotionTime"

    invoke-interface {p1, v2, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object p1, p2, Lcom/truecaller/aftercall/PromotionType;->settingKey:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DIALER_PROMO_name"

    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Le/a/q2/g$b$a;

    const-string v1, "DIALER_PROMO_showed"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 8
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "afterCallPromoteContactsPermissionTimestamp"

    invoke-interface {p1, v2, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "afterCallPromotePhonePermissionTimestamp"

    invoke-interface {p1, v2, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 11
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10018000

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "promotionType"

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "historyEvent"

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 16
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v0, "afterCallPromoteTcTimestamp"

    invoke-interface {p1, v0, p2, p3}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 17
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->g5()Le/a/i4/s;

    move-result-object p1

    const p2, 0x7f12033e

    const p3, 0x7f12033d

    sget-object v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {p1, p0, p2, p3, v0}, Le/a/i4/s;->a(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    invoke-super/range {p0 .. p1}, Le/a/e/w0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static/range {p0 .. p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    const v1, 0x7f0d0020

    .line 5
    invoke-virtual {v7, v1}, Ln3/b/a/h;->setContentView(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    iput-object v1, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->n:Le/a/q2/a;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "promotionType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/aftercall/PromotionType;

    .line 9
    new-instance v2, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;

    invoke-direct {v2, v7, v1}, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Lcom/truecaller/aftercall/PromotionType;)V

    iput-object v2, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->m:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.truecaller.promotion.DISMISS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v2, 0x7f0a0e29

    .line 11
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0xc000000

    invoke-static {v7, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->l:Landroid/app/PendingIntent;

    const v2, 0x7f0a0150

    .line 12
    invoke-virtual {v7, v2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 13
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    new-array v3, v2, [F

    .line 14
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    .line 15
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x10e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 16
    iget-object v5, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    int-to-long v8, v3

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    new-instance v5, Le/a/p2/b;

    invoke-direct {v5, v7}, Le/a/p2/b;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    new-instance v5, Le/a/p2/g;

    invoke-direct {v5, v7}, Le/a/p2/g;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    new-instance v5, Le/a/p2/f;

    invoke-direct {v5, v7}, Le/a/p2/f;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    new-instance v5, Le/a/p2/h;

    invoke-direct {v5, v7}, Le/a/p2/h;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v5, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;

    invoke-direct {v5, v7}, Lcom/truecaller/aftercall/AfterCallPromotionActivity$b;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const v3, 0x1020002

    .line 23
    invoke-virtual {v7, v3}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Le/a/p2/c;

    invoke-direct {v5, v7}, Le/a/p2/c;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0dad

    .line 24
    invoke-virtual {v7, v3}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f040729

    .line 25
    invoke-static {v7, v5}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v5}, Le/a/p5/s0/g;->r1(Landroid/widget/ImageView;I)V

    .line 26
    new-instance v5, Le/a/p2/a;

    invoke-direct {v5, v7, v1}, Le/a/p2/a;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Lcom/truecaller/aftercall/PromotionType;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0dab

    .line 27
    invoke-virtual {v7, v3}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Le/a/p2/e;

    invoke-direct {v5, v7, v1}, Le/a/p2/e;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Lcom/truecaller/aftercall/PromotionType;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_1

    const-string v3, "showPlayTime"

    const-wide/16 v4, 0x0

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->i:J

    iput-wide v8, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->g:J

    const-string v3, "hidePlayTime"

    .line 29
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->j:J

    iput-wide v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->h:J

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 31
    iget-object v3, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_0
    const v0, 0x7f0a0daf

    .line 32
    invoke-virtual {v7, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f0a0db0

    .line 33
    invoke-virtual {v7, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f0a0db1

    .line 34
    invoke-virtual {v7, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0a0dac

    .line 35
    invoke-virtual {v7, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f1205c9

    .line 36
    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1205c8

    .line 37
    invoke-virtual {v7, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "historyEvent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/HistoryEvent;

    iput-object v4, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->k:Lcom/truecaller/data/entity/HistoryEvent;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const v5, 0x7f0f0001

    const/4 v6, 0x3

    const-string v12, ""

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_9

    if-eq v4, v13, :cond_5

    if-eq v4, v2, :cond_5

    if-eq v4, v6, :cond_2

    const-string v2, "unknown"

    goto :goto_2

    :cond_2
    const v2, 0x7f1205c7

    new-array v4, v13, [Ljava/lang/Object;

    .line 40
    iget-object v5, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->k:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v5, :cond_4

    .line 41
    iget-object v5, v5, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-nez v5, :cond_3

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v12

    :cond_4
    :goto_1
    aput-object v12, v4, v14

    .line 43
    invoke-virtual {v7, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "dialFromTc"

    :goto_2
    move-object/from16 v16, v2

    move-object v15, v3

    move-object v4, v12

    move v5, v14

    goto/16 :goto_5

    .line 44
    :cond_5
    sget-object v0, Lcom/truecaller/aftercall/PromotionType;->CONTACT_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

    if-ne v1, v0, :cond_6

    const v2, 0x7f0f0002

    move v5, v2

    :cond_6
    const v2, 0x7f12045c

    .line 45
    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    sget v3, Le/a/n5/b;->b:I

    const-string v3, "context"

    .line 47
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Le/a/n5/b;

    invoke-static {v3, v4}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "EntryPointAccessors.from\u2026GCEntryPoint::class.java)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/n5/b;

    .line 49
    invoke-interface {v3}, Le/a/n5/b;->R()Le/a/n5/c;

    move-result-object v3

    invoke-interface {v3}, Le/a/n5/c;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f120459

    goto :goto_3

    :cond_7
    const v3, 0x7f12045a

    .line 50
    :goto_3
    invoke-virtual {v7, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v3, 0x7f12045b

    .line 51
    invoke-virtual {v7, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v0, :cond_8

    const-string v0, "contactPermission"

    goto :goto_4

    :cond_8
    const-string v0, "phonePermission"

    :goto_4
    move-object/from16 v16, v0

    move-object v15, v3

    move-object v4, v12

    move-object v12, v2

    goto :goto_6

    :cond_9
    const v0, 0x7f12015f

    .line 52
    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120160

    .line 53
    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v2, 0x7f120d6f

    .line 54
    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "signIn"

    move-object/from16 v16, v2

    move-object v15, v3

    move-object v4, v12

    :goto_5
    move-object v12, v0

    .line 55
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v6, :cond_a

    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    const-string v0, "calls"

    const-string v2, "afterCall"

    .line 56
    invoke-static {v7, v0, v2}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    iget-object v1, v1, Lcom/truecaller/aftercall/PromotionType;->settingKey:Ljava/lang/String;

    const-string v2, "promotion_setting_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_7
    move-object v6, v0

    if-eqz v6, :cond_b

    .line 58
    new-instance v3, Ljava/lang/Thread;

    new-instance v2, Le/a/p2/d;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v12

    move-object v13, v3

    move-object v3, v4

    move-object/from16 v17, v11

    move-object v11, v4

    move-object v4, v6

    move v6, v5

    move-object v5, v15

    move-object/from16 v18, v15

    move v15, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Le/a/p2/d;-><init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 60
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto :goto_8

    :cond_b
    move-object/from16 v17, v11

    move-object/from16 v18, v15

    move-object v11, v4

    move v15, v5

    :goto_8
    if-eqz v15, :cond_c

    if-eqz v8, :cond_c

    .line 61
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 62
    :cond_c
    iget-object v0, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->k:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_d

    const v1, 0x7f0a01cb

    .line 64
    invoke-virtual {v7, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ui/components/AvatarView;

    const/4 v2, 0x1

    .line 65
    invoke-static {v0, v2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 66
    invoke-static {v0, v3}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v5

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v0

    .line 67
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/truecaller/ui/components/AvatarView;->b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0a01e0

    .line 69
    invoke-virtual {v7, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_d
    :goto_9
    invoke-static {v9, v12}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {v10, v11}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    .line 72
    invoke-static {v0, v3}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v7, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->n:Le/a/q2/a;

    const-string v1, "afterCallPromotion"

    invoke-static {v1}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/e/w0;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    const-string v0, "alarm"

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 6
    iget-object v1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/e/w0;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->i:J

    const-string v2, "showPlayTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-wide v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->j:J

    const-string v2, "hidePlayTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public qa()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->ua()V

    const/4 v0, 0x1

    return v0
.end method

.method public ra()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ua()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->h:J

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->f:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->h:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final xa(Lcom/truecaller/aftercall/PromotionType;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/truecaller/aftercall/PromotionType;->settingKey:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DIALER_PROMO_name"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v1, "DIALER_PROMO_dismissed"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->n:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
