.class public final Le/a/b/a/h/c/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Ljava/lang/Double;",
        "+",
        "Ljava/lang/Double;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/h/c/a;


# direct methods
.method public constructor <init>(Le/a/b/a/h/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/h/c/j;->b:Le/a/b/a/h/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ls1/k;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/b/a/h/c/j;->b:Le/a/b/a/h/c/a;

    .line 4
    iget-object v2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 6
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object p1, p0, Le/a/b/a/h/c/j;->b:Le/a/b/a/h/c/a;

    .line 8
    iget-object p1, p1, Le/a/b/a/h/c/a;->a:Le/a/u3/g;

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Le/a/u3/g;->d0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    .line 11
    :try_start_0
    sget v9, Lcom/truecaller/bizmon/R$string;->google_maps_api_key:I

    invoke-virtual {v1, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(R.string.google_maps_api_key)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "apiKey"

    .line 12
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v10, Le/a/k4/c;->a:Ljava/lang/String;

    const-string v11, "<set-?>"

    .line 14
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object v10, Le/a/k4/c;->b:Ljava/lang/String;

    .line 16
    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object v9, Le/a/k4/c;->a:Ljava/lang/String;

    .line 18
    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    .line 19
    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    const-string v9, "GoogleApiAvailability.getInstance()"

    .line 21
    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0xcc77c0

    .line 22
    invoke-virtual {v0, v7, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->e(Landroid/content/Context;I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 23
    invoke-static {v9}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isUserRecoverableError(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {v0, v7, v9, v8, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->f(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 26
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    .line 27
    invoke-static {v9}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p1, v9, v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw p1

    .line 29
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p1, v9}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p1

    .line 30
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-direct {v0, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "latitude"

    .line 31
    invoke-virtual {v0, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "longitude"

    .line 32
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "forceRemoteGeocoding"

    .line 33
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "toolbarTitle"

    .line 34
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "showAutocomplete"

    .line 35
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 36
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    instance-of v0, p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v0, :cond_3

    .line 39
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/truecaller/bizmon/R$string;->GooglePlayServicesNotAvailable:I

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 40
    :cond_3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 41
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_5
    const-string p1, "featuresRegistry"

    .line 42
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6
.end method
