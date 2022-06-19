.class final Lcom/hiya/stingray/ui/local/settings/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/n;->j1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/n;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/n;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$c;->f:Lcom/hiya/stingray/ui/local/settings/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$c;->f:Lcom/hiya/stingray/ui/local/settings/n;

    const-string v0, "call_screener"

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/settings/n;->g1(Lcom/hiya/stingray/ui/local/settings/n;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$c;->f:Lcom/hiya/stingray/ui/local/settings/n;

    new-instance v0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
