.class public final Le/m/a/h/a/g/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/a/h/a/d/g;

.field public static final d:Landroid/content/Intent;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Le/m/a/h/a/d/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/r<",
            "Le/m/a/h/a/d/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "SplitInstallService"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Le/m/a/h/a/g/y;->d:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/h/a/g/y;->a:Ljava/lang/String;

    .line 1
    invoke-static {p1}, Le/m/a/h/a/d/b1;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Le/m/a/h/a/d/r;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 4
    :goto_0
    sget-object v2, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    sget-object v4, Le/m/a/h/a/g/y;->d:Landroid/content/Intent;

    sget-object v5, Le/m/a/h/a/g/q;->a:Le/m/a/h/a/g/q;

    const/4 v6, 0x0

    const-string v3, "SplitInstallService"

    move-object v0, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Le/m/a/h/a/d/r;-><init>(Landroid/content/Context;Le/m/a/h/a/d/g;Ljava/lang/String;Landroid/content/Intent;Le/m/a/h/a/d/n;Le/m/a/h/a/d/m;)V

    iput-object p2, p0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    :cond_1
    return-void
.end method

.method public static bridge synthetic a()Landroid/os/Bundle;
    .locals 2

    const-string v0, "playcore_version_code"

    const/16 v1, 0x2afa

    invoke-static {v0, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    .line 4
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c()Le/m/a/h/a/h/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/m/a/h/a/h/r<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xe

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/g/a;

    .line 2
    invoke-direct {v0, v2}, Le/m/a/h/a/g/a;-><init>(I)V

    invoke-static {v0}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0
.end method
