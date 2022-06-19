.class final Lcom/hiya/stingray/manager/u3$g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->X(Lcom/android/billingclient/api/c;Ljava/lang/String;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$g0;->a:Lcom/android/billingclient/api/c;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$g0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0<",
            "Lkotlin/l<",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$g0;->a:Lcom/android/billingclient/api/c;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$g0;->b:Ljava/lang/String;

    new-instance v2, Lcom/hiya/stingray/manager/u3$g0$a;

    invoke-direct {v2, p1}, Lcom/hiya/stingray/manager/u3$g0$a;-><init>(Li/c/b0/b/f0;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->h(Ljava/lang/String;Lcom/android/billingclient/api/j;)V

    return-void
.end method
