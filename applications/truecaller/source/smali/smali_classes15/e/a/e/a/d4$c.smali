.class public final Le/a/e/a/d4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/d4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/d4;

.field public final synthetic b:[Ls1/k;


# direct methods
.method public constructor <init>(Le/a/e/a/d4;[Ls1/k;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/d4$c;->a:Le/a/e/a/d4;

    iput-object p2, p0, Le/a/e/a/d4$c;->b:[Ls1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/e/a/d4$c;->a:Le/a/e/a/d4;

    iget-object v0, p0, Le/a/e/a/d4$c;->b:[Ls1/k;

    invoke-static {p1, v0}, Le/a/e/a/d4;->QA(Le/a/e/a/d4;[Ls1/k;)I

    move-result p1

    .line 2
    new-instance v0, Ln3/b/a/g$a;

    iget-object v1, p0, Le/a/e/a/d4$c;->a:Le/a/e/a/d4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Apply flag "

    const-string v2, " to phone "

    .line 3
    invoke-static {v1, p1, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/e/a/d4$c;->a:Le/a/e/a/d4;

    invoke-static {v2}, Le/a/e/a/d4;->RA(Le/a/e/a/d4;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "phoneBusinessSender"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f120726

    .line 5
    new-instance v2, Le/a/e/a/d4$c$a;

    invoke-direct {v2, p0, p1}, Le/a/e/a/d4$c$a;-><init>(Le/a/e/a/d4$c;I)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f12071f

    .line 6
    sget-object v1, Le/a/e/a/d4$c$b;->a:Le/a/e/a/d4$c$b;

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
