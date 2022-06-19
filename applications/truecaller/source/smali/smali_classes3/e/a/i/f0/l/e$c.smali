.class public final Le/a/i/f0/l/e$c;
.super Le/a/i/f0/l/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/f0/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/ads/nativead/NativeAd;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/c;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/b;)V
    .locals 2

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p3, v0, v1}, Le/a/i/f0/l/e;-><init>(Le/a/i/f0/l/c;Le/a/i/f0/l/b;ZLs1/z/c/f;)V

    iput-object p2, p0, Le/a/i/f0/l/e$c;->c:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method
