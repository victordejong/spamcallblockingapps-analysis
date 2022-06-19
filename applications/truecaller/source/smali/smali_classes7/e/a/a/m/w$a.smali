.class public final Le/a/a/m/w$a;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/w;->I3(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Le/a/a/m/w;


# direct methods
.method public constructor <init>(Le/a/a/m/w;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/m/w$a;->d:Le/a/a/m/w;

    invoke-direct {p0, p4, p5}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/m/w$a;->d:Le/a/a/m/w;

    .line 2
    iget-object v0, v0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 3
    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/w$a;->d:Le/a/a/m/w;

    .line 4
    iget-object p2, p2, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 5
    invoke-virtual {p2, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/m/w$a;->d:Le/a/a/m/w;

    .line 2
    iget-object v0, v0, Le/a/a/m/w;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 3
    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
