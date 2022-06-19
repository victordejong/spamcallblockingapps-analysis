.class public final Le/a/g/a/a/a$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->Bg(Lcom/truecaller/ads/campaigns/AdCampaign$Style;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;Lcom/truecaller/ads/campaigns/AdCampaign$Style;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$p;->a:Le/a/g/a/a/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const-string p1, "target"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g/a/a/a$p;->a:Le/a/g/a/a/a;

    .line 2
    sget-object p2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/g/h/b;->R:Landroid/widget/LinearLayout;

    const-string p2, "binding.sponsoredByContainer"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p1, "model"

    .line 2
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataSource"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/g/a/a/a$p;->a:Le/a/g/a/a/a;

    .line 4
    sget-object p2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 5
    invoke-virtual {p1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object p1

    .line 6
    iget-object p1, p1, Le/a/g/h/b;->T:Landroid/widget/TextView;

    const-string p2, "binding.sponsoredByText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
