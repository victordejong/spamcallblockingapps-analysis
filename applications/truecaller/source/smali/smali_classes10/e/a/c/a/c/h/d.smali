.class public final Le/a/c/a/c/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Lcom/truecaller/insights/utils/HideTrxTempState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

.field public final synthetic b:Ln3/v/b0;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ln3/v/b0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iput-object p2, p0, Le/a/c/a/c/h/d;->b:Ln3/v/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/truecaller/insights/utils/HideTrxTempState;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v1

    new-instance v4, Le/a/c/a/c/h/c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/a/c/h/c;-><init>(Le/a/c/a/c/h/d;Lcom/truecaller/insights/utils/HideTrxTempState;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
