.class public final Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a;->b:Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object v1, p0, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a;->b:Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rootView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
