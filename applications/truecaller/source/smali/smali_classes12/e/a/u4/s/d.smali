.class public final Le/a/u4/s/d;
.super Lcom/google/android/gms/vision/Tracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u4/s/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Tracker<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/u4/s/d$a;


# direct methods
.method public constructor <init>(Le/a/u4/s/d$a;)V
    .locals 1

    const-string v0, "barcodeUpdateListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/vision/Tracker;-><init>()V

    iput-object p1, p0, Le/a/u4/s/d;->a:Le/a/u4/s/d$a;

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/gms/vision/barcode/Barcode;

    const-string p1, "item"

    .line 2
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/u4/s/d;->a:Le/a/u4/s/d$a;

    invoke-interface {p1, p2}, Le/a/u4/s/d$a;->A9(Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method
