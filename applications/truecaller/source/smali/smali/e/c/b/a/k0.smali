.class public final synthetic Le/c/b/a/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DtbMetrics$Submitter;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DtbMetrics$Submitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/k0;->a:Lcom/amazon/device/ads/DtbMetrics$Submitter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/c/b/a/k0;->a:Lcom/amazon/device/ads/DtbMetrics$Submitter;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbMetrics$Submitter;->a()V

    return-void
.end method
