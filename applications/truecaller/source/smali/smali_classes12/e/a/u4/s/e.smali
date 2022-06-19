.class public final Le/a/u4/s/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/MultiProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/MultiProcessor$Factory<",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u4/s/e;->a:Le/a/u4/s/d$a;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)Lcom/google/android/gms/vision/Tracker;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    const-string v0, "barcode"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/u4/s/d;

    iget-object v0, p0, Le/a/u4/s/e;->a:Le/a/u4/s/d$a;

    invoke-direct {p1, v0}, Le/a/u4/s/d;-><init>(Le/a/u4/s/d$a;)V

    return-object p1
.end method
