.class public final synthetic Le/a/d5/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/d5/g/j;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Le/a/d5/g/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/g/d;->a:Le/a/d5/g/j;

    iput-object p2, p0, Le/a/d5/g/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/d5/g/d;->a:Le/a/d5/g/j;

    iget-object p2, p0, Le/a/d5/g/d;->b:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onboarding-blockSpam"

    .line 2
    invoke-static {p2, v0}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3
    iget-object p1, p1, Le/a/d5/g/j;->d:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
