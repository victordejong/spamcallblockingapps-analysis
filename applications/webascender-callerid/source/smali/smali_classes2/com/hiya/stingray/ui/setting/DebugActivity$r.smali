.class final Lcom/hiya/stingray/ui/setting/DebugActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->A0()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$r;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/hiya/stingray/ui/t/a;

    sget-object v0, Lcom/hiya/stingray/manager/u2$b;->DEBUG:Lcom/hiya/stingray/manager/u2$b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$r;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p1, v0, v1}, Lcom/hiya/stingray/ui/t/a;-><init>(Lcom/hiya/stingray/manager/u2$b;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/t/a;->show()V

    return-void
.end method
