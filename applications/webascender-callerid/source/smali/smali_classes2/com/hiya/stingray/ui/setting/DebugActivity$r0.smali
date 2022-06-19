.class final Lcom/hiya/stingray/ui/setting/DebugActivity$r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$r0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$r0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->n0()Lcom/hiya/stingray/manager/v3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/v3;->d()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$r0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->V(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    return-void
.end method
