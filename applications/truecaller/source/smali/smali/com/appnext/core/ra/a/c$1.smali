.class public final synthetic Lcom/appnext/core/ra/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/ra/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic eP:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appnext/core/ra/services/a$a;->values()[Lcom/appnext/core/ra/services/a$a;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/appnext/core/ra/a/c$1;->eP:[I

    :try_start_0
    sget-object v2, Lcom/appnext/core/ra/services/a$a;->SendRA:Lcom/appnext/core/ra/services/a$a;

    const/4 v2, 0x1

    aput v2, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/appnext/core/ra/a/c$1;->eP:[I

    sget-object v2, Lcom/appnext/core/ra/services/a$a;->StoreRa:Lcom/appnext/core/ra/services/a$a;

    const/4 v2, 0x2

    aput v2, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/appnext/core/ra/a/c$1;->eP:[I

    sget-object v2, Lcom/appnext/core/ra/services/a$a;->DownloadingConfig:Lcom/appnext/core/ra/services/a$a;

    const/4 v2, 0x0

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
