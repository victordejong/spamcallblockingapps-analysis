.class final Lcom/hiya/stingray/ui/stats/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/a$d;->b(Lcom/hiya/stingray/ui/stats/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d$a;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d$a;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d$a;->f:Landroid/view/View;

    instance-of v1, v0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d$a;->f:Landroid/view/View;

    instance-of v1, v0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->a()V

    :cond_1
    return-void
.end method
