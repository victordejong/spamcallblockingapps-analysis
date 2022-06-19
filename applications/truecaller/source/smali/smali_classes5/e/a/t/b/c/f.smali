.class public Le/a/t/b/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/android/sdk/clients/VerificationCallback;

.field public final synthetic e:Ln3/r/a/l;

.field public final synthetic f:Le/a/t/b/c/g;


# direct methods
.method public constructor <init>(Le/a/t/b/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Ln3/r/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/t/b/c/f;->f:Le/a/t/b/c/g;

    iput-object p2, p0, Le/a/t/b/c/f;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/t/b/c/f;->b:Ljava/lang/String;

    iput-object p4, p0, Le/a/t/b/c/f;->c:Ljava/lang/String;

    iput-object p5, p0, Le/a/t/b/c/f;->d:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iput-object p6, p0, Le/a/t/b/c/f;->e:Ln3/r/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/t/b/c/f;->f:Le/a/t/b/c/g;

    .line 2
    iget-object v0, p1, Le/a/t/b/c/g;->h:Le/a/t/b/c/i;

    .line 3
    iget-object v1, p1, Le/a/t/b/c/d;->d:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Le/a/t/b/c/f;->a:Ljava/lang/String;

    iget-object v3, p0, Le/a/t/b/c/f;->b:Ljava/lang/String;

    iget-object v4, p0, Le/a/t/b/c/f;->c:Ljava/lang/String;

    .line 5
    iget-boolean v5, p1, Le/a/t/b/c/g;->j:Z

    .line 6
    iget-object v6, p0, Le/a/t/b/c/f;->d:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    invoke-interface/range {v0 .. v6}, Le/a/t/b/c/i;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/clients/VerificationCallback;)V

    return-void
.end method

.method public c(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Le/a/t/b/c/f;->e:Ln3/r/a/l;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "For verifying your number, we need Calls and Phone permission"

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Le/a/t/b/c/a;

    invoke-direct {v0, p0}, Le/a/t/b/c/a;-><init>(Le/a/t/b/c/f;)V

    const-string v1, "OK"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Le/a/t/b/c/b;

    invoke-direct {v0, p0}, Le/a/t/b/c/b;-><init>(Le/a/t/b/c/f;)V

    const-string v1, "Cancel"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
