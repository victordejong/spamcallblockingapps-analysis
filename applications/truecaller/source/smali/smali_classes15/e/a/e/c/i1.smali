.class public Le/a/e/c/i1;
.super Ln3/b/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c/i1$a;
    }
.end annotation


# instance fields
.field public final d:Landroidx/appcompat/widget/AppCompatEditText;

.field public final e:Landroid/widget/RadioGroup;

.field public final f:Landroid/widget/TextView;

.field public g:Le/a/e/c/i1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 5

    .line 1
    invoke-static {p1}, Le/a/l4/k;->D(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ln3/b/a/g;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0107

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a1245

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Le/a/e/c/i1;->f:Landroid/widget/TextView;

    const v2, 0x7f0a0a39

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v2, p0, Le/a/e/c/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    const v3, 0x7f0a0dd0

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Le/a/e/c/i1;->e:Landroid/widget/RadioGroup;

    const/4 v4, 0x1

    .line 7
    invoke-static {v3, p4, v4}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 8
    invoke-static {v2, p3, v4}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 9
    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f12002f

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    iget-object p2, p0, Ln3/b/a/g;->c:Landroidx/appcompat/app/AlertController;

    .line 12
    iput-object p1, p2, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 13
    iput v0, p2, Landroidx/appcompat/app/AlertController;->i:I

    .line 14
    iput-boolean v0, p2, Landroidx/appcompat/app/AlertController;->n:Z

    const/4 p1, -0x1

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f120011

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Le/a/e/c/b;

    invoke-direct {p3, p0}, Le/a/e/c/b;-><init>(Le/a/e/c/i1;)V

    invoke-virtual {p0, p1, p2, p3}, Ln3/b/a/g;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1206fb

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Le/a/e/c/c;

    invoke-direct {p3, p0}, Le/a/e/c/c;-><init>(Le/a/e/c/i1;)V

    invoke-virtual {p0, p1, p2, p3}, Ln3/b/a/g;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final g()Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/i1;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/e/c/i1;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a02aa

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object v0

    :cond_0
    const v1, 0x7f0a0d10

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->PERSON:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object v0
.end method
