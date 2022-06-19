.class public final Lcom/hiya/client/support/io/hiyaservice/HiyaServicesJsonMissingException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Hiya_Services.json is missing in the raw folder."

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
