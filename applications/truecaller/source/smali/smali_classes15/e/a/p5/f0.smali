.class public final Le/a/p5/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/d0;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 26
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/p5/f0;->d:Landroid/content/Context;

    const-string v1, "su"

    const-string v2, "magisk"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/p5/f0;->a:Ljava/util/List;

    const-string v2, "/data/local/"

    const-string v3, "/data/local/bin/"

    const-string v4, "/data/local/xbin/"

    const-string v5, "/sbin/"

    const-string v6, "/su/bin/"

    const-string v7, "/system/bin/"

    const-string v8, "/system/bin/.ext/"

    const-string v9, "/system/bin/failsafe/"

    const-string v10, "/system/sd/xbin/"

    const-string v11, "/system/usr/we-need-root/"

    const-string v12, "/system/xbin/"

    const-string v13, "/cache"

    const-string v14, "/data"

    const-string v15, "/dev"

    .line 3
    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/p5/f0;->b:Ljava/util/List;

    const-string v2, "com.devadvance.rootcloakplus"

    const-string v3, "com.chelpus.luckypatcher"

    const-string v4, "com.koushikdutta.rommanager"

    const-string v5, "com.noshufou.android.su.elite"

    const-string v6, "com.ramdroid.appquarantine"

    const-string v7, "eu.chainfire.supersu"

    const-string v8, "com.devadvance.rootcloak"

    const-string v9, "com.topjohnwu.magisk"

    const-string v10, "com.thirdparty.superuser"

    const-string v11, "com.formyhm.hiderootPremium"

    const-string v12, "de.robv.android.xposed.installer"

    const-string v13, "com.saurik.substrate"

    const-string v14, "com.chelpus.lackypatch"

    const-string v15, "com.zachspong.temprootremovejb"

    const-string v16, "com.dimonvideo.luckypatcher"

    const-string v17, "com.android.vending.billing.InAppBillingService.COIN"

    const-string v18, "com.noshufou.android.su"

    const-string v19, "com.koushikdutta.superuser"

    const-string v20, "com.yellowes.su"

    const-string v21, "com.koushikdutta.rommanager.license"

    const-string v22, "com.amphoras.hidemyroot"

    const-string v23, "com.formyhm.hideroot"

    const-string v24, "com.amphoras.hidemyrootadfree"

    const-string v25, "com.ramdroid.appquarantinepro"

    .line 5
    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/p5/f0;->c:Ljava/util/List;

    return-void
.end method
