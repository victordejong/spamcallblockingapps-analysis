.class public final Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/l;ZLcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;I)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v9, 0x0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    const/4 v11, 0x0

    and-int/lit16 v1, v0, 0x100

    const/4 v12, 0x0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v13, v1

    goto :goto_2

    :cond_2
    move/from16 v13, p10

    :goto_2
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    .line 1
    sget-object v0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;->DEFAULT:Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;

    move-object v14, v0

    goto :goto_3

    :cond_3
    move-object/from16 v14, p11

    :goto_3
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v14}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;->a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/l;ZLcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;)V

    return-void
.end method


# virtual methods
.method public final a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/l;ZLcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b/a/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/b0/a/a/b;",
            "Ls1/s;",
            ">;Z",
            "Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p11

    const-string v4, "activity"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {p2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "positiveButtonText"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "positiveButtonStyle"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$a;

    invoke-direct {v5, p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$a;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 2
    new-instance v10, Ln3/v/z0;

    const-class v6, Le/a/b0/a/a/c;

    invoke-static {v6}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v6

    new-instance v7, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$b;

    invoke-direct {v7, p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$b;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v10, v6, v7, v5}, Ln3/v/z0;-><init>(Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)V

    .line 3
    invoke-interface {v10}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/a/a/c;

    invoke-virtual {v5}, Le/a/b0/a/a/c;->c()Ln3/v/k0;

    move-result-object v5

    sget-object v6, Le/a/b0/a/a/b$d;->a:Le/a/b0/a/a/b$d;

    invoke-virtual {v5, v6}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v10}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/a/a/c;

    invoke-virtual {v5}, Le/a/b0/a/a/c;->c()Ln3/v/k0;

    move-result-object v5

    new-instance v12, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;

    const/4 v11, 0x0

    move-object v6, v12

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v6 .. v11}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;-><init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/l;Ls1/g;Ls1/a/l;)V

    invoke-virtual {v5, p1, v12}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 5
    new-instance v5, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;

    invoke-direct {v5}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;-><init>()V

    .line 6
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v6, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subtitle"

    move-object/from16 v4, p3

    .line 8
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positive_button_text"

    .line 9
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "negative_button_text"

    move-object/from16 v2, p5

    .line 10
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "checkbox_text"

    move-object/from16 v2, p6

    .line 11
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positive_button_style"

    .line 12
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move/from16 v1, p10

    .line 14
    invoke-virtual {v5, v1}, Ln3/r/a/k;->setCancelable(Z)V

    .line 15
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
