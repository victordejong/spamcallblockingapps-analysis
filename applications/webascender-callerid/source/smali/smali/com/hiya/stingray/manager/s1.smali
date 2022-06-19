.class public Lcom/hiya/stingray/manager/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/d/a;

.field private final c:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/s1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/s1;->b:Lcom/hiya/stingray/q/d/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/s1;->c:Lcom/hiya/stingray/util/a0;

    return-void
.end method

.method private final a()Landroid/app/role/RoleManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s1;->a:Landroid/content/Context;

    const-string v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/role/RoleManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/s1;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s1;->a()Landroid/app/role/RoleManager;

    move-result-object v0

    const-string v1, "android.app.role.CALL_SCREENING"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s1;->a()Landroid/app/role/RoleManager;

    move-result-object v0

    const-string v1, "android.app.role.CALL_SCREENING"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s1;->c:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/manager/g1$b;

    invoke-direct {v1}, Lcom/hiya/stingray/manager/g1$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s1;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->O(Z)V

    return-void
.end method
