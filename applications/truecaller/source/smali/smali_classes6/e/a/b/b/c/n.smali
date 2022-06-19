.class public final Le/a/b/b/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/b/m/v;

.field public final synthetic b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;


# direct methods
.method public constructor <init>(Le/a/b/m/v;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iput-object p2, p0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 2
    iget-object v4, v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->l:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->m:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v2, v2, Le/a/b/m/v;->y:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "nameEditText"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v2, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 6
    iget-object v2, v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->n:Ljava/util/Set;

    .line 7
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 8
    iget-object v3, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v3, v3, Le/a/b/m/v;->k:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v5, "descriptionEditText"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9
    iget-object v3, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 10
    iget-object v3, v3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->o:Ljava/lang/Long;

    .line 11
    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 12
    iget-object v3, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 13
    iget-object v5, v3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const-string v7, "binding"

    const/4 v8, 0x0

    if-eqz v5, :cond_24

    iget-object v5, v5, Le/a/b/m/v;->C:Landroid/widget/Spinner;

    const-string v9, "binding.sizeSpinner"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-static {}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->values()[Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    move-result-object v5

    iget-object v3, v3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_0

    iget-object v3, v3, Le/a/b/m/v;->C:Landroid/widget/Spinner;

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v7, "Locale.getDefault()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_1
    move-object v10, v8

    .line 15
    :goto_0
    iget-object v3, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 16
    iget-object v3, v3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    if-eqz v3, :cond_23

    .line 17
    iget-object v3, v3, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->a:Le/a/b/b/b/g;

    if-eqz v3, :cond_22

    .line 18
    iget-object v3, v3, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v3}, Le/a/b/l/o;->i3()Ljava/util/List;

    move-result-object v7

    .line 19
    iget-object v3, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v3, v3, Le/a/b/m/v;->o:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v5, "firstNameEditText"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 20
    iget-object v3, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v3, v3, Le/a/b/m/v;->r:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v5, "lastNameEditText"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 21
    iget-object v3, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 22
    iget-object v3, v3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->e:Le/a/b0/e/l;

    if-eqz v3, :cond_21

    invoke-interface {v3}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    const/4 v9, 0x2

    const-string v13, "+"

    .line 23
    invoke-static {v3, v13, v5, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :cond_2
    invoke-static {v3}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 25
    :goto_1
    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 26
    iget-object v5, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v5, v5, Le/a/b/m/v;->m:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v8, "emailEditText"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    iget-object v8, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v8, v8, Le/a/b/m/v;->l:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v9, "designationEditText"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 28
    iget-object v8, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v8, v8, Le/a/b/m/v;->L:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v9, "websiteEditText"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    iget-object v9, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v9, v9, Le/a/b/m/v;->n:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 p1, v4

    const-string v4, "facebookEditText"

    invoke-static {v9, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    iget-object v9, v0, Le/a/b/b/c/n;->a:Le/a/b/m/v;

    iget-object v9, v9, Le/a/b/m/v;->K:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 v24, v2

    const-string v2, "twitterEditText"

    invoke-static {v9, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "backgroundColor"

    .line 31
    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "name"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "about"

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "tags"

    invoke-static {v12, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "openHours"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "firstName"

    invoke-static {v14, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "lastName"

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "phoneNumbers"

    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "email"

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "jobTitle"

    invoke-static {v13, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "url"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "facebookId"

    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "twitterId"

    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v9, v0, Le/a/b/b/c/n;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {v9}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object v9

    .line 33
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, v9, Le/a/b/b/c/q;->e:Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

    .line 35
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 36
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->nameEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 37
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->addressEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto/16 :goto_2

    .line 38
    :cond_5
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getStreet()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 39
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->addressEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto/16 :goto_2

    .line 40
    :cond_6
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCity()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 41
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->addressEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto :goto_2

    .line 42
    :cond_7
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCountryCode()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 43
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->addressEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto :goto_2

    .line 44
    :cond_8
    invoke-static {v11}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 45
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->descriptionEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    goto :goto_2

    .line 46
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 47
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->tagsEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto :goto_2

    :cond_a
    if-nez v10, :cond_b

    .line 48
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/bizmon/R$id;->sizeEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->I2(II)V

    goto :goto_2

    .line 49
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 50
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/b/b/c/p;->l4(I)V

    goto/16 :goto_c

    :cond_c
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_d
    const/16 v25, 0x0

    .line 51
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v26, v12

    move-object/from16 v12, v17

    check-cast v12, Lcom/truecaller/profile/data/dto/OpenHours;

    .line 52
    invoke-virtual {v12}, Lcom/truecaller/profile/data/dto/OpenHours;->getWeekday()Ljava/util/SortedSet;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v27, v11

    .line 53
    iget-object v11, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_14

    invoke-interface {v7, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v11, v12}, Le/a/b/b/c/p;->l4(I)V

    goto :goto_8

    :cond_e
    move-object/from16 v27, v11

    .line 54
    invoke-virtual {v12}, Lcom/truecaller/profile/data/dto/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-static {v11}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_4

    :cond_f
    move/from16 v11, v25

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v11, 0x1

    :goto_5
    if-eqz v11, :cond_11

    .line 55
    iget-object v11, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_14

    invoke-interface {v7, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v11, v12}, Le/a/b/b/c/p;->e7(I)V

    goto :goto_8

    .line 56
    :cond_11
    invoke-virtual {v12}, Lcom/truecaller/profile/data/dto/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-static {v11}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_6

    :cond_12
    move/from16 v11, v25

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v11, 0x1

    :goto_7
    if-eqz v11, :cond_15

    .line 57
    iget-object v11, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_14

    invoke-interface {v7, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v11, v12}, Le/a/b/b/c/p;->m2(I)V

    :cond_14
    :goto_8
    move/from16 v11, v25

    goto :goto_9

    :cond_15
    move-object/from16 v12, v26

    move-object/from16 v11, v27

    goto :goto_3

    :cond_16
    move-object/from16 v27, v11

    move-object/from16 v26, v12

    const/4 v11, 0x1

    :goto_9
    if-nez v11, :cond_17

    goto :goto_b

    .line 58
    :cond_17
    invoke-static {v14}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 59
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1c

    sget v1, Lcom/truecaller/bizmon/R$id;->firstNameEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    goto :goto_b

    .line 60
    :cond_18
    invoke-static {v15}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 61
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1c

    sget v1, Lcom/truecaller/bizmon/R$id;->lastNameEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    goto :goto_b

    .line 62
    :cond_19
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 63
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1c

    sget v1, Lcom/truecaller/bizmon/R$id;->emailEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    goto :goto_b

    .line 64
    :cond_1a
    iget-object v11, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_1b

    invoke-interface {v11, v5}, Le/a/b/b/c/p;->k8(Ljava/lang/String;)Z

    move-result v11

    goto :goto_a

    :cond_1b
    move/from16 v11, v25

    :goto_a
    if-nez v11, :cond_1d

    .line 65
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1c

    sget v1, Lcom/truecaller/bizmon/R$id;->emailEditText:I

    sget v2, Lcom/truecaller/bizmon/R$string;->ProfileEditEmailInvalid:I

    invoke-interface {v0, v1, v2}, Le/a/b/b/c/p;->K2(II)V

    :cond_1c
    :goto_b
    move/from16 v1, v25

    :goto_c
    const/4 v0, 0x1

    const/4 v2, 0x0

    move/from16 v25, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_d

    .line 66
    :cond_1d
    new-instance v11, Lcom/truecaller/profile/data/dto/Profile;

    .line 67
    new-instance v12, Lcom/truecaller/profile/data/dto/BusinessData;

    .line 68
    new-instance v28, Lcom/truecaller/profile/data/dto/OnlineIds;

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v16, v28

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v23}, Lcom/truecaller/profile/data/dto/OnlineIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 69
    new-instance v16, Lcom/truecaller/profile/data/dto/Company;

    .line 70
    new-instance v8, Lcom/truecaller/profile/data/dto/Address;

    .line 71
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getStreet()Ljava/lang/String;

    move-result-object v18

    .line 72
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getZipCode()Ljava/lang/String;

    move-result-object v20

    .line 73
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCity()Ljava/lang/String;

    move-result-object v19

    .line 74
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCountryCode()Ljava/lang/String;

    move-result-object v21

    .line 75
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLatitude()Ljava/lang/Double;

    move-result-object v22

    .line 76
    invoke-virtual {v0}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLongitude()Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v17, v8

    .line 77
    invoke-direct/range {v17 .. v23}, Lcom/truecaller/profile/data/dto/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 78
    new-instance v0, Lcom/truecaller/profile/data/dto/Branding;

    .line 79
    invoke-static/range {v24 .. v24}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/truecaller/profile/data/dto/Branding;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x1

    move-object/from16 v5, v16

    move-object v4, v9

    move-object v9, v0

    .line 81
    invoke-direct/range {v5 .. v10}, Lcom/truecaller/profile/data/dto/Company;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;)V

    move-object v2, v12

    move-object v0, v4

    move-object/from16 v4, p1

    move-object v5, v13

    move-object/from16 v6, v27

    move-object/from16 v7, v26

    move-object/from16 v8, v28

    move-object/from16 v9, v16

    .line 82
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/profile/data/dto/BusinessData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object v13, v11

    move-object/from16 v17, v12

    .line 83
    invoke-direct/range {v13 .. v19}, Lcom/truecaller/profile/data/dto/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILs1/z/c/f;)V

    move-object v2, v11

    .line 84
    :goto_d
    iput-object v2, v0, Le/a/b/b/c/q;->d:Lcom/truecaller/profile/data/dto/Profile;

    if-eqz v2, :cond_20

    .line 85
    iget-object v2, v0, Le/a/b/b/c/q;->n:Le/a/b0/e/f;

    invoke-interface {v2}, Le/a/b0/e/f;->d()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, v0, Le/a/b/b/c/q;->f:Z

    if-nez v2, :cond_1e

    goto :goto_e

    :cond_1e
    move/from16 v1, v25

    :goto_e
    if-eqz v1, :cond_1f

    .line 86
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Le/a/b/b/c/p;->i9()V

    goto :goto_f

    .line 87
    :cond_1f
    invoke-virtual {v0}, Le/a/b/b/c/q;->Ij()V

    :cond_20
    :goto_f
    return-void

    :cond_21
    const-string v0, "accountManager"

    .line 88
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_22
    const-string v0, "presenter"

    .line 89
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_23
    const-string v0, "openHoursFragment"

    .line 90
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 91
    :cond_24
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8
.end method
