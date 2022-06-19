.class public final Lcom/truecaller/insights/binders/utils/OrderStatus$c;
.super Lcom/truecaller/insights/binders/utils/OrderStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/binders/utils/OrderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "delvrd"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/insights/binders/utils/OrderStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public uiOrderStatus(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Delivered"

    return-object p1
.end method

.method public uiSubTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uiTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Delivered"

    return-object p1
.end method
