.class public Lcom/freshchat/consumer/sdk/exception/InvalidDomainException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Invalid Freshchat Domain. Please check logs for more details"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
