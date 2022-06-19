.class public final Le/a/h/c/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/c/a$a;->a:I

    iput-object p2, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Le/a/h/c/a$a;->a:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    .line 2
    sget v0, Le/a/o5/j0;->b:I

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 5
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 7
    :cond_0
    throw v1

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    .line 9
    iget v3, p1, Le/a/h/c/a;->b:I

    .line 10
    iget-object v4, p1, Le/a/h/c/a;->c:Ljava/lang/String;

    const-string v5, "fragment"

    .line 11
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "fragment.activity ?: return"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v6, Le/a/h/c/b;

    invoke-direct {v6}, Le/a/h/c/b;-><init>()V

    .line 14
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    if-le v2, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x9

    if-lt v11, v9, :cond_3

    move v9, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v10

    :goto_2
    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "speed_dial_key"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v7, 0x7f0d0140

    .line 17
    sget-boolean v8, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v8

    const v9, 0x7f1206d4

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "layout_resource"

    .line 20
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "title_resource"

    .line 21
    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "title"

    .line 22
    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hint_resource"

    .line 23
    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_text"

    .line 24
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    .line 25
    invoke-virtual {v6, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 26
    invoke-static {v6, v5, v1, v2, v1}, Le/a/e/a/c2;->QA(Le/a/e/a/c2;Ln3/r/a/l;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    :goto_4
    return-void

    .line 28
    :cond_7
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    .line 29
    iget-object v0, p1, Le/a/h/c/a;->d:Le/a/h/c/t;

    .line 30
    iget p1, p1, Le/a/h/c/a;->b:I

    .line 31
    invoke-interface {v0, p1, v1}, Le/a/h/c/t;->a(ILjava/lang/String;)V

    .line 32
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    .line 33
    iget-object v0, p1, Le/a/h/c/a;->g:Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 35
    :cond_8
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    invoke-virtual {p1}, Le/a/e/a/c2;->dismissAllowingStateLoss()V

    return-void

    .line 36
    :cond_9
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 37
    sget-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->SPEED_DIAL:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {p1, v0}, Lcom/truecaller/ui/SingleActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    :cond_a
    iget-object p1, p0, Le/a/h/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/a;

    invoke-virtual {p1}, Le/a/e/a/c2;->dismissAllowingStateLoss()V

    return-void
.end method
