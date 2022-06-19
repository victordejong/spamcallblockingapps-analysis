.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity;
.super Le/a/e5/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/survey/qa/SurveyListQaActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0017\u001a\u00060\u0014R\u00020\u00008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/survey/qa/SurveyListQaActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "Le/a/m3/c;",
        "f",
        "Le/a/m3/c;",
        "binding",
        "Lcom/truecaller/survey/qa/SurveyListQaActivity$a;",
        "g",
        "Lcom/truecaller/survey/qa/SurveyListQaActivity$a;",
        "surveyPagerAdapter",
        "Le/a/j/c/d/b;",
        "d",
        "Le/a/j/c/d/b;",
        "getSurveysDao",
        "()Le/a/j/c/d/b;",
        "setSurveysDao",
        "(Le/a/j/c/d/b;)V",
        "surveysDao",
        "Lq3/b/l/a;",
        "e",
        "Lq3/b/l/a;",
        "json",
        "<init>",
        "()V",
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
.field public d:Le/a/j/c/d/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Lq3/b/l/a;

.field public f:Le/a/m3/c;

.field public g:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Le/a/e5/a/d;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/survey/qa/SurveyListQaActivity$b;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity$b;

    .line 3
    sget-object v1, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    const-string v2, "from"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builderAction"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lq3/b/l/c;

    .line 6
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 7
    invoke-direct {v2, v1}, Lq3/b/l/c;-><init>(Lq3/b/l/l/c;)V

    .line 8
    invoke-interface {v0, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean v0, v2, Lq3/b/l/c;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lq3/b/l/c;->i:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-boolean v0, v2, Lq3/b/l/c;->e:Z

    const-string v1, "    "

    if-nez v0, :cond_3

    .line 11
    iget-object v0, v2, Lq3/b/l/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    iget-object v0, v2, Lq3/b/l/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, v2, Lq3/b/l/c;->f:Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    :goto_3
    if-nez v5, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v0, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    .line 15
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lq3/b/l/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_9
    :goto_5
    new-instance v0, Lq3/b/l/l/c;

    .line 18
    iget-boolean v3, v2, Lq3/b/l/c;->a:Z

    iget-boolean v4, v2, Lq3/b/l/c;->b:Z

    iget-boolean v5, v2, Lq3/b/l/c;->c:Z

    .line 19
    iget-boolean v6, v2, Lq3/b/l/c;->d:Z

    iget-boolean v7, v2, Lq3/b/l/c;->e:Z

    iget-object v8, v2, Lq3/b/l/c;->f:Ljava/lang/String;

    .line 20
    iget-boolean v9, v2, Lq3/b/l/c;->g:Z

    iget-boolean v10, v2, Lq3/b/l/c;->h:Z

    .line 21
    iget-object v11, v2, Lq3/b/l/c;->i:Ljava/lang/String;

    iget-boolean v12, v2, Lq3/b/l/c;->j:Z

    iget-object v13, v2, Lq3/b/l/c;->k:Lq3/b/m/b;

    move-object v2, v0

    .line 22
    invoke-direct/range {v2 .. v13}, Lq3/b/l/l/c;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLq3/b/m/b;)V

    .line 23
    new-instance v1, Lq3/b/l/g;

    invoke-direct {v1, v0}, Lq3/b/l/g;-><init>(Lq3/b/l/l/c;)V

    .line 24
    iput-object v1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->e:Lq3/b/l/a;

    return-void
.end method

.method public static final synthetic pa(Lcom/truecaller/survey/qa/SurveyListQaActivity;)Le/a/m3/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->f:Le/a/m3/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final qa(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    .line 1
    const-class v1, Lcom/truecaller/survey/qa/SurveyListQaActivity;

    .line 2
    invoke-static {p0, v0, p0, v1}, Le/d/c/a/a;->q0(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(this)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0054

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a018a

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_3

    const v1, 0x7f0a1106

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_3

    const v1, 0x7f0a1270

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_3

    .line 8
    new-instance v1, Le/a/m3/c;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, p1, v3, v4, v5}, Le/a/m3/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/viewpager2/widget/ViewPager2;Landroidx/appcompat/widget/Toolbar;)V

    const-string p1, "ActivitySurveyListBindin\u2026s).toThemeInflater(true))"

    .line 9
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->f:Le/a/m3/c;

    .line 10
    iget-object p1, v1, Le/a/m3/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->f:Le/a/m3/c;

    if-eqz p1, :cond_2

    iget-object p1, p1, Le/a/m3/c;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 13
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f0806bf

    invoke-virtual {p1, v1}, Ln3/b/a/a;->s(I)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 15
    :cond_1
    invoke-static {p0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v3

    new-instance p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

    invoke-direct {p1, p0, v2}, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ls1/w/d;)V

    const-string v0, "block"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v6, Ln3/v/v;

    invoke-direct {v6, v3, p1, v2}, Ln3/v/v;-><init>(Ln3/v/w;Ls1/z/b/p;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_2
    const-string p1, "binding"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a049e

    if-ne v0, v1, :cond_2

    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->g:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->f:Le/a/m3/c;

    if-eqz v3, :cond_0

    iget-object v3, v3, Le/a/m3/c;->b:Landroidx/viewpager2/widget/ViewPager2;

    const-string v4, "binding.surveyPager"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    .line 4
    iget-object v1, v1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/surveys/data/local/SurveyEntity;

    .line 5
    invoke-static {v1, v2}, Le/a/l4/k;->r0(Lcom/truecaller/surveys/data/local/SurveyEntity;Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->e:Lq3/b/l/a;

    sget-object v3, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    .line 8
    invoke-virtual {v2, v3, v1}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "survey"

    .line 9
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_0
    const-string p1, "binding"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "surveyPagerAdapter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
