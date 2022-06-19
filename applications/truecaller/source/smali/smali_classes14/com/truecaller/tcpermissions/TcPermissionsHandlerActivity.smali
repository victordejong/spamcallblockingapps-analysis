.class public final Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;
.super Le/a/h5/k;
.source "SourceFile"

# interfaces
.implements Le/a/h5/u;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\"\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J/\u0010\u000f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u000e\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;",
        "Ln3/b/a/h;",
        "Le/a/h5/u;",
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
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "finish",
        "()V",
        "onDestroy",
        "permission",
        "",
        "E5",
        "(Ljava/lang/String;)Z",
        "ea",
        "(I)Z",
        "resId",
        "a",
        "(I)V",
        "<init>",
        "tc-permissions_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/h5/v;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/h5/k;-><init>()V

    return-void
.end method


# virtual methods
.method public E5(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Ln3/k/a/b;->c:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-void
.end method

.method public ea(I)Z
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Settings.ACTION_A\u2026age\", packageName, null))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "App settings page couldn\'t be opened."

    .line 4
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;->d:Le/a/h5/v;

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p3, 0x1539

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p2, Le/a/h5/v;->e:Le/a/h5/l;

    invoke-virtual {p2}, Le/a/h5/v;->Hj()Z

    move-result p3

    .line 5
    iget-boolean p1, p1, Le/a/h5/l;->b:Z

    .line 6
    new-instance v0, Le/a/h5/l;

    invoke-direct {v0, p3, p1}, Le/a/h5/l;-><init>(ZZ)V

    .line 7
    iput-object v0, p2, Le/a/h5/v;->e:Le/a/h5/l;

    .line 8
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/u;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/h5/u;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/truecaller/tcpermissions/R$style;->Theme_Truecaller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "permissions"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "options"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;->d:Le/a/h5/v;

    const-string v5, "presenter"

    if-eqz v4, :cond_9

    .line 6
    iput-object p0, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_2

    :cond_2
    move p1, v2

    .line 7
    :goto_2
    move-object v6, p0

    check-cast v6, Le/a/h5/u;

    if-eqz v6, :cond_7

    if-nez v0, :cond_3

    if-eqz v6, :cond_7

    .line 8
    invoke-interface {v6}, Le/a/h5/u;->finish()V

    goto/16 :goto_5

    .line 9
    :cond_3
    iput-object v0, v4, Le/a/h5/v;->b:Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    new-instance v3, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const/4 v7, 0x7

    invoke-direct {v3, v2, v2, v1, v7}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    :goto_3
    iput-object v3, v4, Le/a/h5/v;->c:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permissions are set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", onRestore = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 14
    invoke-interface {v6, v8}, Le/a/h5/u;->E5(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_6
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v4, Le/a/h5/v;->d:Ljava/util/Set;

    if-nez p1, :cond_7

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting permissions "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    iget-object p1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/u;

    if-eqz p1, :cond_7

    new-array v1, v2, [Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x1538

    .line 19
    invoke-interface {p1, v0, v1}, Le/a/h5/u;->requestPermissions([Ljava/lang/String;I)V

    :cond_7
    :goto_5
    return-void

    .line 20
    :cond_8
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_9
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;->d:Le/a/h5/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/a/h5/v;->f:Le/a/h5/y;

    iget-object v0, v0, Le/a/h5/v;->e:Le/a/h5/l;

    invoke-interface {v1, v0}, Le/a/h5/y;->d(Le/a/h5/l;)V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantResults"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v2, p0, Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;->d:Le/a/h5/v;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x1538

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/u;

    if-eqz p1, :cond_9

    .line 5
    new-instance p3, Le/a/h5/l;

    .line 6
    invoke-virtual {v2}, Le/a/h5/v;->Hj()Z

    move-result v1

    .line 7
    iget-object v4, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/h5/u;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 8
    iget-object v6, v2, Le/a/h5/v;->b:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    iget-object v7, v2, Le/a/h5/v;->g:Le/a/p5/a0;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    aput-object v6, v9, v5

    invoke-interface {v7, v9}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 11
    iget-object v7, v2, Le/a/h5/v;->d:Ljava/util/Set;

    if-eqz v7, :cond_2

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12
    invoke-interface {v4, v6}, Le/a/h5/u;->E5(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_2
    const-string p1, "deniedPermissionCandidates"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_4
    :goto_0
    invoke-direct {p3, v1, v5}, Le/a/h5/l;-><init>(ZZ)V

    iput-object p3, v2, Le/a/h5/v;->e:Le/a/h5/l;

    .line 16
    iget-object p3, v2, Le/a/h5/v;->c:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const-string v0, "options"

    if-eqz p3, :cond_8

    .line 17
    iget-object p3, p3, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 19
    iget-object v1, v2, Le/a/h5/v;->g:Le/a/p5/a0;

    array-length v4, p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {v1, p2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 20
    iget-object p2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/h5/u;

    if-eqz p2, :cond_5

    invoke-interface {p2, p3}, Le/a/h5/u;->a(I)V

    .line 21
    :cond_5
    iget-object p2, v2, Le/a/h5/v;->c:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    if-eqz p2, :cond_7

    .line 22
    iget-boolean p2, p2, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    if-eqz p2, :cond_6

    .line 23
    iget-object p2, v2, Le/a/h5/v;->e:Le/a/h5/l;

    .line 24
    iget-boolean p2, p2, Le/a/h5/l;->b:Z

    if-eqz p2, :cond_6

    const/16 p2, 0x1539

    .line 25
    invoke-interface {p1, p2}, Le/a/h5/u;->ea(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 26
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/u;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/h5/u;->finish()V

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/u;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/h5/u;->finish()V

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_1
    return-void

    :cond_a
    const-string p1, "presenter"

    .line 30
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
