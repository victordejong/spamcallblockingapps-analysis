.class public Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Component of Freshchat SDK not found in your app\'s AndroidManifest.xml + ("

    const-string v1, " missing!)"

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
