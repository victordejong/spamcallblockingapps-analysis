.class public final Lcom/hiya/client/callerid/ui/e0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/hiya/client/callerid/ui/e0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/e0/i;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/e0/i;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/e0/i;->a:Lcom/hiya/client/callerid/ui/e0/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/e0/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_2

    const-string v0, "role"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/app/role/RoleManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    check-cast v4, Landroid/app/role/RoleManager;

    if-eqz v4, :cond_5

    const-string p1, "android.app.role.DIALER"

    .line 4
    invoke-virtual {v4, p1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "telecom"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/telecom/TelecomManager;

    if-nez v1, :cond_3

    move-object v0, v4

    :cond_3
    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_1
    return v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
