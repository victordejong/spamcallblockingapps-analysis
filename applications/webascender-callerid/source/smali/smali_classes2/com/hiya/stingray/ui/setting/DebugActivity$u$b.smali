.class final Lcom/hiya/stingray/ui/setting/DebugActivity$u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity$u;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity$u;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity$u;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$u$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$u$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$u;

    iget-object v0, v0, Lcom/hiya/stingray/ui/setting/DebugActivity$u;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-string v1, "Successfully fetched remote config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
