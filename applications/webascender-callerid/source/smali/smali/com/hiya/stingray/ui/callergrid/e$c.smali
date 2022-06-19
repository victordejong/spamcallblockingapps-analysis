.class final Lcom/hiya/stingray/ui/callergrid/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->r1()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$c;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$c;->f:Lcom/hiya/stingray/ui/callergrid/e;

    sget v0, Lcom/hiya/stingray/o;->e0:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "contact_permission_view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
