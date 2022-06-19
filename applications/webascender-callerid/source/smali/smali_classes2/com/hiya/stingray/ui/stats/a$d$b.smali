.class final Lcom/hiya/stingray/ui/stats/a$d$b;
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
.field final synthetic f:Lcom/hiya/stingray/ui/stats/a$d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/stats/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d$b;->f:Lcom/hiya/stingray/ui/stats/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d$b;->f:Lcom/hiya/stingray/ui/stats/a$d;

    iget-object v0, v0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->A3:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
