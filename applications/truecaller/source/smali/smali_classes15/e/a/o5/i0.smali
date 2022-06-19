.class public final Le/a/o5/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "com.whatsapp"

    const-string v1, "com.facebook.orca"

    const-string v2, "com.viber.voip"

    const-string v3, "com.skype.raider"

    const-string v4, "org.telegram.messenger"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/o5/i0;->a:Ljava/util/List;

    return-void
.end method
