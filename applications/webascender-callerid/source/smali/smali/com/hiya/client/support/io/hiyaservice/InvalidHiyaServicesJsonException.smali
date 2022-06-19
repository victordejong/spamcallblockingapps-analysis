.class public final Lcom/hiya/client/support/io/hiyaservice/InvalidHiyaServicesJsonException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Bad Hiya_Services.json found.  Do not make any modification to the json file."

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
