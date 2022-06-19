.class public final Le/a/f/a/t/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
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

    iput-object p1, p0, Le/a/f/a/t/i;->b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/a/t/i;->b:Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
