.class public final Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;
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

.method public static b(Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p0, p5, 0x8

    if-eqz p0, :cond_1

    const/4 p4, 0x0

    :cond_1
    const-string p0, "context"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "analyticsContext"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/content/Intent;

    const-class p5, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;

    invoke-direct {p0, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "cleanup_result"

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "analytics_context"

    .line 4
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "action"

    .line 5
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(context, InboxCle\u2026Extra(ARG_ACTION, action)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->b(Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
