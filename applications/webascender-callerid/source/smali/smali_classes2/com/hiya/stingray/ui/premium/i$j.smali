.class final Lcom/hiya/stingray/ui/premium/i$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/i;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/i$j;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$j;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->j1()Lcom/hiya/stingray/ui/premium/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/l;->z()V

    return-void
.end method
