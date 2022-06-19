.class public final Le/a/o/a/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/h/a;


# instance fields
.field public final a:Le/a/o/b/o;


# direct methods
.method public constructor <init>(Le/a/o/b/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/a/h/h;->a:Le/a/o/b/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/a/h/h;->a:Le/a/o/b/o;

    const-string v1, "guidelineIsAgreed"

    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;)Z
    .locals 6

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/o/a/h/h;->a:Le/a/o/b/o;

    const-string v2, "guidelineIsAgreed"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 2
    :cond_0
    sget-object v1, Le/a/o/a/h/b;->i:Le/a/o/a/h/b$b;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Le/a/o/a/h/b;

    invoke-direct {v0}, Le/a/o/a/h/b;-><init>()V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string p2, "manage_call_reason_source"

    invoke-virtual {v1, p2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    const-class p2, Le/a/o/a/h/b;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
