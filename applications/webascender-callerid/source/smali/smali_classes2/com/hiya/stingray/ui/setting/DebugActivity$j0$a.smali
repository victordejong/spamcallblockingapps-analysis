.class final Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity$j0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity$j0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$j0;

    iget-object v0, v0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-string v1, "Successfully deleted all phone number infos"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$j0;

    iget-object v0, v0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->a0(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    return-void
.end method
