.class final Lcom/hiya/api/zipkin/reporter/Platform$Jre6;
.super Lcom/hiya/api/zipkin/reporter/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Jre6"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/api/zipkin/reporter/Platform;-><init>()V

    return-void
.end method

.method static build()Lcom/hiya/api/zipkin/reporter/Platform$Jre6;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/Platform$Jre6;

    invoke-direct {v0}, Lcom/hiya/api/zipkin/reporter/Platform$Jre6;-><init>()V

    return-object v0
.end method
