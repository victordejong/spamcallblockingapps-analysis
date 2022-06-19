.class public final Le/a/m0/a1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/a1$g;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public static a()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "data"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
