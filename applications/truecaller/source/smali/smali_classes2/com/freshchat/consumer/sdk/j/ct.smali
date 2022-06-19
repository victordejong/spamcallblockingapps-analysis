.class public Lcom/freshchat/consumer/sdk/j/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static hX()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
