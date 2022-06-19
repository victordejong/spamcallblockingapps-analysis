.class public final Le/a/a/m/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/d;->O4(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/m/d;

.field public final synthetic c:Lcom/truecaller/common/ui/banner/BannerViewX;


# direct methods
.method public constructor <init>(Le/a/a/m/d;Lcom/truecaller/common/ui/banner/BannerViewX;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/d$b;->b:Le/a/a/m/d;

    iput-object p2, p0, Le/a/a/m/d$b;->c:Lcom/truecaller/common/ui/banner/BannerViewX;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v2, p0, Le/a/a/m/d$b;->b:Le/a/a/m/d;

    .line 2
    iget-object v6, v2, Le/a/a/m/d;->b:Le/a/o2/m;

    .line 3
    new-instance v7, Le/a/o2/h;

    iget-object v3, p0, Le/a/a/m/d$b;->c:Lcom/truecaller/common/ui/banner/BannerViewX;

    const-string v0, "bannerView"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v1, "ItemEvent.ACTION_LEARN_MORE"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
