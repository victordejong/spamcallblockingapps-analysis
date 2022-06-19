.class public final Le/a/b/a/a/a/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/d$j;->a:Le/a/b/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Le/a/b/a/a/a/b/a;->i:Le/a/b/a/a/a/b/a$e;

    sget-object v0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->GALLERY:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    invoke-virtual {v0}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->getValue()I

    move-result v0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Le/a/b/a/a/a/b/a;

    invoke-direct {p1}, Le/a/b/a/a/a/b/a;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_image_type"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    iget-object v0, p0, Le/a/b/a/a/a/d$j;->a:Le/a/b/a/a/a/d;

    .line 8
    iput-object v0, p1, Le/a/b/a/a/a/b/a;->d:Le/a/b/a/a/a/b/a$f;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
