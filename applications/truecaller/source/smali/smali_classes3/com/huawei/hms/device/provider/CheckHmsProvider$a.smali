.class public Lcom/huawei/hms/device/provider/CheckHmsProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/device/provider/CheckHmsProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/device/provider/CheckHmsProvider;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/device/provider/CheckHmsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/device/provider/CheckHmsProvider$a;->a:Lcom/huawei/hms/device/provider/CheckHmsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/device/provider/CheckHmsProvider$a;->a:Lcom/huawei/hms/device/provider/CheckHmsProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    return-void
.end method
