.class public final Le/a/b/a/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/Map<",
        "Ljava/util/UUID;",
        "+",
        "Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/k;

.field public final synthetic b:Le/a/b/m/f0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/k;Le/a/b/m/f0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/s;->a:Le/a/b/a/a/a/k;

    iput-object p2, p0, Le/a/b/a/a/a/s;->b:Le/a/b/m/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    sget-object v0, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->IN_PROGRESS:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "binding.pbImageUploading"

    const-string v1, "requireActivity()"

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/b/a/a/a/s;->a:Le/a/b/a/a/a/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/n/g0;->u(Landroid/app/Activity;)V

    .line 4
    iget-object p1, p0, Le/a/b/a/a/a/s;->b:Le/a/b/m/f0;

    iget-object p1, p1, Le/a/b/m/f0;->n:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/b/a/a/a/s;->a:Le/a/b/a/a/a/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/n/g0;->w(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Le/a/b/a/a/a/s;->b:Le/a/b/m/f0;

    iget-object p1, p1, Le/a/b/m/f0;->n:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :goto_0
    return-void
.end method
