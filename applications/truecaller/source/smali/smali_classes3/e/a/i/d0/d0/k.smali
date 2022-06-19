.class public final Le/a/i/d0/d0/k;
.super Le/a/i/d0/d0/b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/d0/d0/b;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/d0/d0/k;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/b/a;)V
    .locals 1

    const-string v0, "adError"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/k;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    invoke-static {p1}, Le/m/d/y/n;->p1(Le/a/i/c/b/a;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/c/a/c;",
            "Le/a/i/g;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string p2, "ad"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onAdImpression"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p1, Le/a/i/c/a/j;

    if-eqz p2, :cond_0

    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v2, 0x0

    .line 3
    new-instance v3, Le/a/i/d0/d0/k$a;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p3, p2}, Le/a/i/d0/d0/k$a;-><init>(Le/a/i/d0/d0/k;Le/a/i/c/a/c;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Le/a/i/d0/r;->d:Le/a/i/d0/r;

    invoke-virtual {p0, p1}, Le/a/i/d0/d0/k;->a(Le/a/i/c/b/a;)V

    :goto_0
    return-void
.end method
