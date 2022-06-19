.class public final Le/a/r/a0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a0/e;


# direct methods
.method public constructor <init>(Le/a/r/a0/e;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/e$b;->a:Le/a/r/a0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Landroidx/activity/result/ActivityResult;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    const/16 p1, 0x3ea

    if-eq v0, p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/r/a0/e$b;->a:Le/a/r/a0/e;

    .line 5
    iget-object p1, p1, Le/a/r/a0/e;->b:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "onManualInputSelected"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/r/a0/e$b;->a:Le/a/r/a0/e;

    .line 9
    iget-object p1, p1, Le/a/r/a0/e;->c:Ls1/z/b/a;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "onNoPhoneNumbersAvailable"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/r/a0/e$b;->a:Le/a/r/a0/e;

    .line 13
    iget-object v0, v0, Le/a/r/a0/e;->a:Ls1/z/b/l;

    if-eqz v0, :cond_6

    .line 14
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-string v1, "com.google.android.gms.credentials.Credential"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_4

    .line 16
    iget-object v2, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->a:Ljava/lang/String;

    .line 17
    :cond_4
    invoke-interface {v0, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_0
    iget-object p1, p0, Le/a/r/a0/e$b;->a:Le/a/r/a0/e;

    .line 19
    sget-object v0, Le/a/r/a0/e;->e:Le/a/r/a0/e$a;

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    invoke-virtual {v1, p1}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 23
    invoke-virtual {v1}, Ln3/r/a/a;->g()I

    :cond_5
    return-void

    :cond_6
    const-string p1, "onPhoneNumberSelected"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
