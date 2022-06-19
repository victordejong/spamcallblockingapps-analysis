.class public final Lcom/hiya/stingray/ui/local/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/g/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$a;->a:Lcom/hiya/stingray/ui/local/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a$a;->a:Lcom/hiya/stingray/ui/local/g/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/g/a$a;->a:Lcom/hiya/stingray/ui/local/g/a;

    const v2, 0x7f1101a0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    .line 3
    invoke-static {p1, v1, v2}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 4
    const-class v1, Lcom/hiya/stingray/ui/local/g/a$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a$a;->a:Lcom/hiya/stingray/ui/local/g/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/g/a;->h1(Lcom/hiya/stingray/ui/local/g/a;)V

    return-void
.end method
