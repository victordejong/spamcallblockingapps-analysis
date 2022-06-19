.class public Lcom/huawei/hms/availableupdate/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/c0;->g()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog$Builder;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/huawei/hms/availableupdate/c0;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/c0;Landroid/app/AlertDialog$Builder;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/c0$b;->c:Lcom/huawei/hms/availableupdate/c0;

    iput-object p2, p0, Lcom/huawei/hms/availableupdate/c0$b;->a:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/huawei/hms/availableupdate/c0$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c0$b;->c:Lcom/huawei/hms/availableupdate/c0;

    new-instance p2, Lcom/huawei/hms/availableupdate/i0;

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/c0$b;->a:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/hms/availableupdate/c0$b;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/c0;->b(Lcom/huawei/hms/availableupdate/c0;)Lcom/huawei/hms/availableupdate/c0;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/huawei/hms/availableupdate/i0;-><init>(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;Lcom/huawei/hms/availableupdate/q;)V

    invoke-virtual {p2}, Lcom/huawei/hms/availableupdate/i0;->a()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/availableupdate/c0;->a(Lcom/huawei/hms/availableupdate/c0;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c0$b;->c:Lcom/huawei/hms/availableupdate/c0;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/c0;->a(Lcom/huawei/hms/availableupdate/c0;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c0$b;->c:Lcom/huawei/hms/availableupdate/c0;

    invoke-static {p1}, Lcom/huawei/hms/availableupdate/c0;->a(Lcom/huawei/hms/availableupdate/c0;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/availableupdate/q;->a(Landroid/app/AlertDialog;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/huawei/hms/availableupdate/c0;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c0$b;->c:Lcom/huawei/hms/availableupdate/c0;

    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->a()V

    :goto_0
    return-void
.end method
