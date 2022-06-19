.class public final Le/a/h4/q/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/notificationchannels/R$color;->notification_channels_notification_light_default:I

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p1, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method
