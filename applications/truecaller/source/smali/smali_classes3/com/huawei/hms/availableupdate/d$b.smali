.class public Lcom/huawei/hms/availableupdate/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/d;->a(Lcom/huawei/hms/availableupdate/g;Lcom/huawei/hms/availableupdate/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/availableupdate/g;

.field public final synthetic b:Lcom/huawei/hms/availableupdate/h;

.field public final synthetic c:Lcom/huawei/hms/availableupdate/d;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/d;Lcom/huawei/hms/availableupdate/g;Lcom/huawei/hms/availableupdate/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/d$b;->c:Lcom/huawei/hms/availableupdate/d;

    iput-object p2, p0, Lcom/huawei/hms/availableupdate/d$b;->a:Lcom/huawei/hms/availableupdate/g;

    iput-object p3, p0, Lcom/huawei/hms/availableupdate/d$b;->b:Lcom/huawei/hms/availableupdate/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/d$b;->c:Lcom/huawei/hms/availableupdate/d;

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/d;->a(Lcom/huawei/hms/availableupdate/d;)Lcom/huawei/hms/availableupdate/f;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/availableupdate/d$b;->a:Lcom/huawei/hms/availableupdate/g;

    invoke-static {v1}, Lcom/huawei/hms/availableupdate/d;->a(Lcom/huawei/hms/availableupdate/g;)Lcom/huawei/hms/availableupdate/g;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/availableupdate/d$b;->b:Lcom/huawei/hms/availableupdate/h;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/availableupdate/f;->a(Lcom/huawei/hms/availableupdate/g;Lcom/huawei/hms/availableupdate/h;)V

    return-void
.end method
