.class public final Le/a/k/a/i/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/m/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/i/h;->b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    iput-object p2, p0, Le/a/k/a/i/h;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/k/a/i/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Le/a/k/a/i/h;->b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    const-string v1, "parent"

    .line 2
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget v1, Lcom/truecaller/videocallerid/R$layout;->view_video_caller_id_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v0, Lcom/truecaller/videocallerid/R$id;->configureButton:I

    .line 5
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 6
    sget v0, Lcom/truecaller/videocallerid/R$id;->description:I

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 8
    sget v0, Lcom/truecaller/videocallerid/R$id;->divider:I

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    sget v0, Lcom/truecaller/videocallerid/R$id;->managePreference:I

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 12
    sget v0, Lcom/truecaller/videocallerid/R$id;->previewView:I

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/truecaller/videocallerid/ui/view/PreviewView;

    if-eqz v7, :cond_0

    .line 14
    sget v0, Lcom/truecaller/videocallerid/R$id;->receiveVideoDescription:I

    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 16
    sget v0, Lcom/truecaller/videocallerid/R$id;->receiveVideoSetting:I

    .line 17
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 18
    sget v0, Lcom/truecaller/videocallerid/R$id;->recommendationText:I

    .line 19
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 20
    sget v0, Lcom/truecaller/videocallerid/R$id;->selectedPreferences:I

    .line 21
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 22
    sget v0, Lcom/truecaller/videocallerid/R$id;->settingSwitch:I

    .line 23
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v12, :cond_0

    .line 24
    sget v0, Lcom/truecaller/videocallerid/R$id;->showYourVideoSettingGroup:I

    .line 25
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/constraintlayout/widget/Group;

    if-eqz v13, :cond_0

    .line 26
    sget v0, Lcom/truecaller/videocallerid/R$id;->title:I

    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 28
    new-instance v0, Le/a/k/m/y;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Le/a/k/m/y;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Lcom/truecaller/videocallerid/ui/view/PreviewView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/SwitchCompat;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;)V

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
