.class public final synthetic Lcom/hiya/stingray/ui/customblock/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/customblock/BlockFromActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/customblock/BlockFromActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/a;->f:Lcom/hiya/stingray/ui/customblock/BlockFromActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/a;->f:Lcom/hiya/stingray/ui/customblock/BlockFromActivity;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->R(Landroid/view/View;)V

    return-void
.end method
