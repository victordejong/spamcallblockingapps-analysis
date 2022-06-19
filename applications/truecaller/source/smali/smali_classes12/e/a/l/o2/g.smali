.class public final Le/a/l/o2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/o2/f;


# instance fields
.field public a:Le/a/l/o2/a;

.field public b:Le/a/l/o2/b;

.field public final c:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/l/c2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o2/g;->c:Le/a/l/c2;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V
    .locals 5

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subscription"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "button"

    invoke-static {p5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subscriptionButton"

    invoke-static {p5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Le/a/l/o2/a;

    invoke-direct {v3}, Le/a/l/o2/a;-><init>()V

    .line 3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "iconRes"

    .line 5
    invoke-virtual {v4, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v4, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-virtual {v4, v2, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    iget-object p2, p0, Le/a/l/o2/g;->b:Le/a/l/o2/b;

    .line 10
    iput-object p2, v3, Le/a/l/o2/a;->a:Le/a/l/o2/b;

    .line 11
    iput-object v3, p0, Le/a/l/o2/g;->a:Le/a/l/o2/a;

    .line 12
    new-instance p2, Ln3/r/a/a;

    invoke-direct {p2, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 13
    const-class p1, Le/a/l/o2/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 14
    invoke-virtual {p2, p3, v3, p1, p4}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p2}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public b(Le/a/l/o2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/l/o2/g;->b:Le/a/l/o2/b;

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/o2/g;->c:Le/a/l/c2;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/l/c2;->H0(Z)V

    .line 2
    iget-object v0, p0, Le/a/l/o2/g;->a:Le/a/l/o2/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/m/a/g/e/e;->dismissAllowingStateLoss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/l/o2/g;->a:Le/a/l/o2/a;

    return-void
.end method
