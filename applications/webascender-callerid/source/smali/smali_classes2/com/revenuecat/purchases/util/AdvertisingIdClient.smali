.class public final Lcom/revenuecat/purchases/util/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;,
        Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/util/AdvertisingIdClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/util/AdvertisingIdClient;

    invoke-direct {v0}, Lcom/revenuecat/purchases/util/AdvertisingIdClient;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/util/AdvertisingIdClient;->INSTANCE:Lcom/revenuecat/purchases/util/AdvertisingIdClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertisingIdInfo(Landroid/app/Application;Lkotlin/w/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;

    invoke-direct {v1, p1, p2}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;-><init>(Landroid/app/Application;Lkotlin/w/b/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
