.class public final Le/a/b0/a/a/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Le/a/b0/a/a/h$c;Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;I)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v13, v1

    goto :goto_4

    :cond_4
    move/from16 v13, p10

    :goto_4
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1
    invoke-virtual/range {v3 .. v14}, Le/a/b0/a/a/h$c;->a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;)V

    return-void
.end method


# virtual methods
.method public final a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b/a/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
            "Ls1/s;",
            ">;Z",
            "Le/a/b0/a/a/h;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "activity"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "subtitle"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "positiveButtonText"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v6, Le/a/b0/a/a/h$c$a;

    invoke-direct {v6, p1}, Le/a/b0/a/a/h$c$a;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 2
    new-instance v11, Ln3/v/z0;

    const-class v7, Le/a/b0/a/a/i;

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    new-instance v8, Le/a/b0/a/a/h$c$b;

    invoke-direct {v8, p1}, Le/a/b0/a/a/h$c$b;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v11, v7, v8, v6}, Ln3/v/z0;-><init>(Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)V

    .line 3
    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/a/a/i;

    invoke-virtual {v6}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object v6

    sget-object v7, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->SHOWING:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-virtual {v6, v7}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/a/a/i;

    invoke-virtual {v6}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object v6

    new-instance v13, Le/a/b0/a/a/h$c$c;

    const/4 v12, 0x0

    move-object v7, v13

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    invoke-direct/range {v7 .. v12}, Le/a/b0/a/a/h$c$c;-><init>(Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;Ls1/g;Ls1/a/l;)V

    invoke-virtual {v6, p1, v13}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    if-eqz p11, :cond_0

    move-object/from16 v6, p11

    goto :goto_0

    .line 5
    :cond_0
    new-instance v6, Le/a/b0/a/a/h;

    invoke-direct {v6}, Le/a/b0/a/a/h;-><init>()V

    .line 6
    :goto_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v7, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positive_button_text"

    .line 9
    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "negative_button_text"

    move-object/from16 v2, p5

    .line 10
    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 11
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "image_res_id"

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    :cond_1
    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move/from16 v1, p10

    .line 13
    invoke-virtual {v6, v1}, Ln3/r/a/k;->setCancelable(Z)V

    .line 14
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
