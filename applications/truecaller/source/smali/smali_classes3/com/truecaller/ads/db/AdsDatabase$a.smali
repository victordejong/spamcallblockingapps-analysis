.class public final Lcom/truecaller/ads/db/AdsDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ads/db/AdsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/truecaller/ads/db/AdsDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/ads/db/AdsDatabase;->a:Lcom/truecaller/ads/db/AdsDatabase;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/truecaller/ads/db/AdsDatabase;

    const-string v1, "tc_ads.db"

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/truecaller/ads/db/AdsDatabase;->a:Lcom/truecaller/ads/db/AdsDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/truecaller/ads/db/AdsDatabase;->b:[Ln3/c0/f0/a;

    :try_start_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/c0/f0/a;

    invoke-virtual {p1, v0}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 4
    invoke-virtual {p1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 5
    invoke-virtual {p1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/db/AdsDatabase;

    .line 6
    sput-object p1, Lcom/truecaller/ads/db/AdsDatabase;->a:Lcom/truecaller/ads/db/AdsDatabase;

    .line 7
    :cond_0
    sget-object p1, Lcom/truecaller/ads/db/AdsDatabase;->a:Lcom/truecaller/ads/db/AdsDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
