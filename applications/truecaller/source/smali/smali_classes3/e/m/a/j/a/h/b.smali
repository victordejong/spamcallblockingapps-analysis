.class public final Le/m/a/j/a/h/b;
.super Le/m/a/j/a/h/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/m/a/j/a/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)Le/m/a/j/a/h/c;
    .locals 8

    new-instance v7, Le/m/a/j/a/h/i;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1
    sget-object v0, Le/m/a/j/a/h/q;->a:[Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Le/m/a/j/a/h/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)V

    return-object v7

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot retrieve calling Context\'s PackageInfo"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Landroid/app/Activity;Le/m/a/j/a/h/c;Z)Le/m/a/j/a/h/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/j/a/h/p$a;
        }
    .end annotation

    invoke-interface {p2}, Le/m/a/j/a/h/c;->a()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le/m/a/j/a/h/q;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Le/m/a/j/a/h/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer"

    .line 4
    new-instance v4, Le/m/a/j/a/h/o;

    invoke-direct {v4, v1}, Le/m/a/j/a/h/o;-><init>(Ljava/lang/Object;)V

    new-instance v1, Le/m/a/j/a/h/o;

    invoke-direct {v1, p1}, Le/m/a/j/a/h/o;-><init>(Ljava/lang/Object;)V

    .line 5
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v4, v1, p2, p3}, Le/m/a/j/a/h/p;->a(Ljava/lang/Class;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/os/IBinder;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    sget p2, Le/m/a/j/a/h/e$a;->a:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    instance-of p3, p2, Le/m/a/j/a/h/e;

    if-eqz p3, :cond_1

    move-object v0, p2

    check-cast v0, Le/m/a/j/a/h/e;

    goto :goto_1

    :cond_1
    new-instance v0, Le/m/a/j/a/h/e$a$a;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/e$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_1
    return-object v0

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Le/m/a/j/a/h/p$a;

    const-string p3, "Unable to find dynamic class "

    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Le/m/a/j/a/h/p$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 8
    :cond_2
    new-instance p1, Le/m/a/j/a/h/p$a;

    const-string p2, "Could not create remote context"

    invoke-direct {p1, p2}, Le/m/a/j/a/h/p$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
