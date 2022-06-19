.class public final Le/a/c/a/m/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/x;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/y;->a:Le/a/c/a/m/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/y;->a:Le/a/c/a/m/c/x;

    .line 2
    sget-object v0, Le/a/c/a/m/c/x;->c:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/m/c/x;->OA()Le/a/c/a/g/t1;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/c/a/g/t1;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "binding.flagValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/c/a/m/c/y;->a:Le/a/c/a/m/c/x;

    .line 6
    iget-object v0, v0, Le/a/c/a/m/c/x;->a:Le/a/c/t/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/c/t/a;->h(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/c/a/m/c/y;->a:Le/a/c/a/m/c/x;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "The feature flag updated locally"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p1, "qaManager"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
