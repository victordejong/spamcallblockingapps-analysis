.class final Lcom/revenuecat/purchases/Offering$annual$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Offering;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lcom/revenuecat/purchases/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Offering;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Offering;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Offering$annual$2;->this$0:Lcom/revenuecat/purchases/Offering;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/revenuecat/purchases/Package;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Offering$annual$2;->this$0:Lcom/revenuecat/purchases/Offering;

    sget-object v1, Lcom/revenuecat/purchases/PackageType;->ANNUAL:Lcom/revenuecat/purchases/PackageType;

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/Offering;->access$findPackage(Lcom/revenuecat/purchases/Offering;Lcom/revenuecat/purchases/PackageType;)Lcom/revenuecat/purchases/Package;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Offering$annual$2;->invoke()Lcom/revenuecat/purchases/Package;

    move-result-object v0

    return-object v0
.end method
