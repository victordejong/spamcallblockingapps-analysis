.class public final Le/a/b/a/c/a/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/a/k;->b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Le/a/b/a/c/a/a/k;


# direct methods
.method public constructor <init>(JLe/a/b/m/h0;Le/a/b/a/c/a/a/k;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 0

    iput-wide p1, p0, Le/a/b/a/c/a/a/k$a;->a:J

    iput-object p4, p0, Le/a/b/a/c/a/a/k$a;->b:Le/a/b/a/c/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/a/k$a;->b:Le/a/b/a/c/a/a/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Le/a/b/a/c/a/a/k$a;->a:J

    const-string v3, "context"

    .line 2
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "selected_tag_id"

    .line 4
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
