.class public final Le/a/g0/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/g0/m/a;

.field public final synthetic b:Le/a/g0/a/b;


# direct methods
.method public constructor <init>(Le/a/g0/m/a;Le/a/g0/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/a/d;->a:Le/a/g0/m/a;

    iput-object p2, p0, Le/a/g0/a/d;->b:Le/a/g0/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/g0/a/d;->b:Le/a/g0/a/b;

    .line 2
    iget-object p1, p1, Le/a/g0/a/b;->e:Le/a/g0/a/b$d;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/g0/a/d;->a:Le/a/g0/m/a;

    iget-object v0, v0, Le/a/g0/m/a;->b:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "emailEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/g0/a/b$d;->et(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/g0/a/d;->b:Le/a/g0/a/b;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
