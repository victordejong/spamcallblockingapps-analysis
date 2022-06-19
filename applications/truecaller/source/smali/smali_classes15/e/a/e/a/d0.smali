.class public final synthetic Le/a/e/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/d0;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p1, p0, Le/a/e/a/d0;->a:Le/a/e/a/k3;

    .line 1
    iget-object v0, p1, Le/a/e/a/k3;->e:Le/a/x3/c;

    invoke-interface {v0}, Le/a/x3/c;->b()Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const-string v2, "Current: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const-string v2, "No update"

    const-string v4, "Optional update"

    const-string v5, "Required update"

    const-string v6, "Version discontinued"

    .line 5
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Le/a/e/a/j1;

    invoke-direct {v4, p1, p2, v0}, Le/a/e/a/j1;-><init>(Le/a/e/a/k3;ILcom/truecaller/forcedupdate/UpdateType;)V

    .line 6
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 7
    iput-object v4, v3, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
