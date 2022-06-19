.class public final Le/a/l/p0$a;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/ui/view/DotPagerIndicator;


# direct methods
.method public constructor <init>(Le/a/l/p0;Lcom/truecaller/ui/view/DotPagerIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ui/view/DotPagerIndicator;",
            ")V"
        }
    .end annotation

    const-string p1, "pagerIndicator"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    iput-object p2, p0, Le/a/l/p0$a;->a:Lcom/truecaller/ui/view/DotPagerIndicator;

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p0$a;->a:Lcom/truecaller/ui/view/DotPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/truecaller/ui/view/DotPagerIndicator;->a(IFI)V

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p0$a;->a:Lcom/truecaller/ui/view/DotPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/view/DotPagerIndicator;->g(I)V

    return-void
.end method
