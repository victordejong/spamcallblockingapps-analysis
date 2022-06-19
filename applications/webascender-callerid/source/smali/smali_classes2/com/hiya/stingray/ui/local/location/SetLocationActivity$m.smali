.class public final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const v1, 0x7f1101a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->a0()Lcom/hiya/stingray/ui/local/location/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/location/f;->t()V

    return-void
.end method
