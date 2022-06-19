.class public final Lcom/hiya/stingray/manager/u3$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field private final a:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/manager/u3$n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    const-string v1, "PublishSubject.create()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hiya/stingray/manager/u3$o;->a:Li/c/b0/k/b;

    return-void
.end method


# virtual methods
.method public final a()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/manager/u3$n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$o;->a:Li/c/b0/k/b;

    return-object v0
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$o;->a:Li/c/b0/k/b;

    new-instance v1, Lcom/hiya/stingray/manager/u3$n;

    invoke-direct {v1, p1, p2}, Lcom/hiya/stingray/manager/u3$n;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
