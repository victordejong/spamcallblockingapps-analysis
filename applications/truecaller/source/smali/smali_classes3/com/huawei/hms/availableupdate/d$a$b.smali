.class public Lcom/huawei/hms/availableupdate/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/d$a;->a(IIILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Lcom/huawei/hms/availableupdate/d$a;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/d$a;IIILjava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/d$a$b;->e:Lcom/huawei/hms/availableupdate/d$a;

    iput p2, p0, Lcom/huawei/hms/availableupdate/d$a$b;->a:I

    iput p3, p0, Lcom/huawei/hms/availableupdate/d$a$b;->b:I

    iput p4, p0, Lcom/huawei/hms/availableupdate/d$a$b;->c:I

    iput-object p5, p0, Lcom/huawei/hms/availableupdate/d$a$b;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/d$a$b;->e:Lcom/huawei/hms/availableupdate/d$a;

    iget-object v0, v0, Lcom/huawei/hms/availableupdate/d$a;->a:Lcom/huawei/hms/availableupdate/g;

    iget v1, p0, Lcom/huawei/hms/availableupdate/d$a$b;->a:I

    iget v2, p0, Lcom/huawei/hms/availableupdate/d$a$b;->b:I

    iget v3, p0, Lcom/huawei/hms/availableupdate/d$a$b;->c:I

    iget-object v4, p0, Lcom/huawei/hms/availableupdate/d$a$b;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/huawei/hms/availableupdate/g;->a(IIILjava/io/File;)V

    return-void
.end method
