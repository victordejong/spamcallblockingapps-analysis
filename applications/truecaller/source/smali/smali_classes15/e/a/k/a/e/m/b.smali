.class public final Le/a/k/a/e/m/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/m/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/m/b;->b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    iput-object p2, p0, Le/a/k/a/e/m/b;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/k/a/e/m/b;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, v0, Le/a/k/a/e/m/b;->b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    const-string v2, "parent"

    .line 2
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget v2, Lcom/truecaller/videocallerid/R$layout;->view_video_caller_id_manage_preferences:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactDesc:I

    .line 5
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 6
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactDivider:I

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactOptionGroup:I

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    .line 10
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactOverlay:I

    .line 11
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 12
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactRadioBtn:I

    .line 13
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 14
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactTitle:I

    .line 15
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 16
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyOneOverlay:I

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 18
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyOneRadioBtn:I

    .line 19
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v11, :cond_0

    .line 20
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyOneTitle:I

    .line 21
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 22
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyoneDesc:I

    .line 23
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 24
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyoneDivider:I

    .line 25
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 26
    sget v1, Lcom/truecaller/videocallerid/R$id;->everyoneOptionGroup:I

    .line 27
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/constraintlayout/widget/Group;

    if-eqz v15, :cond_0

    .line 28
    sget v1, Lcom/truecaller/videocallerid/R$id;->noOneDesc:I

    .line 29
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 30
    sget v1, Lcom/truecaller/videocallerid/R$id;->noOneOverlay:I

    .line 31
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 32
    sget v1, Lcom/truecaller/videocallerid/R$id;->noOneRadioBtn:I

    .line 33
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RadioButton;

    if-eqz v18, :cond_0

    .line 34
    sget v1, Lcom/truecaller/videocallerid/R$id;->noOneTitle:I

    .line 35
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 36
    new-instance v1, Le/a/k/m/u;

    move-object v2, v1

    invoke-direct/range {v2 .. v19}, Le/a/k/m/u;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/TextView;)V

    return-object v1

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
