.class public final Le/a/t/a/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/k;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Le/a/t/a/a/k;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Le/a/t/a/a/k;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/k$b;->a:Landroid/widget/EditText;

    iput-object p2, p0, Le/a/t/a/a/k$b;->b:Le/a/t/a/a/k;

    iput-object p4, p0, Le/a/t/a/a/k$b;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 1
    iget-object p1, p0, Le/a/t/a/a/k$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object p1, p0, Le/a/t/a/a/k$b;->b:Le/a/t/a/a/k;

    .line 3
    invoke-virtual {p1}, Le/a/t/a/a/k;->h()Lcom/truecaller/android/truemoji/gifs/GifView;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/android/truemoji/gifs/GifView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/t/a/a/k$b;->b:Le/a/t/a/a/k;

    .line 6
    iget-object p1, p1, Le/a/t/a/a/k;->p:Le/a/t/a/a/q;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Le/a/t/a/a/q;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "searchListener"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
