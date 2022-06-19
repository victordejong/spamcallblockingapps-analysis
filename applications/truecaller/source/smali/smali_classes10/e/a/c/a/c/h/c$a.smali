.class public final Le/a/c/a/c/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/c/a/c/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/c;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/c/g/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/c/a/c/g/a;

    .line 2
    iget-object p2, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object p2, p2, Le/a/c/a/c/h/c;->g:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {p2}, Lcom/truecaller/insights/utils/HideTrxTempState;->isDefault()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object p2, p2, Le/a/c/a/c/h/c;->f:Le/a/c/a/c/h/d;

    iget-object p2, p2, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 3
    iget-object p2, p2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    .line 4
    invoke-interface {p2}, Le/a/c/c0/o;->k0()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object p2, p2, Le/a/c/a/c/h/c;->g:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {p2}, Lcom/truecaller/insights/utils/HideTrxTempState;->isShown()Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object v2, v2, Le/a/c/a/c/h/c;->f:Le/a/c/a/c/h/d;

    iget-object v2, v2, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 6
    iget-object v3, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    .line 8
    invoke-interface {p2}, Le/a/c/b/j;->Y()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 9
    :goto_1
    iput-boolean v0, v3, Le/a/c/a/c/h/i;->g:Z

    .line 10
    iget-object p2, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object p2, p2, Le/a/c/a/c/h/c;->f:Le/a/c/a/c/h/d;

    iget-object p2, p2, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 11
    iget-object v0, p2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 12
    iput-object p1, v0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    .line 13
    invoke-static {p2}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;)V

    .line 14
    iget-object p1, p0, Le/a/c/a/c/h/c$a;->a:Le/a/c/a/c/h/c;

    iget-object p1, p1, Le/a/c/a/c/h/c;->f:Le/a/c/a/c/h/d;

    iget-object p2, p1, Le/a/c/a/c/h/d;->a:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object p1, p1, Le/a/c/a/c/h/d;->b:Ln3/v/b0;

    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    const-string v0, "lifecycleOwner.lifecycle"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/v/c0;

    .line 15
    iget-object p1, p1, Ln3/v/c0;->c:Ln3/v/u$b;

    const-string v0, "lifecycleOwner.lifecycle.currentState"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p1}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->d(Ln3/v/u$b;)V

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
