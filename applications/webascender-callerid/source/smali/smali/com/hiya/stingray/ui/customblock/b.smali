.class public final synthetic Lcom/hiya/stingray/ui/customblock/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/customblock/e;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/customblock/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/b;->f:Lcom/hiya/stingray/ui/customblock/e;

    iput p2, p0, Lcom/hiya/stingray/ui/customblock/b;->g:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/b;->f:Lcom/hiya/stingray/ui/customblock/e;

    iget v1, p0, Lcom/hiya/stingray/ui/customblock/b;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/customblock/e;->j(ILandroid/view/View;)V

    return-void
.end method
