.class public Lcom/huawei/updatesdk/service/otaupdate/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/huawei/updatesdk/service/otaupdate/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/f;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/otaupdate/f;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/otaupdate/f;->d:Lcom/huawei/updatesdk/service/otaupdate/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/huawei/updatesdk/service/otaupdate/f;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/otaupdate/f;->d:Lcom/huawei/updatesdk/service/otaupdate/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
