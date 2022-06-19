.class public Lcom/mopub/common/ViewabilityManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ViewabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/mopub/common/ViewabilityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/mopub/common/ViewabilityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/common/ViewabilityManager;-><init>(Lcom/mopub/common/ViewabilityManager$a;)V

    sput-object v0, Lcom/mopub/common/ViewabilityManager$b;->a:Lcom/mopub/common/ViewabilityManager;

    return-void
.end method
