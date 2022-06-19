.class public Lg/f/a/d/d/d;
.super Lcom/google/android/gms/common/api/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/h<",
        "Lg/f/a/d/d/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->a()Lcom/google/android/gms/common/api/i;

    move-result-object v0

    check-cast v0, Lg/f/a/d/d/e;

    invoke-interface {v0}, Lg/f/a/d/d/e;->b1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
