.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/v;->c(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    const v1, 0x7f1100c7

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/v;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$e;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->i1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/z;->v()V

    return-void
.end method
