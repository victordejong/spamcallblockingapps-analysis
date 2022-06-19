.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/m3/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$f;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$f;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v1

    const-string v2, "binding"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v4, v1, Le/a/m3/g;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a01f4

    .line 6
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    const-string v2, "Missing required view with ID: "

    if-eqz v5, :cond_1

    const v1, 0x7f0a01fc

    .line 7
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_1

    const v1, 0x7f0a040a

    .line 8
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_1

    const v1, 0x7f0a046a

    .line 9
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/truecaller/common/ui/ShimmerLoadingView;

    if-eqz v8, :cond_1

    const v1, 0x7f0a06ae

    .line 10
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const v1, 0x7f0a06a3

    .line 11
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a06a4

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 13
    move-object v14, v3

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a09de

    .line 14
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 15
    new-instance v9, Le/a/m3/e1;

    move-object v10, v9

    move-object v11, v14

    invoke-direct/range {v10 .. v15}, Le/a/m3/e1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V

    const v1, 0x7f0a08d7

    .line 16
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_1

    const v1, 0x7f0a08f5

    .line 17
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v11, :cond_1

    const v1, 0x7f0a096e

    .line 18
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_1

    const v1, 0x7f0a0e03

    .line 19
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_1

    const v1, 0x7f0a0e05

    .line 20
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_1

    const v1, 0x7f0a0ebe

    .line 21
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/cardview/widget/CardView;

    if-eqz v15, :cond_1

    const v1, 0x7f0a0ec2

    .line 22
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v16, :cond_1

    const v1, 0x7f0a0ec4

    .line 23
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v17, :cond_1

    const v1, 0x7f0a0ec7

    .line 24
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/material/appbar/MaterialToolbar;

    if-eqz v18, :cond_1

    const v1, 0x7f0a1270

    .line 25
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v19, :cond_1

    const v1, 0x7f0a1271

    .line 26
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v20, :cond_1

    const v1, 0x7f0a1279

    .line 27
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v21, :cond_1

    const v1, 0x7f0a1275

    .line 28
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v22, :cond_1

    const v1, 0x7f0a1277

    .line 29
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v23, :cond_1

    const v1, 0x7f0a1286

    .line 30
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 31
    new-instance v1, Le/a/m3/h;

    move-object v3, v1

    invoke-direct/range {v3 .. v24}, Le/a/m3/h;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatImageView;Lcom/truecaller/common/ui/ShimmerLoadingView;Le/a/m3/e1;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/Guideline;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/appbar/MaterialToolbar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

    return-object v1

    .line 32
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
