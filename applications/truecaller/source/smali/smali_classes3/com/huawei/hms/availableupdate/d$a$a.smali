.class public Lcom/huawei/hms/availableupdate/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/d$a;->a(ILcom/huawei/hms/availableupdate/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/huawei/hms/availableupdate/h;

.field public final synthetic c:Lcom/huawei/hms/availableupdate/d$a;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/d$a;ILcom/huawei/hms/availableupdate/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/d$a$a;->c:Lcom/huawei/hms/availableupdate/d$a;

    iput p2, p0, Lcom/huawei/hms/availableupdate/d$a$a;->a:I

    iput-object p3, p0, Lcom/huawei/hms/availableupdate/d$a$a;->b:Lcom/huawei/hms/availableupdate/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/d$a$a;->c:Lcom/huawei/hms/availableupdate/d$a;

    iget-object v0, v0, Lcom/huawei/hms/availableupdate/d$a;->a:Lcom/huawei/hms/availableupdate/g;

    iget v1, p0, Lcom/huawei/hms/availableupdate/d$a$a;->a:I

    iget-object v2, p0, Lcom/huawei/hms/availableupdate/d$a$a;->b:Lcom/huawei/hms/availableupdate/h;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/availableupdate/g;->a(ILcom/huawei/hms/availableupdate/h;)V

    return-void
.end method
