.class public final Lcom/truecaller/voip/ui/VoipActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/ui/VoipActivity;->Z2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/s/a;

.field public final synthetic b:Lcom/truecaller/voip/ui/VoipActivity;


# direct methods
.method public constructor <init>(Le/a/d/s/a;Lcom/truecaller/voip/ui/VoipActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->a:Le/a/d/s/a;

    iput-object p2, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->b:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    sget-object v0, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    .line 2
    iget-object v1, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->a:Le/a/d/s/a;

    iget-object v1, v1, Le/a/d/s/a;->c:Landroid/widget/ImageButton;

    const-string v2, "buttonAddPeers"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    sget-object v3, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 4
    sget v4, Lcom/truecaller/voip/R$string;->voip_add_peer_tooltip:I

    .line 5
    iget-object v5, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->a:Le/a/d/s/a;

    iget-object v5, v5, Le/a/d/s/a;->c:Landroid/widget/ImageButton;

    .line 6
    iget-object v6, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->b:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-virtual {v6}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/truecaller/voip/R$dimen;->voip_half_spacing:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 7
    iget-object v7, p0, Lcom/truecaller/voip/ui/VoipActivity$i;->a:Le/a/d/s/a;

    iget-object v7, v7, Le/a/d/s/a;->c:Landroid/widget/ImageButton;

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v2, Lcom/truecaller/voip/R$style;->ThemeX_Light:I

    invoke-virtual {v7, v2}, Landroid/content/Context;->setTheme(I)V

    const-string v2, "(buttonAddPeers.context)\u2026e(R.style.ThemeX_Light) }"

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v9, Lz1;->d:Lz1;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    .line 9
    invoke-static/range {v0 .. v10}, Le/a/b0/a/e0/a;->c(Le/a/b0/a/e0/a;Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;I)Z

    return-void
.end method
