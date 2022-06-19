.class public Le/n/b/f0;
.super Lcom/mopub/network/AdLoader;
.source "SourceFile"


# instance fields
.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/n/b/f0;->m:Z

    .line 3
    iput-boolean p1, p0, Le/n/b/f0;->n:Z

    return-void
.end method
