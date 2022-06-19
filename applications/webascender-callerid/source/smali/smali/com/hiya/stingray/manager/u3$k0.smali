.class final Lcom/hiya/stingray/manager/u3$k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/b2;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/e1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/manager/u3$k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/u3$k0;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$k0;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/u3$k0;->a:Lcom/hiya/stingray/manager/u3$k0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceived(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
