.class public final Le/a/t/b/c/k/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Le/a/t/b/c/k/e;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "()V",
        "b",
        "[Ljava/lang/String;",
        "preRequestPermissions",
        "Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;",
        "a",
        "Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;",
        "requestPermissionHandler",
        "<init>",
        "sdk-external_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantResults"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/t/b/c/k/e;->a:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 3
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 4
    aget v4, p3, v1

    if-nez v4, :cond_0

    .line 5
    aget-object v4, p2, v1

    invoke-virtual {v2, v4, v0}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c(Ljava/lang/String;Z)V

    goto :goto_1

    .line 6
    :cond_0
    aget-object v4, p2, v1

    .line 7
    iget-object v5, v2, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    .line 8
    sget v6, Ln3/k/a/b;->c:I

    .line 9
    invoke-virtual {v5, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    aget-object v4, p2, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d()V

    .line 12
    :cond_3
    iput-object v3, p0, Le/a/t/b/c/k/e;->b:[Ljava/lang/String;

    return-void

    :cond_4
    const-string p1, "requestPermissionHandler"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/t/b/c/k/e;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/t/b/c/k/e;->b:[Ljava/lang/String;

    return-void
.end method
