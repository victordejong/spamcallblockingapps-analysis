.class public final Le/a/v/a/i0/f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/i0/c;
.implements Le/a/v/a/s0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J/\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Le/a/v/a/i0/f;",
        "Landroid/widget/LinearLayout;",
        "Le/a/v/a/i0/c;",
        "Le/a/v/a/s0/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "g5",
        "",
        "Le/a/v/a/i0/a;",
        "contactNumbers",
        "Lcom/truecaller/details_view/ui/numbers/SimData;",
        "primarySim",
        "secondarySim",
        "i5",
        "(Ljava/util/List;Lcom/truecaller/details_view/ui/numbers/SimData;Lcom/truecaller/details_view/ui/numbers/SimData;)V",
        "",
        "number",
        "e5",
        "(Ljava/lang/String;)V",
        "f5",
        "h5",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "Le/a/v/a/i0/b;",
        "a",
        "Le/a/v/a/i0/b;",
        "getPresenter",
        "()Le/a/v/a/i0/b;",
        "setPresenter",
        "(Le/a/v/a/i0/b;)V",
        "presenter",
        "Le/a/v/o/b;",
        "b",
        "Le/a/v/o/b;",
        "getConversationsRouter",
        "()Le/a/v/o/b;",
        "setConversationsRouter",
        "(Le/a/v/o/b;)V",
        "conversationsRouter",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/v/a/i0/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/v/o/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    :cond_1
    const-string p5, "context"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/v/l/b;

    invoke-interface {p2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p2

    invoke-interface {p2, p0}, Le/a/v/l/a;->p(Le/a/v/a/i0/f;)V

    .line 4
    sget p2, Lcom/truecaller/details_view/R$drawable;->selectable_background_outlined_view:I

    .line 5
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public K0(Le/a/v/a/s;)V
    .locals 26

    move-object/from16 v6, p1

    const-string v0, "detailsViewModel"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p0

    .line 1
    iget-object v1, v7, Le/a/v/a/i0/f;->a:Le/a/v/a/i0/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    move-object v8, v1

    check-cast v8, Le/a/v/a/i0/d;

    .line 2
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v6, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/i0/c;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Le/a/v/a/i0/c;->g5()V

    goto/16 :goto_11

    .line 6
    :cond_0
    iget-object v0, v8, Le/a/v/a/i0/d;->b:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v8, Le/a/v/a/i0/d;->b:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    if-eqz v0, :cond_5

    .line 7
    iget-object v0, v8, Le/a/v/a/i0/d;->c:Le/a/v/p/g;

    invoke-interface {v0}, Le/a/v/p/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v3, v8, Le/a/v/a/i0/d;->b:Le/a/e4/p;

    invoke-interface {v3, v0}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ls1/k;

    sget-object v3, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_UNKNOWN:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-direct {v0, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Ls1/k;

    sget-object v2, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_2:Lcom/truecaller/details_view/ui/numbers/SimData;

    sget-object v3, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_1:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Ls1/k;

    sget-object v2, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_1:Lcom/truecaller/details_view/ui/numbers/SimData;

    sget-object v3, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_2:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_5
    new-instance v0, Ls1/k;

    sget-object v3, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_UNKNOWN:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-direct {v0, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move-object v10, v0

    .line 14
    iget-object v0, v6, Le/a/v/a/s;->i:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/v/a/v;

    .line 18
    iget-object v4, v4, Le/a/v/a/v;->a:Lcom/truecaller/data/entity/Number;

    .line 19
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->r()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Le/a/v/a/v;

    .line 23
    iget-object v2, v6, Le/a/v/a/s;->h:Lcom/truecaller/data/entity/HistoryEvent;

    .line 24
    iget-object v14, v0, Le/a/v/a/v;->a:Lcom/truecaller/data/entity/Number;

    .line 25
    invoke-virtual {v14}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v3, "number.numberForDisplay!!"

    invoke-static {v15, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v6, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 27
    instance-of v3, v3, Le/a/v/a/d$f$c;

    if-eqz v3, :cond_8

    iget-object v1, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$string;->details_view_caller_marked_as_spam:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 28
    :cond_8
    iget-object v3, v8, Le/a/v/a/i0/d;->e:Le/a/k3/l/f;

    invoke-interface {v3, v14}, Le/a/k3/l/f;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v14}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_b

    if-eqz v4, :cond_a

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, v9

    goto :goto_6

    :cond_a
    :goto_5
    move v5, v1

    :goto_6
    if-nez v5, :cond_b

    const-string v1, " \u00b7 "

    invoke-static {v3, v1, v4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 31
    :cond_b
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_c

    move-object v1, v3

    :goto_7
    move-object/from16 v17, v1

    goto :goto_9

    :cond_c
    if-eqz v4, :cond_e

    .line 32
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v1, v9

    :cond_e
    :goto_8
    if-nez v1, :cond_f

    move-object/from16 v17, v4

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    .line 33
    :goto_9
    iget-object v1, v6, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 34
    invoke-virtual {v14}, Lcom/truecaller/data/entity/RowEntity;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 35
    sget-object v3, Le/a/v/a/d$a;->a:Le/a/v/a/d$a;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v1, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v1, v3}, Le/a/p5/h0;->l(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 36
    :cond_10
    sget-object v3, Le/a/v/a/d$b;->a:Le/a/v/a/d$b;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v1, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$color;->tcx_goldGradientSum:I

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 37
    :cond_11
    sget-object v3, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v1, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$color;->tcx_priority_badge:I

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 38
    :cond_12
    sget-object v3, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$color;->tcx_verifiedBusinessDefaultLabel:I

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_14

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    new-instance v3, Le/a/v/a/i0/d$a;

    .line 41
    iget-object v4, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v5, Lcom/truecaller/details_view/R$string;->details_view_contact_number_default:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026w_contact_number_default)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v5, Lcom/truecaller/details_view/R$drawable;->ic_default_number:I

    .line 43
    invoke-direct {v3, v4, v5, v1}, Le/a/v/a/i0/d$a;-><init>(Ljava/lang/String;II)V

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_15

    move-object/from16 v24, v3

    goto :goto_e

    .line 44
    :cond_15
    invoke-virtual {v14}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    if-eqz v2, :cond_16

    .line 45
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    .line 46
    :goto_c
    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    if-lt v11, v1, :cond_17

    .line 47
    new-instance v1, Le/a/v/a/i0/d$a;

    .line 48
    iget-object v2, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$string;->details_view_contact_number_recent:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026ew_contact_number_recent)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_recent:I

    .line 50
    iget-object v4, v8, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    sget v5, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v4, v5}, Le/a/p5/h0;->l(I)I

    move-result v4

    .line 51
    invoke-direct {v1, v2, v3, v4}, Le/a/v/a/i0/d$a;-><init>(Ljava/lang/String;II)V

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v24, v1

    .line 52
    :goto_e
    new-instance v7, Le/a/v/a/i0/a;

    .line 53
    iget-object v1, v6, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 54
    instance-of v2, v1, Le/a/v/a/d$d;

    if-eqz v2, :cond_18

    goto :goto_f

    .line 55
    :cond_18
    instance-of v2, v1, Le/a/v/a/d$g;

    if-eqz v2, :cond_19

    goto :goto_f

    .line 56
    :cond_19
    instance-of v1, v1, Le/a/v/a/d$f$d;

    if-eqz v1, :cond_1a

    :goto_f
    move/from16 v18, v9

    goto :goto_10

    .line 57
    :cond_1a
    iget-boolean v0, v0, Le/a/v/a/v;->b:Z

    move/from16 v18, v0

    .line 58
    :goto_10
    new-instance v19, Lf2;

    const/4 v1, 0x0

    move-object/from16 v0, v19

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lf2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    new-instance v5, Ld3;

    invoke-direct {v5, v9, v8, v15}, Ld3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    new-instance v4, Le/a/v/a/i0/e;

    invoke-direct {v4, v8, v6, v14}, Le/a/v/a/i0/e;-><init>(Le/a/v/a/i0/d;Le/a/v/a/s;Lcom/truecaller/data/entity/Number;)V

    .line 61
    new-instance v3, Ld3;

    const/4 v2, 0x1

    invoke-direct {v3, v2, v8, v15}, Ld3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    new-instance v23, Lf2;

    const/4 v1, 0x1

    move-object/from16 v0, v23

    move/from16 v25, v2

    move-object v2, v8

    move-object/from16 v22, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v4

    move-object v4, v14

    move-object v14, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lf2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v15

    move-object v15, v7

    move-object/from16 v16, v0

    move-object/from16 v20, v14

    .line 63
    invoke-direct/range {v15 .. v24}, Le/a/v/a/i0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZLs1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;Le/a/v/a/i0/d$a;)V

    .line 64
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move/from16 v1, v25

    goto/16 :goto_4

    .line 65
    :cond_1b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    iget-object v0, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/i0/c;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Le/a/v/a/i0/c;->g5()V

    goto :goto_11

    .line 67
    :cond_1c
    iget-object v0, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/i0/c;

    if-eqz v0, :cond_1d

    .line 68
    iget-object v1, v10, Ls1/k;->a:Ljava/lang/Object;

    .line 69
    check-cast v1, Lcom/truecaller/details_view/ui/numbers/SimData;

    .line 70
    iget-object v2, v10, Ls1/k;->b:Ljava/lang/Object;

    .line 71
    check-cast v2, Lcom/truecaller/details_view/ui/numbers/SimData;

    .line 72
    invoke-interface {v0, v12, v1, v2}, Le/a/v/a/i0/c;->i5(Ljava/util/List;Lcom/truecaller/details_view/ui/numbers/SimData;Lcom/truecaller/details_view/ui/numbers/SimData;)V

    :cond_1d
    :goto_11
    return-void

    :cond_1e
    const-string v0, "presenter"

    .line 73
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e5(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/i0/f;->b:Le/a/v/o/b;

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/a/m0/a1$k;->a1(Landroid/view/View;)Ln3/b/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/v/o/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "conversationsRouter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f5(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g5()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public final getConversationsRouter()Le/a/v/o/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/i0/f;->b:Le/a/v/o/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "conversationsRouter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPresenter()Le/a/v/a/i0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/i0/f;->a:Le/a/v/a/i0/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h5()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_copied_to_clipboard:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public i5(Ljava/util/List;Lcom/truecaller/details_view/ui/numbers/SimData;Lcom/truecaller/details_view/ui/numbers/SimData;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/v/a/i0/a;",
            ">;",
            "Lcom/truecaller/details_view/ui/numbers/SimData;",
            "Lcom/truecaller/details_view/ui/numbers/SimData;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "contactNumbers"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "primarySim"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_3

    check-cast v5, Le/a/v/a/i0/a;

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v4, v7, :cond_0

    move v4, v8

    goto :goto_1

    :cond_0
    move v4, v3

    .line 5
    :goto_1
    new-instance v7, Le/a/v/a/i0/i;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v9, "context"

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Le/a/v/a/i0/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    const-string v9, "number"

    .line 6
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "primarySimData"

    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->f:Landroid/widget/TextView;

    const-string v10, "binding.number"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v10, v5, Le/a/v/a/i0/a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->h:Landroid/widget/TextView;

    const-string v10, "binding.numberDetails"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v10, v5, Le/a/v/a/i0/a;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->i:Landroid/widget/ImageView;

    const-string v10, "binding.primarySimButton"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v5, v0}, Le/a/v/a/i0/i;->f1(Landroid/widget/ImageView;Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V

    .line 14
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->j:Landroid/widget/ImageView;

    const-string v10, "binding.secondarySimButton"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p3

    invoke-virtual {v7, v9, v5, v10}, Le/a/v/a/i0/i;->f1(Landroid/widget/ImageView;Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V

    .line 15
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->b:Landroid/widget/ImageView;

    const-string v11, "binding.callContextButton"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-boolean v12, v5, Le/a/v/a/i0/a;->c:Z

    .line 17
    invoke-static {v9, v12}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 18
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->b:Landroid/widget/ImageView;

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0xd

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->b:Landroid/widget/ImageView;

    new-instance v11, Ll;

    invoke-direct {v11, v3, v5}, Ll;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->k:Landroid/widget/ImageView;

    new-instance v11, Ll;

    invoke-direct {v11, v8, v5}, Ll;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v9, Le/a/v/a/i0/g;

    invoke-direct {v9, v5, v0}, Le/a/v/a/i0/g;-><init>(Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v9, Le/a/v/a/i0/h;

    invoke-direct {v9, v5}, Le/a/v/a/i0/h;-><init>(Le/a/v/a/i0/a;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    iget-object v9, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v9, v9, Le/a/v/k/r;->e:Landroid/view/View;

    const-string v11, "binding.divider"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 24
    iget-object v4, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v4, v4, Le/a/v/k/r;->g:Landroid/widget/LinearLayout;

    const-string v9, "binding.numberCategoryContainer"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v9, v5, Le/a/v/a/i0/a;->i:Le/a/v/a/i0/d$a;

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v8, v3

    .line 26
    :goto_2
    invoke-static {v4, v8}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 27
    iget-object v4, v5, Le/a/v/a/i0/a;->i:Le/a/v/a/i0/d$a;

    if-eqz v4, :cond_2

    .line 28
    iget-object v5, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v5, v5, Le/a/v/k/r;->c:Landroid/widget/ImageView;

    .line 29
    iget v8, v4, Le/a/v/a/i0/d$a;->b:I

    .line 30
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v5, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v5, v5, Le/a/v/k/r;->c:Landroid/widget/ImageView;

    const-string v8, "binding.categoryIcon"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget v8, v4, Le/a/v/a/i0/d$a;->c:I

    .line 33
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object v5, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v5, v5, Le/a/v/k/r;->d:Landroid/widget/TextView;

    const-string v8, "binding.categoryLabel"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v8, v4, Le/a/v/a/i0/d$a;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v5, v7, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    iget-object v5, v5, Le/a/v/k/r;->d:Landroid/widget/TextView;

    .line 38
    iget v4, v4, Le/a/v/a/i0/d$a;->c:I

    .line 39
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    move-object v4, p0

    .line 40
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v6

    goto/16 :goto_0

    :cond_3
    move-object v4, p0

    .line 41
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    move-object v4, p0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/i0/f;->a:Le/a/v/a/i0/b;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/i0/f;->a:Le/a/v/a/i0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setConversationsRouter(Le/a/v/o/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/i0/f;->b:Le/a/v/o/b;

    return-void
.end method

.method public final setPresenter(Le/a/v/a/i0/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/i0/f;->a:Le/a/v/a/i0/b;

    return-void
.end method
