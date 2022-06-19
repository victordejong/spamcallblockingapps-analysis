.class public final enum Le/h/a/c/w0/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/w0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/h/a/c/w0/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Le/h/a/c/w0/g$a;

.field public static final enum f:Le/h/a/c/w0/g$a;

.field public static final enum g:Le/h/a/c/w0/g$a;

.field public static final enum h:Le/h/a/c/w0/g$a;

.field public static final enum i:Le/h/a/c/w0/g$a;

.field public static final synthetic j:[Le/h/a/c/w0/g$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Le/h/a/c/w0/g$a;

    const-string v1, "FCM"

    const/4 v2, 0x0

    const-string v3, "fcm"

    const-string v4, "fcm_token"

    const-string v5, "com.clevertap.android.sdk.pushnotification.fcm.FcmPushProvider"

    const-string v6, "com.google.firebase.messaging.FirebaseMessagingService"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/h/a/c/w0/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    .line 2
    new-instance v0, Le/h/a/c/w0/g$a;

    const-string v9, "XPS"

    const/4 v10, 0x1

    const-string v11, "xps"

    const-string v12, "xps_token"

    const-string v13, "com.clevertap.android.xps.XiaomiPushProvider"

    const-string v14, "com.xiaomi.mipush.sdk.MiPushClient"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Le/h/a/c/w0/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/h/a/c/w0/g$a;->f:Le/h/a/c/w0/g$a;

    .line 3
    new-instance v1, Le/h/a/c/w0/g$a;

    const-string v16, "HPS"

    const/16 v17, 0x2

    const-string v18, "hps"

    const-string v19, "hps_token"

    const-string v20, "com.clevertap.android.hms.HmsPushProvider"

    const-string v21, "com.huawei.hms.push.HmsMessageService"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Le/h/a/c/w0/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    .line 4
    new-instance v2, Le/h/a/c/w0/g$a;

    const-string v9, "BPS"

    const/4 v10, 0x3

    const-string v11, "bps"

    const-string v12, "bps_token"

    const-string v13, "com.clevertap.android.bps.BaiduPushProvider"

    const-string v14, "com.baidu.android.pushservice.PushMessageReceiver"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Le/h/a/c/w0/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Le/h/a/c/w0/g$a;->h:Le/h/a/c/w0/g$a;

    .line 5
    new-instance v3, Le/h/a/c/w0/g$a;

    const-string v16, "ADM"

    const/16 v17, 0x4

    const-string v18, "adm"

    const-string v19, "adm_token"

    const-string v20, "com.clevertap.android.adm.AmazonPushProvider"

    const-string v21, "com.amazon.device.messaging.ADM"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Le/h/a/c/w0/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Le/h/a/c/w0/g$a;->i:Le/h/a/c/w0/g$a;

    const/4 v4, 0x5

    new-array v4, v4, [Le/h/a/c/w0/g$a;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Le/h/a/c/w0/g$a;->j:[Le/h/a/c/w0/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Le/h/a/c/w0/g$a;->d:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Le/h/a/c/w0/g$a;->c:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Le/h/a/c/w0/g$a;->a:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Le/h/a/c/w0/g$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/h/a/c/w0/g$a;
    .locals 1

    .line 1
    const-class v0, Le/h/a/c/w0/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/h/a/c/w0/g$a;

    return-object p0
.end method

.method public static values()[Le/h/a/c/w0/g$a;
    .locals 1

    .line 1
    sget-object v0, Le/h/a/c/w0/g$a;->j:[Le/h/a/c/w0/g$a;

    invoke-virtual {v0}, [Le/h/a/c/w0/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/h/a/c/w0/g$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, " [PushType:"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
