.class public final Lcom/appnext/core/ra/database/c$2;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/ra/database/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/appnext/core/ra/database/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic eW:Lcom/appnext/core/ra/database/c;


# direct methods
.method public constructor <init>(Lcom/appnext/core/ra/database/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/ra/database/c$2;->eW:Lcom/appnext/core/ra/database/c;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/appnext/core/ra/database/a;

    .line 2
    iget-object v0, p2, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-boolean p2, p2, Lcom/appnext/core/ra/database/a;->eS:Z

    const/4 v0, 0x3

    int-to-long v1, p2

    .line 9
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `RecentApp` (`recentAppPackage`,`storeDate`,`sent`) VALUES (?,?,?)"

    return-object v0
.end method
