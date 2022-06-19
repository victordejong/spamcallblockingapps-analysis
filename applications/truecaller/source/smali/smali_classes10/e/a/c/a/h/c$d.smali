.class public final Le/a/c/a/h/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/h/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/g/o1;

.field public final synthetic b:Le/a/c/a/h/c;


# direct methods
.method public constructor <init>(Le/a/c/a/g/o1;Le/a/c/a/h/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/h/c$d;->a:Le/a/c/a/g/o1;

    iput-object p2, p0, Le/a/c/a/h/c$d;->b:Le/a/c/a/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/h/c$d;->b:Le/a/c/a/h/c;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    .line 2
    iget-object p1, p0, Le/a/c/a/h/c$d;->b:Le/a/c/a/h/c;

    .line 3
    iget-object v0, p1, Le/a/c/a/h/c;->b:Le/a/c/a/h/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "LANGUAGE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p1, "arguments?.getString(PARAM_LANGUAGE_CODE)!!"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/h/c$d;->a:Le/a/c/a/g/o1;

    iget-object p1, p1, Le/a/c/a/g/o1;->c:Landroid/widget/RadioGroup;

    const-string v2, "radioGroup"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v2, Lcom/truecaller/insights/ui/R$id;->radio_wifi_mobile:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0, v1, p1}, Le/a/c/a/h/e;->k8(Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "callback"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
