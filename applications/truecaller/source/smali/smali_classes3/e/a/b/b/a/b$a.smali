.class public final Le/a/b/b/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/b/b/a/b$a;->a:I

    iput-object p2, p0, Le/a/b/b/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, Le/a/b/b/a/b$a;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/b/b/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/b;

    invoke-virtual {p1}, Le/a/b/b/a/b;->PA()Le/a/b/b/a/k;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b/b/a/j;->cancel()V

    :cond_0
    return-void

    .line 3
    :cond_1
    throw v1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/b/b/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/b;

    .line 5
    sget-object v2, Le/a/b/b/a/b;->f:[Ls1/a/l;

    .line 6
    invoke-virtual {p1}, Le/a/b/b/a/b;->OA()Le/a/b/m/x;

    move-result-object v2

    .line 7
    iget-object v3, v2, Le/a/b/m/x;->i:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "streetEditText"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v3, v2, Le/a/b/m/x;->k:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "zipCodeEditText"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v2, v2, Le/a/b/m/x;->d:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "cityEditText"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object p1, p1, Le/a/b/b/a/b;->a:Le/a/b/b/a/k;

    if-eqz p1, :cond_c

    const-string v2, "street"

    .line 11
    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "zipCode"

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "city"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v8, p1, Le/a/b/b/a/k;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 13
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/a/j;

    if-eqz v0, :cond_a

    sget v2, Lcom/truecaller/bizmon/R$id;->streetEditText:I

    sget v3, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v2, v3}, Le/a/b/b/a/j;->K2(II)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/a/j;

    if-eqz v0, :cond_a

    sget v2, Lcom/truecaller/bizmon/R$id;->cityEditText:I

    sget v3, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v2, v3}, Le/a/b/b/a/j;->K2(II)V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_6

    .line 17
    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/a/j;

    if-eqz v0, :cond_a

    sget v2, Lcom/truecaller/bizmon/R$id;->countryEditText:I

    sget v3, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-interface {v0, v2, v3}, Le/a/b/b/a/j;->I2(II)V

    goto :goto_2

    .line 19
    :cond_7
    new-instance v0, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

    .line 20
    iget-object v2, p1, Le/a/b/b/a/k;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v2, :cond_8

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_8
    move-object v9, v1

    .line 21
    :goto_1
    iget-object v2, p1, Le/a/b/b/a/k;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v2, :cond_9

    iget-wide v1, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_9
    move-object v10, v1

    move-object v4, v0

    .line 22
    invoke-direct/range {v4 .. v10}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v1, v0

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/j;

    if-eqz p1, :cond_b

    invoke-interface {p1, v1}, Le/a/b/b/a/j;->ff(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V

    :cond_b
    return-void

    :cond_c
    const-string p1, "presenter"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
