.class public final Le/a/t/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/o;


# instance fields
.field public final synthetic a:Le/a/t/a/h;


# direct methods
.method public constructor <init>(Le/a/t/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    .line 2
    iget-object v0, v0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const-string v1, "$this$dispatchBackspace"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x43

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Le/a/t/a/u/d;->b:[Le/a/t/a/u/d;

    .line 2
    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    .line 4
    iget-object v0, v0, Le/a/t/a/h;->g:Le/a/t/a/v/i;

    .line 5
    invoke-virtual {v0, p1, p2}, Le/a/t/a/v/i;->a(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)V

    return v1
.end method

.method public d(Le/a/t/a/u/d;)V
    .locals 5

    const-string v0, "emoji"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    .line 2
    iget-object v1, v1, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const-string v2, "$this$emojiString"

    .line 3
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/t/a/u/d;->a:[I

    .line 6
    array-length v2, v0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v0, "$this$insertAtSelection"

    .line 7
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newText"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "text"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    .line 13
    iget-object v0, v0, Le/a/t/a/h;->m:Le/a/t/a/p;

    .line 14
    invoke-interface {v0, p1}, Le/a/t/a/p;->c(Le/a/t/a/u/d;)V

    .line 15
    iget-object p1, p0, Le/a/t/a/i;->a:Le/a/t/a/h;

    .line 16
    iget-object p1, p1, Le/a/t/a/h;->q:Le/a/t/a/h$a;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Le/a/t/a/h$a;->a()V

    :cond_2
    return-void
.end method
