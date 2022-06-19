.class public final Le/a/a/c/c/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/c/a;


# direct methods
.method public constructor <init>(Le/a/a/c/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/c/a$d;->a:Le/a/a/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "editable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/c/a$d;->a:Le/a/a/c/c/a;

    invoke-virtual {v0}, Le/a/a/c/c/a;->OA()Le/a/a/c/o8/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/a/c/c/a$d;->a:Le/a/a/c/c/a;

    .line 2
    iget-object v2, v2, Le/a/a/c/c/a;->j:Lcom/truecaller/messaging/views/MediaEditText;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Le/a/a/c/o8/g;->W7(Ljava/lang/String;IZ)V

    .line 4
    iget-object v0, p0, Le/a/a/c/c/a$d;->a:Le/a/a/c/c/a;

    invoke-virtual {v0}, Le/a/a/c/c/a;->OA()Le/a/a/c/o8/g;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/a/c/o8/g;->V1(Landroid/text/Editable;)V

    return-void

    :cond_0
    const-string p1, "editText"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/c/a$d;->a:Le/a/a/c/c/a;

    invoke-virtual {p1}, Le/a/a/c/c/a;->OA()Le/a/a/c/o8/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Le/a/a/c/o8/g;->W5(II)V

    :cond_0
    return-void
.end method
