.class public final Le/a/i/f0/l/q$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/f0/l/b;

.field public final synthetic c:Le/a/i/f0/l/q$a;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/f0/l/b;Le/a/i/f0/l/q$a;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/q$a$b;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/f0/l/q$a$b;->b:Le/a/i/f0/l/b;

    iput-object p3, p0, Le/a/i/f0/l/q$a$b;->c:Le/a/i/f0/l/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/q$a$b;->a:Lq3/a/n;

    .line 2
    new-instance v1, Le/a/i/f0/l/e$c;

    .line 3
    iget-object v2, p0, Le/a/i/f0/l/q$a$b;->c:Le/a/i/f0/l/q$a;

    iget-object v2, v2, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    const-string v3, "ad"

    .line 4
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Le/a/i/f0/l/q$a$b;->b:Le/a/i/f0/l/b;

    .line 6
    invoke-direct {v1, v2, p1, v3}, Le/a/i/f0/l/e$c;-><init>(Le/a/i/f0/l/c;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/b;)V

    .line 7
    new-instance v2, Le/a/i/f0/l/q$a$b$a;

    invoke-direct {v2, p1}, Le/a/i/f0/l/q$a$b$a;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 8
    invoke-static {v0, v1, v2}, Le/m/d/y/n;->c(Lq3/a/n;Le/a/i/f0/l/e;Ls1/z/b/l;)V

    return-void
.end method
