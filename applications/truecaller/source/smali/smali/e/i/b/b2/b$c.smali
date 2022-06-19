.class public Le/i/b/b2/b$c;
.super Le/i/b/b2/b$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/b2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Le/i/b/b2/b$a;)V
    .locals 1

    const/4 p2, 0x0

    const-string v0, "AdMob20"

    .line 1
    invoke-direct {p0, v0, p2}, Le/i/b/b2/b$d;-><init>(Ljava/lang/String;Le/i/b/b2/b$a;)V

    .line 2
    iput-object p1, p0, Le/i/b/b2/b$c;->c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Le/i/b/b2/b$c;->c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-super {p0, p1, p2}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method
