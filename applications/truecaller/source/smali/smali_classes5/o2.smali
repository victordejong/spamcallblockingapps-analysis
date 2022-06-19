.class public final Lo2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo2;->b:I

    iput-object p2, p0, Lo2;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lo2;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lo2;->c:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->OA()Le/a/e/b/p/e;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/p/e;->ej()V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lo2;->c:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->OA()Le/a/e/b/p/e;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/p/e;->ej()V

    return-object v0
.end method
