.class public final Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;->b()V
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
.field public final synthetic b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$a;->b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$a;->b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    .line 3
    iget-object v2, p0, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView$a;->b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    invoke-static {v2}, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;->d(Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;)F

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x12c

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;->f(FFZJ)V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
