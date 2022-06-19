.class public final Le/a/a0/a/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->c8(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    .line 2
    sget v1, Le/a/a0/a/a;->D:I

    .line 3
    invoke-virtual {v0}, Le/a/a0/a/a;->TA()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "bottomRightButton"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    .line 6
    iget-object v0, v0, Le/a/a0/a/a;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "bottomLeftButton"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    sget v3, Lcom/truecaller/spamcategories/R$string;->StrSkip:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    .line 9
    invoke-virtual {v0}, Le/a/a0/a/a;->TA()Landroid/widget/TextView;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a0/a/a$g;->a:Le/a/a0/a/a;

    sget v2, Lcom/truecaller/spamcategories/R$string;->StrSubmit:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
