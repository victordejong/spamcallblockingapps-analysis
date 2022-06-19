.class public final Lcom/hiya/stingray/ui/local/search/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/search/g;->k1(Lcom/hiya/stingray/ui/local/search/g;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    const v2, 0x7f110263

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v2}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 6
    const-class v1, Lcom/hiya/stingray/ui/local/search/g$c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/g;->n1()Lcom/hiya/stingray/ui/local/search/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/search/f;->d(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/local/search/g;->j1(Lcom/hiya/stingray/ui/local/search/g;Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/search/g;->k1(Lcom/hiya/stingray/ui/local/search/g;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$c;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/g;->n1()Lcom/hiya/stingray/ui/local/search/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/search/f;->d(Z)V

    return-void
.end method
