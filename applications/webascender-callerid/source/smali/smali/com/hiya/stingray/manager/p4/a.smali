.class public Lcom/hiya/stingray/manager/p4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/d/f;

.field private final c:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/p4/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    iput-object p3, p0, Lcom/hiya/stingray/manager/p4/a;->c:Lcom/hiya/stingray/manager/e1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->d()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->z(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->w(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->z(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->D(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->w(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->z(Z)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/stingray/manager/p4/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/p4/a;->b:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/d/f;->G(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/p4/a;->c:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_code"

    invoke-static {v2, v1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method
