.class public final Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/a/a<",
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;

    invoke-direct {v0}, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;->INSTANCE:Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/os/Parcel;)Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic create(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;->create(Landroid/os/Parcel;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/billingclient/api/SkuDetails;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/a/a/a$a;->a(Lk/a/a/a;I)[Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;->newArray(I)[Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/android/billingclient/api/SkuDetails;Landroid/os/Parcel;I)V
    .locals 1

    const-string p3, "$this$write"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parcel"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class p3, Lcom/android/billingclient/api/SkuDetails;

    const-string v0, "mOriginalJson"

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const-string v0, "field"

    .line 3
    invoke-static {p3, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/parceler/SkuDetailsParceler;->write(Lcom/android/billingclient/api/SkuDetails;Landroid/os/Parcel;I)V

    return-void
.end method
