.class final Lcom/hiya/stingray/ui/callergrid/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$i;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e$i;->f:Lcom/hiya/stingray/ui/callergrid/e;

    sget v1, Lcom/hiya/stingray/o;->e0:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "contact_permission_view"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
