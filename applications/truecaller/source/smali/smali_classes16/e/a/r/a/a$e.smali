.class public final Le/a/r/a/a$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/a;->I1(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.backup.WizardRestoreBackupFragment$showBackupNotFoundDialog$1"
    f = "WizardRestoreBackupFragment.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/r/a/a;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r/a/a;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/a$e;->h:Le/a/r/a/a;

    iput-object p2, p0, Le/a/r/a/a$e;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/a$e;

    iget-object v0, p0, Le/a/r/a/a$e;->h:Le/a/r/a/a;

    iget-object v1, p0, Le/a/r/a/a$e;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/a$e;-><init>(Le/a/r/a/a;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/a$e;

    iget-object v0, p0, Le/a/r/a/a$e;->h:Le/a/r/a/a;

    iget-object v1, p0, Le/a/r/a/a$e;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/a$e;-><init>(Le/a/r/a/a;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a/a$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a/a$e;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/r/a/a$e;->f:Ljava/lang/Object;

    check-cast v0, Le/a/r/a/a$e;

    iget-object v0, p0, Le/a/r/a/a$e;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/r/a/a$e;->h:Le/a/r/a/a;

    invoke-virtual {v1}, Le/a/r/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "context ?: return@runBlocking false"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Le/a/r/a/a$e;->e:Ljava/lang/Object;

    iput-object p0, p0, Le/a/r/a/a$e;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/r/a/a$e;->g:I

    new-instance v1, Ls1/w/i;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v1, v3}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 6
    new-instance v3, Ls1/z/c/y;

    invoke-direct {v3}, Ls1/z/c/y;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Ls1/z/c/y;->a:Z

    .line 7
    new-instance v5, Ln3/b/a/g$a;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v5, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Le/a/r/a/a$e;->h:Le/a/r/a/a;

    sget v6, Lcom/truecaller/wizard/R$string;->restore_onboarding_backup_not_found:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Le/a/r/a/a$e;->i:Ljava/lang/String;

    aput-object v7, v2, v4

    invoke-virtual {p1, v6, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v2, v5, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 10
    sget p1, Lcom/truecaller/wizard/R$string;->restore_onboarding_button_change_account:I

    new-instance v2, Le/a/r/a/a$e$a;

    invoke-direct {v2, v3}, Le/a/r/a/a$e$a;-><init>(Ls1/z/c/y;)V

    invoke-virtual {v5, p1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 11
    sget p1, Lcom/truecaller/wizard/R$string;->StrCancel:I

    const/4 v2, 0x0

    invoke-virtual {v5, p1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 12
    new-instance p1, Le/a/r/a/a$e$b;

    invoke-direct {p1, v1, v3}, Le/a/r/a/a$e$b;-><init>(Ls1/w/d;Ls1/z/c/y;)V

    .line 13
    iget-object v2, v5, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 14
    invoke-virtual {v5}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    .line 15
    invoke-virtual {v1}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const-string v1, "frame"

    .line 16
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1

    .line 17
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
