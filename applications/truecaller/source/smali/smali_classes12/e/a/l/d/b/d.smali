.class public final Le/a/l/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/r5/i0;

.field public final d:Le/a/l/d/b/b;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/z4/d;Le/a/r5/i0;Le/a/l/d/b/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogStarter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/d/b/d;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/d/b/d;->b:Le/a/z4/d;

    iput-object p3, p0, Le/a/l/d/b/d;->c:Le/a/r5/i0;

    iput-object p4, p0, Le/a/l/d/b/d;->d:Le/a/l/d/b/b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLs1/z/b/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "showDetailsAction"

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/l/d/b/d;->b:Le/a/z4/d;

    const-string v3, "premiumIncognitoOnProfileViewBreakpoint"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2
    iget-object v3, p0, Le/a/l/d/b/d;->a:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Le/a/l/d/b/d;->c:Le/a/r5/i0;

    invoke-interface {v3}, Le/a/r5/i0;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p3, p0, Le/a/l/d/b/d;->b:Le/a/z4/d;

    const-string p4, "premiumIncognitoOnProfileViewCurrentCount"

    invoke-interface {p3, p4, v4}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v3, 0x1

    if-le v3, p3, :cond_1

    goto :goto_0

    :cond_1
    if-le v2, p3, :cond_2

    .line 4
    iget-object p1, p0, Le/a/l/d/b/d;->b:Le/a/z4/d;

    invoke-interface {p1, p4}, Le/a/z4/d;->l(Ljava/lang/String;)I

    .line 5
    invoke-interface {p5}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p3, p0, Le/a/l/d/b/d;->b:Le/a/z4/d;

    invoke-interface {p3, p4, v3}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object p3, p0, Le/a/l/d/b/d;->d:Le/a/l/d/b/b;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "name"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p4, Le/a/l/d/b/a;

    invoke-direct {p4}, Le/a/l/d/b/a;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iput-object p5, p4, Le/a/l/d/b/a;->a:Ls1/z/b/a;

    const-string p2, "incognitoOnDetailsViewDialogTag"

    .line 15
    invoke-virtual {p4, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 16
    :cond_3
    :goto_2
    invoke-interface {p5}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
