.class public final Le/a/a/k/y/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/y/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SmsManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/y/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/k/y/c;->b:Landroid/telephony/SmsManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 7

    const-string v0, "contentUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sentIntent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/y/c;->b:Landroid/telephony/SmsManager;

    iget-object v2, p0, Le/a/a/k/y/c;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Z
    .locals 7

    const-string v0, "locationUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadedIntent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/y/c;->b:Landroid/telephony/SmsManager;

    iget-object v2, p0, Le/a/a/k/y/c;->a:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1
.end method
