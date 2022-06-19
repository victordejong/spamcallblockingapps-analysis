.class public final Le/a/a/e/c;
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

.field public final x:Ls1/g;

.field public y:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le/a/a/e/s;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Le/a/a/e/s;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "otpMessages"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "promotionalMessages"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "spamMessages"

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "listener"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0268

    .line 2
    invoke-static {v0, v6}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v6

    iput-object v6, v0, Le/a/a/e/c;->o:Ls1/g;

    const v7, 0x7f0a0270

    .line 3
    invoke-static {v0, v7}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v7

    iput-object v7, v0, Le/a/a/e/c;->p:Ls1/g;

    const v8, 0x7f0a0281

    .line 4
    invoke-static {v0, v8}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v8

    iput-object v8, v0, Le/a/a/e/c;->q:Ls1/g;

    const v9, 0x7f0a0282

    .line 5
    invoke-static {v0, v9}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v9

    iput-object v9, v0, Le/a/a/e/c;->r:Ls1/g;

    const v9, 0x7f0a0283

    .line 6
    invoke-static {v0, v9}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v9

    iput-object v9, v0, Le/a/a/e/c;->s:Ls1/g;

    const v10, 0x7f0a11a5

    .line 7
    invoke-static {v0, v10}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v10

    iput-object v10, v0, Le/a/a/e/c;->t:Ls1/g;

    const v11, 0x7f0a130d

    .line 8
    invoke-static {v0, v11}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v11

    iput-object v11, v0, Le/a/a/e/c;->u:Ls1/g;

    const v12, 0x7f0a130c

    .line 9
    invoke-static {v0, v12}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v12

    iput-object v12, v0, Le/a/a/e/c;->v:Ls1/g;

    const v13, 0x7f0a09d8

    .line 10
    invoke-static {v0, v13}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v13

    iput-object v13, v0, Le/a/a/e/c;->w:Ls1/g;

    const v14, 0x7f0a1313

    .line 11
    invoke-static {v0, v14}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v14

    iput-object v14, v0, Le/a/a/e/c;->x:Ls1/g;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v5, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v15, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v15, Le/a/w1;

    invoke-interface {v15}, Le/a/w1;->s()Le/a/j2;

    move-result-object v5

    invoke-interface {v5}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v5

    const-string v15, "(context.applicationCont\u2026sGraph.featuresRegistry()"

    invoke-static {v5, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Le/a/a/e/c;->y:Le/a/u3/g;

    const v5, 0x7f0d008d

    .line 13
    invoke-virtual {v0, v5}, Le/m/a/g/e/d;->setContentView(I)V

    .line 14
    invoke-interface {v10}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v10, "textOtpSubTitle"

    .line 15
    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v15, "context.resources"

    invoke-static {v10, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v7

    .line 17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v17, v6

    const v6, 0x7f100041

    move-object/from16 v18, v9

    const v9, 0x7f120c30

    .line 18
    invoke-static {v10, v6, v9, v7}, Le/a/c/p/a;->j(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v7, v2, v1}, Le/a/c/p/a;->p(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-interface {v12}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "textPromotionalSubTitle"

    .line 21
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 24
    invoke-static {v10, v6, v9, v2}, Le/a/c/p/a;->j(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2, v3, v1}, Le/a/c/p/a;->p(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-interface {v14}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v5, "txtSpamSubtitle"

    .line 27
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    .line 30
    invoke-static {v5, v6, v9, v10}, Le/a/c/p/a;->j(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-static {v5, v4, v1}, Le/a/c/p/a;->p(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, v0, Le/a/a/e/c;->y:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    .line 33
    invoke-interface {v13}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v5, "imgPromotional"

    .line 34
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 35
    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v5, "textPromotionalTitle"

    .line 36
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 37
    invoke-interface {v12}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 38
    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/c;->g()Landroid/view/View;

    move-result-object v2

    const-string v5, "btnPreviewPromotional"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 40
    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v2, "btnPreviewOtp"

    .line 41
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/c;->g()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 43
    invoke-interface/range {v18 .. v18}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v2, "btnPreviewSpam"

    .line 44
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 45
    invoke-interface/range {v17 .. v17}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 46
    new-instance v2, Le/a/a/e/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Le/a/a/e/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-interface/range {v16 .. v16}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 48
    new-instance v2, Le/a/a/e/c$b;

    move-object/from16 v3, p5

    invoke-direct {v2, v0, v3}, Le/a/a/e/c$b;-><init>(Le/a/a/e/c;Le/a/a/e/s;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 50
    new-instance v2, Le/a/a/e/c$a;

    invoke-direct {v2, v6, v3}, Le/a/a/e/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Le/a/a/e/c;->g()Landroid/view/View;

    move-result-object v1

    new-instance v2, Le/a/a/e/c$a;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Le/a/a/e/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-interface/range {v18 .. v18}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 53
    new-instance v2, Le/a/a/e/c$a;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Le/a/a/e/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/e/c;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
