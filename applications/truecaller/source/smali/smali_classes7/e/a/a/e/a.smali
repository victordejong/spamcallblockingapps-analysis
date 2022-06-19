.class public final Le/a/a/e/a;
.super Ln3/b/a/p;
.source "SourceFile"


# instance fields
.field public c:Le/a/a/i0;

.field public d:Le/a/q2/a;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;

.field public final j:Ls1/g;

.field public final k:Lcom/truecaller/messaging/inboxcleanup/Mode;

.field public final l:Z

.field public final m:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/Mode;ZLs1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/messaging/inboxcleanup/Mode;",
            "Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1301f7

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Le/a/a/e/a;->k:Lcom/truecaller/messaging/inboxcleanup/Mode;

    iput-boolean p3, p0, Le/a/a/e/a;->l:Z

    iput-object p4, p0, Le/a/a/e/a;->m:Ls1/z/b/a;

    const p1, 0x7f0a0260

    .line 2
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->e:Ls1/g;

    const p1, 0x7f0a0272

    .line 3
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->f:Ls1/g;

    const p1, 0x7f0a0273

    .line 4
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->g:Ls1/g;

    const p1, 0x7f0a0274

    .line 5
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->h:Ls1/g;

    const p1, 0x7f0a0275

    .line 6
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->i:Ls1/g;

    const p1, 0x7f0a1316

    .line 7
    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->j:Ls1/g;

    return-void
.end method

.method public static final d(Le/a/a/e/a;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/a/e/a;->k:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "settings"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, v0, Le/a/a/e/a;->l:Z

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Le/a/a/i0;->H1(I)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 4
    :cond_2
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Le/a/a/i0;->B1(I)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 5
    :cond_4
    iget-boolean v2, v0, Le/a/a/e/a;->l:Z

    if-eqz v2, :cond_6

    .line 6
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Le/a/a/i0;->f1(I)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 7
    :cond_6
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Le/a/a/i0;->J2(I)V

    goto :goto_0

    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 8
    :cond_8
    iget-boolean v2, v0, Le/a/a/e/a;->l:Z

    if-eqz v2, :cond_a

    .line 9
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Le/a/a/i0;->w0(I)V

    goto :goto_0

    :cond_9
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 10
    :cond_a
    iget-object v2, v0, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v2, :cond_13

    invoke-interface {v2, v1}, Le/a/a/i0;->n4(I)V

    .line 11
    :goto_0
    iget-object v2, v0, Le/a/a/e/a;->k:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_d

    if-eq v2, v5, :cond_c

    if-ne v2, v4, :cond_b

    const-string v2, "spam"

    goto :goto_1

    .line 12
    :cond_b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_c
    const-string v2, "promotional"

    goto :goto_1

    :cond_d
    const-string v2, "otp"

    :goto_1
    move-object v13, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x7

    if-eq v1, v2, :cond_10

    const/16 v2, 0xf

    if-eq v1, v2, :cond_f

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_e

    const-string v1, "none"

    goto :goto_2

    :cond_e
    const-string v1, "30 days"

    goto :goto_2

    :cond_f
    const-string v1, "15 days"

    goto :goto_2

    :cond_10
    const-string v1, "7 days"

    goto :goto_2

    :cond_11
    const-string v1, "all"

    :goto_2
    move-object/from16 v19, v1

    .line 13
    iget-object v1, v0, Le/a/a/e/a;->d:Le/a/q2/a;

    if-eqz v1, :cond_12

    const-string v2, "Ci2a-ChangeDeleteFrequency"

    const-string v3, "type"

    .line 14
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v12, "category"

    const-string v15, "name"

    const-string v17, "value"

    const-string v18, "frequency"

    move-object v7, v12

    move-object v8, v15

    move-object v9, v13

    move-object/from16 v10, v17

    move-object v11, v3

    move-object/from16 v14, v18

    move-object/from16 v16, v19

    .line 15
    invoke-static/range {v7 .. v19}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 16
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v2

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/p;->dismiss()V

    return-void

    :cond_12
    const-string v0, "analytics"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 20
    :cond_13
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public final e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/e/a;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/e/a;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/a/e/a;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/p;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d011a

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/p;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object p1

    const-string v2, "(context.applicationCont\u2026).objectsGraph.settings()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/e/a;->c:Le/a/a/i0;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/a;->d:Le/a/q2/a;

    .line 5
    iget-object p1, p0, Le/a/a/e/a;->k:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "txtTitle"

    if-eqz p1, :cond_2

    const-string v4, "btnAll"

    const-string v5, "btnDays7"

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/a/a/e/a;->g()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120c3a

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Le/a/a/e/a;->f()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p0}, Le/a/a/e/a;->e()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/a/a/e/a;->g()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120c39

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Le/a/a/e/a;->f()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 11
    invoke-virtual {p0}, Le/a/a/e/a;->e()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/a/a/e/a;->g()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120c38

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Le/a/a/e/a;->g:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v3, "btnDays30"

    .line 14
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 15
    :goto_0
    iget-object p1, p0, Le/a/a/e/a;->g:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 16
    new-instance v3, Le/a/a/e/a$a;

    invoke-direct {v3, v1, p0}, Le/a/a/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Le/a/a/e/a;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 18
    new-instance v1, Le/a/a/e/a$a;

    invoke-direct {v1, v2, p0}, Le/a/a/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0}, Le/a/a/e/a;->f()Landroid/view/View;

    move-result-object p1

    new-instance v1, Le/a/a/e/a$a;

    invoke-direct {v1, v0, p0}, Le/a/a/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Le/a/a/e/a;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 21
    new-instance v0, Le/a/a/e/a$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Le/a/a/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0}, Le/a/a/e/a;->e()Landroid/view/View;

    move-result-object p1

    new-instance v0, Le/a/a/e/a$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Le/a/a/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p1, Le/a/a/e/a$b;

    invoke-direct {p1, p0}, Le/a/a/e/a$b;-><init>(Le/a/a/e/a;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 24
    iget-object p1, p0, Le/a/a/e/a;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "btnDaysNone"

    .line 25
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le/a/a/e/a;->l:Z

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
