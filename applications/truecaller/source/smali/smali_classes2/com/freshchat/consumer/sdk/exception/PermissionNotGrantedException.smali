.class public Lcom/freshchat/consumer/sdk/exception/PermissionNotGrantedException;
.super Ljava/lang/SecurityException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Permission required by Freshchat SDK not granted (Is "

    const-string v1, " permission present in your manifest? )"

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-void
.end method
