.class public Lcom/huawei/hms/availableupdate/i0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/i0;->a()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/availableupdate/i0;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/i0$b;->a:Lcom/huawei/hms/availableupdate/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "ReconfirmInstallDialog"

    const-string p2, "start cancel..."

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/i0$b;->a:Lcom/huawei/hms/availableupdate/i0;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/i0;->a(Lcom/huawei/hms/availableupdate/i0;)Lcom/huawei/hms/availableupdate/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->a()V

    return-void
.end method
