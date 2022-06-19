.class public final Lz2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz2;->b:I

    iput-object p2, p0, Lz2;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lz2;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object p1, p0, Lz2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/k0;

    iget-object p1, p1, Le/a/b/m/k0;->o:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilState"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    check-cast p1, Landroid/text/Editable;

    .line 5
    iget-object p1, p0, Lz2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/k0;

    iget-object p1, p1, Le/a/b/m/k0;->m:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilCity"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0

    .line 6
    :cond_2
    check-cast p1, Landroid/text/Editable;

    .line 7
    iget-object p1, p0, Lz2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/k0;

    iget-object p1, p1, Le/a/b/m/k0;->l:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilBuildingName"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0

    .line 8
    :cond_3
    check-cast p1, Landroid/text/Editable;

    .line 9
    iget-object p1, p0, Lz2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/k0;

    iget-object p1, p1, Le/a/b/m/k0;->n:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilPincode"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0
.end method
