.class public final Le/a/a/e/e;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public x:Le/a/a/i0;

.field public y:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZLs1/z/b/a;Ls1/z/b/a;Ls1/z/b/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIZ",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "dismissListener"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "shareListener"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nextListener"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0284

    .line 2
    invoke-static {v0, v5}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v5

    iput-object v5, v0, Le/a/a/e/e;->o:Ls1/g;

    const v5, 0x7f0a028d

    .line 3
    invoke-static {v0, v5}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v5

    iput-object v5, v0, Le/a/a/e/e;->p:Ls1/g;

    const v5, 0x7f0a1304

    .line 4
    invoke-static {v0, v5}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v5

    iput-object v5, v0, Le/a/a/e/e;->q:Ls1/g;

    const v7, 0x7f0a1305

    .line 5
    invoke-static {v0, v7}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v7

    iput-object v7, v0, Le/a/a/e/e;->r:Ls1/g;

    const v8, 0x7f0a1309

    .line 6
    invoke-static {v0, v8}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v8

    iput-object v8, v0, Le/a/a/e/e;->s:Ls1/g;

    const v9, 0x7f0a130a

    .line 7
    invoke-static {v0, v9}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v9

    iput-object v9, v0, Le/a/a/e/e;->t:Ls1/g;

    const v10, 0x7f0a1310

    .line 8
    invoke-static {v0, v10}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v10

    iput-object v10, v0, Le/a/a/e/e;->u:Ls1/g;

    const v11, 0x7f0a1311

    .line 9
    invoke-static {v0, v11}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v11

    iput-object v11, v0, Le/a/a/e/e;->v:Ls1/g;

    const v12, 0x7f0a08d8

    .line 10
    invoke-static {v0, v12}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v12

    iput-object v12, v0, Le/a/a/e/e;->w:Ls1/g;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v13, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v13, Le/a/w1;

    invoke-interface {v13}, Le/a/w1;->s()Le/a/j2;

    move-result-object v13

    invoke-interface {v13}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v13

    const-string v15, "(context.applicationCont\u2026).objectsGraph.settings()"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v0, Le/a/a/e/e;->x:Le/a/a/i0;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v13, Le/a/w1;

    invoke-interface {v13}, Le/a/w1;->s()Le/a/j2;

    move-result-object v13

    invoke-interface {v13}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    const-string v14, "(context.applicationCont\u2026sGraph.featuresRegistry()"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v0, Le/a/a/e/e;->y:Le/a/u3/g;

    const v13, 0x7f0d0090

    .line 13
    invoke-virtual {v0, v13}, Le/m/a/g/e/d;->setContentView(I)V

    .line 14
    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v13, "txtOtpCount"

    .line 15
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "txtOtp"

    .line 17
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    const v14, 0x7f10003e

    invoke-virtual {v7, v14, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "txtPromotionalCount"

    .line 19
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "txtPromotional"

    .line 21
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_1

    const v8, 0x7f10003f

    move/from16 v9, p3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-interface {v12}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    const-string v7, "groupPromotional"

    .line 23
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Le/a/a/e/e;->y:Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    invoke-static {v5, v7}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 24
    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "txtSpamCount"

    .line 25
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-interface {v10}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "txtSpam"

    .line 27
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_2

    const v8, 0x7f100040

    invoke-virtual {v7, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v13

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "btnSecondary"

    const v5, 0x7f120736

    const-string v7, "btnPrimary"

    if-eqz p5, :cond_5

    .line 28
    iget-object v8, v0, Le/a/a/e/e;->x:Le/a/a/i0;

    .line 29
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 30
    invoke-interface {v8, v9}, Le/a/a/i0;->S(Lw3/b/a/b;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->g()Landroid/widget/Button;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_3

    const v9, 0x7f12071e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->g()Landroid/widget/Button;

    move-result-object v7

    new-instance v8, Le/a/a/e/e$b;

    invoke-direct {v8, v0, v4}, Le/a/a/e/e$b;-><init>(Le/a/a/e/e;Ls1/z/b/a;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->h()Landroid/widget/Button;

    move-result-object v4

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_4
    invoke-virtual {v4, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->h()Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Le/a/a/e/e$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Le/a/a/e/e$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 35
    :cond_5
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->g()Landroid/widget/Button;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v13

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->g()Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Le/a/a/e/e$a;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v3}, Le/a/a/e/e$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->h()Landroid/widget/Button;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_7

    const v4, 0x7f12070b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_7
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/e;->h()Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Le/a/a/e/e$a;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Le/a/a/e/e$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :goto_5
    new-instance v1, Le/a/a/e/e$c;

    invoke-direct {v1, v2}, Le/a/a/e/e$c;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public final g()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Le/a/a/e/e;->o:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public final h()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Le/a/a/e/e;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method
