.class public final Le/a/m0/a1$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "actions_dismissed"

    const-string v1, "marked_unread"

    const-string v2, "pinned_date"

    const-string v3, "archived_date"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/a1$n;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_thread_stats"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
