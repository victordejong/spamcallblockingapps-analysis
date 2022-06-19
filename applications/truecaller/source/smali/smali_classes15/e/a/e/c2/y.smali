.class public Le/a/e/c2/y;
.super Ln3/l/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c2/y$a;
    }
.end annotation


# instance fields
.field public final A:Le/a/o5/s1;

.field public final B:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final C:Le/a/p5/c0;

.field public final D:Le/a/k3/h;

.field public final E:Le/a/k3/l/f;

.field public final J:Le/a/o5/b0;

.field public final K:Le/a/e4/b0;

.field public final i:Landroid/view/LayoutInflater;

.field public final j:Landroid/graphics/drawable/Drawable;

.field public final k:Landroid/graphics/drawable/Drawable;

.field public final l:Landroid/graphics/drawable/Drawable;

.field public final m:Landroid/graphics/drawable/Drawable;

.field public final n:Landroid/graphics/drawable/Drawable;

.field public final o:Landroid/graphics/drawable/Drawable;

.field public final p:Landroid/graphics/drawable/Drawable;

.field public final q:Landroid/graphics/drawable/Drawable;

.field public final r:Landroid/graphics/drawable/Drawable;

.field public final s:Landroid/graphics/drawable/Drawable;

.field public final t:Landroid/graphics/drawable/Drawable;

.field public final u:Landroid/graphics/drawable/Drawable;

.field public final v:I

.field public final w:I

.field public final x:Landroid/content/res/ColorStateList;

.field public final y:Landroid/content/res/ColorStateList;

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingManager;Landroid/database/Cursor;Z)V
    .locals 2

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ln3/l/a/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->i:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Le/a/e/c2/y;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Le/a/w1;

    invoke-interface {p2}, Le/a/w1;->s()Le/a/j2;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->K:Le/a/e4/b0;

    .line 6
    invoke-interface {p2}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object p3

    invoke-interface {p3}, Le/a/e4/p;->h()Z

    move-result p3

    iput-boolean p3, p0, Le/a/e/c2/y;->z:Z

    .line 7
    invoke-interface {p2}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->A:Le/a/o5/s1;

    .line 8
    invoke-interface {p2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->C:Le/a/p5/c0;

    .line 9
    new-instance p3, Le/a/k3/a;

    invoke-direct {p3}, Le/a/k3/a;-><init>()V

    iput-object p3, p0, Le/a/e/c2/y;->D:Le/a/k3/h;

    .line 10
    invoke-interface {p2}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->E:Le/a/k3/l/f;

    .line 11
    invoke-interface {p2}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c2/y;->J:Le/a/o5/b0;

    const p2, 0x7f040722

    .line 12
    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Le/a/e/c2/y;->v:I

    const p2, 0x7f040728

    .line 13
    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Le/a/e/c2/y;->w:I

    const p2, 0x7f0403c8

    .line 14
    invoke-static {p1, p2}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Le/a/e/c2/y;->x:Landroid/content/res/ColorStateList;

    const p3, 0x7f0401a1

    .line 15
    invoke-static {p1, p3}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Le/a/e/c2/y;->y:Landroid/content/res/ColorStateList;

    .line 16
    sget-object p4, Le/a/b0/q/o;->a:Ln3/k/g/a;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0804f6

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 18
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->j:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f08055c

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 21
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->m:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 24
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->n:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f08059d

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 27
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->k:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 30
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->l:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0803a7

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 33
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->o:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f080568

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 36
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->p:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f08064a

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 39
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->q:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 42
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->r:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f08064d

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 45
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->s:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 48
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Le/a/e/c2/y;->t:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p4, 0x7f08083d

    invoke-virtual {p3, p4, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c2/y;->u:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v2, p3

    check-cast v2, Le/a/l0/u/d/b;

    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Le/a/e/c2/y$a;

    invoke-direct {v3, v1}, Le/a/e/c2/y$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast v3, Le/a/e/c2/y$a;

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 5
    iget-object v1, v3, Le/a/e/c2/y$a;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v3, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v1, v3, Le/a/e/c2/y$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, v3, Le/a/e/c2/y$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 10
    :cond_1
    iget-object v6, v0, Le/a/e/c2/y;->A:Le/a/o5/s1;

    invoke-static {v2, v6}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->resolve(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v6

    .line 11
    iget v7, v2, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v9, :cond_3

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v10

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v9

    .line 12
    :goto_2
    iget-object v11, v3, Le/a/e/c2/y$a;->a:Landroid/widget/TextView;

    .line 13
    iget-object v12, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v12, :cond_4

    .line 14
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 15
    :cond_4
    iget-object v12, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 16
    :goto_3
    sget v13, Le/a/o5/j0;->b:I

    .line 17
    invoke-static {v12}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-static {v11, v12}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 19
    iget-object v11, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    .line 20
    iget-object v12, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 21
    iget-object v13, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 22
    invoke-static {v13}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 23
    iget-object v13, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 24
    invoke-static {v13}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 25
    iget-object v13, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    goto :goto_4

    .line 26
    :cond_5
    iget-object v13, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    :goto_4
    if-eqz v13, :cond_a

    .line 27
    iget-object v14, v0, Le/a/e/c2/y;->C:Le/a/p5/c0;

    invoke-virtual {v6, v14}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getName(Le/a/p5/c0;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    .line 28
    iget-object v14, v0, Le/a/e/c2/y;->C:Le/a/p5/c0;

    iget-object v15, v0, Le/a/e/c2/y;->D:Le/a/k3/h;

    const-string v4, "normalizedNumber"

    .line 29
    invoke-static {v13, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "resourceProvider"

    invoke-static {v14, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "numberTypeLabelProvider"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_8

    .line 30
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    check-cast v5, Lcom/truecaller/data/entity/Number;

    const-string v8, "it"

    .line 32
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    const/4 v8, 0x3

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    .line 33
    :goto_6
    check-cast v12, Lcom/truecaller/data/entity/Number;

    if-eqz v12, :cond_8

    .line 34
    invoke-static {v12, v14, v15}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    :cond_9
    :goto_7
    if-nez v14, :cond_b

    .line 35
    iget-object v4, v0, Le/a/e/c2/y;->E:Le/a/k3/l/f;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v13, v5, v10

    invoke-interface {v4, v5}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 36
    iget-object v5, v0, Le/a/e/c2/y;->C:Le/a/p5/c0;

    iget-object v8, v0, Le/a/e/c2/y;->D:Le/a/k3/h;

    invoke-static {v4, v5, v8}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    .line 37
    :cond_b
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v5, v0, Le/a/e/c2/y;->J:Le/a/o5/b0;

    .line 41
    iget-wide v12, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 42
    invoke-interface {v5, v12, v13}, Le/a/o5/b0;->n(J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 43
    iget-wide v12, v2, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_c

    const-string v5, " ("

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v5, v0, Le/a/e/c2/y;->J:Le/a/o5/b0;

    invoke-interface {v5, v12, v13}, Le/a/o5/b0;->i(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v11, v4}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 51
    iget-object v4, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v1, v5}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v1

    .line 52
    sget-object v5, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {v4, v1, v10, v10, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 54
    iget-boolean v1, v0, Le/a/e/c2/y;->z:Z

    if-eqz v1, :cond_13

    .line 55
    iget-object v1, v2, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 56
    iget-object v4, v0, Le/a/e/c2/y;->K:Le/a/e4/b0;

    invoke-interface {v4, v1}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 57
    iget v1, v1, Lcom/truecaller/multisim/SimInfo;->a:I

    if-eqz v1, :cond_d

    if-ne v1, v9, :cond_13

    :cond_d
    if-nez v7, :cond_f

    .line 58
    iget v4, v2, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    goto :goto_9

    :cond_e
    move v4, v10

    goto :goto_a

    :cond_f
    :goto_9
    move v4, v9

    .line 59
    :goto_a
    iget-object v5, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    if-nez v1, :cond_11

    if-eqz v4, :cond_10

    .line 60
    iget-object v1, v0, Le/a/e/c2/y;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :cond_10
    iget-object v1, v0, Le/a/e/c2/y;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :cond_11
    if-eqz v4, :cond_12

    iget-object v1, v0, Le/a/e/c2/y;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :cond_12
    iget-object v1, v0, Le/a/e/c2/y;->s:Landroid/graphics/drawable/Drawable;

    :goto_b
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v5, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, v3, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 64
    :cond_13
    iget-object v1, v3, Le/a/e/c2/y$a;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_14

    iget v4, v0, Le/a/e/c2/y;->v:I

    goto :goto_c

    :cond_14
    iget v4, v0, Le/a/e/c2/y;->w:I

    :goto_c
    if-nez v1, :cond_15

    goto :goto_d

    .line 65
    :cond_15
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    :goto_d
    iget-object v1, v3, Le/a/e/c2/y$a;->c:Landroid/widget/ImageView;

    .line 67
    iget v4, v2, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 68
    iget v5, v2, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v4, v9, :cond_16

    .line 69
    iget-object v4, v0, Le/a/e/c2/y;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_16
    const/4 v7, 0x3

    if-ne v4, v7, :cond_17

    .line 70
    iget-object v4, v0, Le/a/e/c2/y;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_17
    if-ne v5, v9, :cond_18

    .line 71
    iget-object v4, v0, Le/a/e/c2/y;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_18
    const/4 v4, 0x2

    if-ne v5, v4, :cond_19

    .line 72
    iget-object v4, v0, Le/a/e/c2/y;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_19
    if-ne v5, v7, :cond_1a

    .line 73
    iget-object v4, v0, Le/a/e/c2/y;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    .line 74
    :goto_e
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v6}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 76
    iget-object v1, v3, Le/a/e/c2/y$a;->d:Landroid/widget/ImageView;

    iget-object v4, v0, Le/a/e/c2/y;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 77
    :cond_1b
    iget-object v1, v3, Le/a/e/c2/y$a;->d:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_f
    iget-object v1, v2, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v1, :cond_1c

    .line 79
    iget-object v2, v3, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v2, v3, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    new-instance v3, Le/a/e/c2/g;

    invoke-direct {v3, v0, v1}, Le/a/e/c2/g;-><init>(Le/a/e/c2/y;Lcom/truecaller/data/entity/CallRecording;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 81
    :cond_1c
    iget-object v1, v3, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, v3, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method public f(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c2/y;->i:Landroid/view/LayoutInflater;

    const p2, 0x7f0d038b

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
