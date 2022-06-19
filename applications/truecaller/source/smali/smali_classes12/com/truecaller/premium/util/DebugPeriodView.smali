.class public final Lcom/truecaller/premium/util/DebugPeriodView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/util/DebugPeriodView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0019J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/premium/util/DebugPeriodView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "title",
        "Ls1/s;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "Lw3/b/a/u;",
        "period",
        "setPeriod",
        "(Lw3/b/a/u;)V",
        "getPeriod",
        "()Lw3/b/a/u;",
        "Landroid/widget/EditText;",
        "u",
        "Landroid/widget/EditText;",
        "numberView",
        "Landroid/widget/TextView;",
        "t",
        "Landroid/widget/TextView;",
        "titleView",
        "Landroid/widget/Spinner;",
        "v",
        "Landroid/widget/Spinner;",
        "periodLengthView",
        "a",
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
.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/EditText;

.field public final v:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d04b2

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0a1245

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById(R.id.title)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/truecaller/premium/util/DebugPeriodView;->t:Landroid/widget/TextView;

    const p2, 0x7f0a0c68

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById(R.id.number)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    const p2, 0x7f0a0d0c

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById(R.id.periodLength)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    .line 7
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/truecaller/premium/util/DebugPeriodView$a;->values()[Lcom/truecaller/premium/util/DebugPeriodView$a;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public final getPeriod()Lw3/b/a/u;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/truecaller/premium/util/DebugPeriodView$a;->values()[Lcom/truecaller/premium/util/DebugPeriodView$a;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_2

    if-ne v1, v8, :cond_1

    .line 3
    new-instance v1, Lw3/b/a/u;

    const/16 v11, 0x9

    new-array v11, v11, [I

    aput v0, v11, v6

    aput v6, v11, v10

    aput v6, v11, v9

    aput v6, v11, v8

    aput v6, v11, v5

    aput v6, v11, v4

    aput v6, v11, v3

    aput v6, v11, v2

    aput v6, v11, v7

    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lw3/b/a/u;-><init>([ILw3/b/a/v;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 5
    :cond_2
    new-instance v1, Lw3/b/a/u;

    new-array v7, v7, [I

    aput v6, v7, v6

    aput v0, v7, v10

    aput v6, v7, v9

    aput v6, v7, v8

    aput v6, v7, v5

    aput v6, v7, v4

    aput v6, v7, v3

    aput v6, v7, v2

    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lw3/b/a/u;-><init>([ILw3/b/a/v;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Lw3/b/a/u;

    new-array v7, v7, [I

    aput v6, v7, v6

    aput v6, v7, v10

    aput v0, v7, v9

    aput v6, v7, v8

    aput v6, v7, v5

    aput v6, v7, v4

    aput v6, v7, v3

    aput v6, v7, v2

    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lw3/b/a/u;-><init>([ILw3/b/a/v;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {v0}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final setPeriod(Lw3/b/a/u;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lw3/b/a/u;->x()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lw3/b/a/u;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lw3/b/a/u;->v()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lw3/b/a/u;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lw3/b/a/u;->w()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lw3/b/a/u;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lw3/b/a/u;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/premium/util/DebugPeriodView;->v:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/util/DebugPeriodView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
