.class public final Le/a/b/a/h/c/f;
.super Ln3/n/i$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/b/a/h/c/a;


# direct methods
.method public constructor <init>(Le/a/b/a/h/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/a/h/c/f;->a:Le/a/b/a/h/c/a;

    invoke-direct {p0}, Ln3/n/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ln3/n/i;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Le/a/b/a/h/c/f;->a:Le/a/b/a/h/c/a;

    invoke-static {p2}, Le/a/b/a/h/c/a;->OA(Le/a/b/a/h/c/a;)Le/a/b/m/k0;

    move-result-object p2

    iget-object p2, p2, Le/a/b/m/k0;->o:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "binding.tilState"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/a/h/c/f;->a:Le/a/b/a/h/c/a;

    invoke-static {v0, p1}, Le/a/b/a/h/c/a;->PA(Le/a/b/a/h/c/a;Ln3/n/i;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
