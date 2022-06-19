.class final Lcom/hiya/stingray/ui/t/e$a;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/e$a;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/e$a;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/t/e$a;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/t/e;->a(Lcom/hiya/stingray/ui/t/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/e$a;->f:Lcom/hiya/stingray/ui/t/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
