.class public synthetic Lcom/huawei/hms/hatool/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hatool/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/huawei/hms/hatool/y0;->values()[Lcom/huawei/hms/hatool/y0;

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/hms/hatool/d1$a;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Lcom/huawei/hms/hatool/y0;->c:Lcom/huawei/hms/hatool/y0;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/huawei/hms/hatool/d1$a;->a:[I

    sget-object v3, Lcom/huawei/hms/hatool/y0;->a:Lcom/huawei/hms/hatool/y0;

    const/4 v3, 0x0

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/huawei/hms/hatool/d1$a;->a:[I

    sget-object v2, Lcom/huawei/hms/hatool/y0;->b:Lcom/huawei/hms/hatool/y0;

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
