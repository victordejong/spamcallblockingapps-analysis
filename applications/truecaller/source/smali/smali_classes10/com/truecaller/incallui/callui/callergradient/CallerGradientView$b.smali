.class public final Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;->g(Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$b;->a:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    iput-object p2, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$b;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$b;->a:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$b;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
