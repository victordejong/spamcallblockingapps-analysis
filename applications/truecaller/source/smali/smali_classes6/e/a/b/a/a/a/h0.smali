.class public final Le/a/b/a/a/a/h0;
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
        "Le/a/b/l/l<",
        "+",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/g0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/g0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/h0;->a:Le/a/b/a/a/a/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/b/l/l;

    .line 2
    iget-object v0, p1, Le/a/b/l/l;->b:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Le/a/b/l/q$b;

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Le/a/b/l/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/l/q;

    .line 5
    instance-of v0, p1, Le/a/b/l/q$c;

    const-string v1, "binding"

    const-string v2, "ttlEmail"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Le/a/b/a/a/a/h0;->a:Le/a/b/a/a/a/g0;

    .line 7
    iget-object p1, p1, Le/a/b/a/a/a/g0;->c:Le/a/b/m/l;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p1, Le/a/b/m/l;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Le/a/b/m/l;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 10
    iget-object p1, p0, Le/a/b/a/a/a/h0;->a:Le/a/b/a/a/a/g0;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_1
    instance-of v0, p1, Le/a/b/l/q$a;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Le/a/b/a/a/a/h0;->a:Le/a/b/a/a/a/g0;

    .line 14
    iget-object v0, v0, Le/a/b/a/a/a/g0;->c:Le/a/b/m/l;

    if-eqz v0, :cond_2

    .line 15
    iget-object v1, v0, Le/a/b/m/l;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/b/a/a/a/h0;->a:Le/a/b/a/a/a/g0;

    invoke-virtual {v3}, Le/a/b/a/a/a/g0;->OA()Le/a/b/a/a/d/b;

    move-result-object v3

    check-cast p1, Le/a/b/l/q$a;

    invoke-virtual {v3, p1}, Le/a/b/a/a/d/b;->c(Le/a/b/l/q$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, v0, Le/a/b/m/l;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    return-void
.end method
