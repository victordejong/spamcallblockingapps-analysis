.class public final Le/a/h4/q/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h4/q/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;
    .locals 1

    and-int/lit8 p0, p12, 0x20

    if-eqz p0, :cond_0

    const/4 p6, 0x2

    :cond_0
    and-int/lit8 p0, p12, 0x40

    if-eqz p0, :cond_1

    const/4 p7, 0x1

    :cond_1
    and-int/lit16 p0, p12, 0x80

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p2}, Le/a/h4/g;->c()Z

    move-result p8

    :cond_2
    and-int/lit16 p0, p12, 0x100

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    move-object p9, v0

    :cond_3
    and-int/lit16 p0, p12, 0x200

    if-eqz p0, :cond_4

    move-object p10, v0

    :cond_4
    and-int/lit16 p0, p12, 0x400

    if-eqz p0, :cond_5

    .line 2
    invoke-interface {p2}, Le/a/h4/g;->g()Landroid/net/Uri;

    move-result-object p11

    .line 3
    :cond_5
    new-instance p0, Landroid/app/NotificationChannel;

    .line 4
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, p3, p2, p6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 8
    invoke-virtual {p0, p8}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 9
    sget p2, Lcom/truecaller/notificationchannels/R$color;->notification_channels_notification_light_default:I

    .line 10
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    if-eqz p10, :cond_6

    .line 13
    invoke-virtual {p0, p10}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 14
    :cond_6
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x4

    .line 15
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x5

    .line 16
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p11, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    if-eqz p9, :cond_7

    .line 19
    invoke-virtual {p0, p9}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_7
    return-object p0
.end method
