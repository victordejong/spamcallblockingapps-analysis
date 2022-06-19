.class public final Le/a/c0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/Button;

.field public final synthetic b:Le/a/c0/a;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Le/a/c0/a;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Le/a/c0/l;->a:Landroid/widget/Button;

    iput-object p2, p0, Le/a/c0/l;->b:Le/a/c0/a;

    iput-object p3, p0, Le/a/c0/l;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c0/l;->b:Le/a/c0/a;

    .line 2
    iget-object p1, p1, Le/a/c0/a;->h:Le/a/s4/a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c0/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c0/l;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "not found"

    invoke-static {p1, v1}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p1, "remoteConfig"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
