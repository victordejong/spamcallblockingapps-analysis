.class public final Le/a/e/a/f2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/f2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/m3/s;

.field public final synthetic b:Le/a/e/a/f2;


# direct methods
.method public constructor <init>(Le/a/m3/s;Le/a/e/a/f2;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/f2$d;->a:Le/a/m3/s;

    iput-object p2, p0, Le/a/e/a/f2$d;->b:Le/a/e/a/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/e/a/f2$d;->a:Le/a/m3/s;

    iget-object p1, p1, Le/a/m3/s;->a:Landroid/widget/Spinner;

    const-string v0, "countryDropdown"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Le/a/e/a/f2$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Le/a/e/a/f2$c;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/e/a/f2$d;->b:Le/a/e/a/f2;

    .line 3
    iget-object v0, v0, Le/a/e/a/f2;->e:Le/a/b0/e/r/a;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Le/a/e/a/f2$c;->a:Ljava/lang/String;

    const-string v1, "profileCountryIso"

    .line 5
    invoke-interface {v0, v1, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/e/a/f2$d;->a:Le/a/m3/s;

    iget-object p1, p1, Le/a/m3/s;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Le/a/e/a/f2$d$a;

    invoke-direct {v0, p0}, Le/a/e/a/f2$d$a;-><init>(Le/a/e/a/f2$d;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "accountSettings"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
