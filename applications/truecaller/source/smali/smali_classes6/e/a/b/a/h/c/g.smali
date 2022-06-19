.class public final Le/a/b/a/h/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/b/l/q<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/h/c/a;


# direct methods
.method public constructor <init>(Le/a/b/a/h/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/b/l/q;

    .line 2
    instance-of v0, p1, Le/a/b/l/q$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "binding.pbLoading"

    const-string v4, "requireActivity()"

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/n/g0;->w(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-static {v0}, Le/a/b/a/h/c/a;->OA(Le/a/b/a/h/c/a;)Le/a/b/m/k0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/k0;->k:Landroid/widget/ProgressBar;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    iget-object p1, p1, Le/a/b/l/q;->a:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz p1, :cond_11

    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    :cond_2
    if-eqz v1, :cond_11

    .line 10
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getZipCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Le/a/b/a/h/c/l;->g(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getStreet()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v6

    :goto_4
    invoke-virtual {v3, v5}, Le/a/b/a/h/c/l;->d(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandmark()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v6

    :goto_5
    invoke-virtual {v3, v5}, Le/a/b/a/h/c/l;->f(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move-object v5, v6

    :goto_6
    invoke-virtual {v3, v5}, Le/a/b/a/h/c/l;->e(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getState()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move-object v5, v6

    :goto_7
    invoke-virtual {v3, v5}, Le/a/b/a/h/c/l;->h(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    move v2, v4

    :cond_a
    if-nez v2, :cond_c

    .line 16
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v0

    .line 17
    iget-object v0, v0, Le/a/b/a/h/c/l;->c:Ln3/n/j;

    .line 18
    invoke-static {p1}, Le/a/n/g0;->y(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    move-object v6, p1

    .line 19
    :cond_b
    iget-object p1, v0, Ln3/n/j;->a:Ljava/lang/Object;

    if-eq v6, p1, :cond_11

    .line 20
    iput-object v6, v0, Ln3/n/j;->a:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ln3/n/a;->notifyChange()V

    goto/16 :goto_9

    .line 22
    :cond_c
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object p1

    .line 23
    iget-object p1, p1, Le/a/b/a/h/c/l;->c:Ln3/n/j;

    .line 24
    iget-object v0, p1, Ln3/n/j;->a:Ljava/lang/Object;

    if-eq v6, v0, :cond_11

    .line 25
    iput-object v6, p1, Ln3/n/j;->a:Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Ln3/n/a;->notifyChange()V

    goto :goto_9

    .line 27
    :cond_d
    instance-of v0, p1, Le/a/b/l/q$b;

    if-eqz v0, :cond_e

    .line 28
    iget-object p1, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/n/g0;->u(Landroid/app/Activity;)V

    .line 29
    iget-object p1, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-static {p1}, Le/a/b/a/h/c/a;->OA(Le/a/b/a/h/c/a;)Le/a/b/m/k0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/k0;->k:Landroid/widget/ProgressBar;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_9

    .line 30
    :cond_e
    instance-of v0, p1, Le/a/b/l/q$a;

    if-eqz v0, :cond_11

    .line 31
    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/n/g0;->w(Landroid/app/Activity;)V

    .line 32
    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-static {v0}, Le/a/b/a/h/c/a;->OA(Le/a/b/a/h/c/a;)Le/a/b/m/k0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/k0;->k:Landroid/widget/ProgressBar;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v3, "Error: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    iget-object v4, p1, Le/a/b/l/q;->b:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object v1, v4

    goto :goto_8

    .line 35
    :cond_f
    check-cast p1, Le/a/b/l/q$a;

    .line 36
    iget-object p1, p1, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_10

    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v1, p0, Le/a/b/a/h/c/g;->a:Le/a/b/a/h/c/a;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_10
    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_11
    :goto_9
    return-void
.end method
