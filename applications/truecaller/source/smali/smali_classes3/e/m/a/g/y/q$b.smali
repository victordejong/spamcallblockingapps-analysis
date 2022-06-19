.class public Le/m/a/g/y/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/y/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/y/q;


# direct methods
.method public constructor <init>(Le/m/a/g/y/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/q$b;->a:Le/m/a/g/y/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 4
    iget-object p1, p0, Le/m/a/g/y/q$b;->a:Le/m/a/g/y/q;

    iget-object v2, p1, Le/m/a/g/y/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Le/m/a/g/y/q;->e(Le/m/a/g/y/q;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Le/m/a/g/y/q$b;->a:Le/m/a/g/y/q;

    .line 6
    iget-object p1, p1, Le/m/a/g/y/q;->d:Landroid/text/TextWatcher;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object p1, p0, Le/m/a/g/y/q$b;->a:Le/m/a/g/y/q;

    .line 9
    iget-object p1, p1, Le/m/a/g/y/q;->d:Landroid/text/TextWatcher;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
