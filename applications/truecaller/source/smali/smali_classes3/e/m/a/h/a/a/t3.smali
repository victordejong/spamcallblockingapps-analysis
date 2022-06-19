.class public final synthetic Le/m/a/h/a/a/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/n;


# static fields
.field public static final synthetic a:Le/m/a/h/a/a/t3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/h/a/a/t3;

    invoke-direct {v0}, Le/m/a/h/a/a/t3;-><init>()V

    sput-object v0, Le/m/a/h/a/a/t3;->a:Le/m/a/h/a/a/t3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Le/m/a/h/a/d/s1;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    .line 2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Le/m/a/h/a/d/t1;

    if-eqz v1, :cond_1

    .line 4
    move-object p1, v0

    check-cast p1, Le/m/a/h/a/d/t1;

    goto :goto_0

    :cond_1
    new-instance v0, Le/m/a/h/a/d/r1;

    .line 5
    invoke-direct {v0, p1}, Le/m/a/h/a/d/r1;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
