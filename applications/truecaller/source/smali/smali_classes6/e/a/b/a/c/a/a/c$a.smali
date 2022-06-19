.class public final Le/a/b/a/c/a/a/c$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/a/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput p1, p0, Le/a/b/a/c/a/a/c$a;->b:I

    iput-object p2, p0, Le/a/b/a/c/a/a/c$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/b/a/c/a/a/c$a;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/a/c$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/q0;

    iget-object p1, p1, Le/a/b/m/q0;->i:Lcom/google/android/material/textfield/TextInputLayout;

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
    iget-object p1, p0, Le/a/b/a/c/a/a/c$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/q0;

    iget-object p1, p1, Le/a/b/m/q0;->g:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilCity"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0

    .line 6
    :cond_2
    check-cast p1, Landroid/text/Editable;

    .line 7
    iget-object p1, p0, Le/a/b/a/c/a/a/c$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/m/q0;

    iget-object p1, p1, Le/a/b/m/q0;->j:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "tilStreet"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object v0
.end method
