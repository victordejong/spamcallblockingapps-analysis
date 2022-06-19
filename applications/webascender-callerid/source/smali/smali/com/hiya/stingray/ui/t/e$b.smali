.class final Lcom/hiya/stingray/ui/t/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/t/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/t/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/t/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/e$b;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/e$b;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
