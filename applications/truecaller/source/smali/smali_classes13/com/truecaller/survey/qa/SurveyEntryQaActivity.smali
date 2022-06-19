.class public final Lcom/truecaller/survey/qa/SurveyEntryQaActivity;
.super Le/a/e5/a/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR(\u0010\u0013\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR(\u0010 \u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u001c\u0010\u000c\u0012\u0004\u0008\u001f\u0010\u0012\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/survey/qa/SurveyEntryQaActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "onSupportNavigateUp",
        "()Z",
        "Ls1/w/f;",
        "e",
        "Ls1/w/f;",
        "getIoContext",
        "()Ls1/w/f;",
        "setIoContext",
        "(Ls1/w/f;)V",
        "getIoContext$annotations",
        "()V",
        "ioContext",
        "Le/a/j/c/d/b;",
        "d",
        "Le/a/j/c/d/b;",
        "getSurveysDao",
        "()Le/a/j/c/d/b;",
        "setSurveysDao",
        "(Le/a/j/c/d/b;)V",
        "surveysDao",
        "f",
        "getUiContext",
        "setUiContext",
        "getUiContext$annotations",
        "uiContext",
        "<init>",
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

.field public e:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e5/a/b;-><init>()V

    return-void
.end method

.method public static final pa(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    .line 1
    const-class v1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

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

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a018a

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_3

    const v1, 0x7f0a06c5

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_3

    const v1, 0x7f0a0a3f

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_3

    const v1, 0x7f0a1270

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/Toolbar;

    if-eqz v8, :cond_3

    .line 9
    new-instance v1, Le/a/m3/b;

    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/m3/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroidx/appcompat/widget/Toolbar;)V

    const-string p1, "ActivitySurveyEntryBindi\u2026s).toThemeInflater(true))"

    .line 10
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, v1, Le/a/m3/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 13
    iget-object p1, v1, Le/a/m3/b;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 14
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const v2, 0x7f0806bf

    invoke-virtual {p1, v2}, Ln3/b/a/a;->s(I)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "Survey Entry"

    invoke-virtual {p1, v0}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    .line 17
    :cond_2
    iget-object p1, v1, Le/a/m3/b;->c:Landroid/widget/Button;

    new-instance v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity;Le/a/m3/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
