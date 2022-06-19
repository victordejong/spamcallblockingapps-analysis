.class public final Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    const-string v0, "appBarLayout"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p1, p2

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 3
    iput p1, v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->i:F

    .line 4
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-static {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->OA(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    return-void
.end method
