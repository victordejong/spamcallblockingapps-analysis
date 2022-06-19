.class public final Lcom/appnext/core/adswatched/database/b$1;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/adswatched/database/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/appnext/core/adswatched/database/AdWatched;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic ey:Lcom/appnext/core/adswatched/database/b;


# direct methods
.method public constructor <init>(Lcom/appnext/core/adswatched/database/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/adswatched/database/b$1;->ey:Lcom/appnext/core/adswatched/database/b;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/appnext/core/adswatched/database/AdWatched;

    .line 2
    iget-object v0, p2, Lcom/appnext/core/adswatched/database/AdWatched;->bannerId:Ljava/lang/String;

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
    iget-object p2, p2, Lcom/appnext/core/adswatched/database/AdWatched;->auid:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `AdWatched` (`bannerId`,`auid`) VALUES (?,?)"

    return-object v0
.end method
