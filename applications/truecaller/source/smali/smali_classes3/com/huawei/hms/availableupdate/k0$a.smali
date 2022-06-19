.class public final Lcom/huawei/hms/availableupdate/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/k0;->a(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/availableupdate/g;

.field public final synthetic b:I

.field public final synthetic c:Lcom/huawei/hms/availableupdate/h;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/g;ILcom/huawei/hms/availableupdate/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/k0$a;->a:Lcom/huawei/hms/availableupdate/g;

    iput p2, p0, Lcom/huawei/hms/availableupdate/k0$a;->b:I

    iput-object p3, p0, Lcom/huawei/hms/availableupdate/k0$a;->c:Lcom/huawei/hms/availableupdate/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/k0$a;->a:Lcom/huawei/hms/availableupdate/g;

    iget v1, p0, Lcom/huawei/hms/availableupdate/k0$a;->b:I

    iget-object v2, p0, Lcom/huawei/hms/availableupdate/k0$a;->c:Lcom/huawei/hms/availableupdate/h;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/availableupdate/g;->a(ILcom/huawei/hms/availableupdate/h;)V

    return-void
.end method
