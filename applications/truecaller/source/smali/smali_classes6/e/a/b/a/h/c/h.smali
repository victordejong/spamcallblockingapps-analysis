.class public final Le/a/b/a/h/c/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/h/c/a;


# direct methods
.method public constructor <init>(Le/a/b/a/h/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/h/c/h;->b:Le/a/b/a/h/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tagSelectionResultKey"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Le/a/b/a/h/c/h;->b:Le/a/b/a/h/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/b/a/h/c/h;->b:Le/a/b/a/h/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
