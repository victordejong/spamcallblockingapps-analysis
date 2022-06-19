.class public final Le/a/g0/k/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/k/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/k/h;


# direct methods
.method public constructor <init>(Le/a/g0/k/h;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/k/h$a;->b:Le/a/g0/k/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/k/h$a;->b:Le/a/g0/k/h;

    .line 2
    iget-object v0, v0, Le/a/g0/k/h;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/huawei/hms/support/api/safetydetect/SafetyDetect;->getClient(Landroid/content/Context;)Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;

    move-result-object v0

    return-object v0
.end method
