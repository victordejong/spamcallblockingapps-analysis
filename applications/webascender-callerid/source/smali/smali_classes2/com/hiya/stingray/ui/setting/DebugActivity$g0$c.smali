.class final Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity$g0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    iget-object v0, v0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->Z(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    iget-object v0, v0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-string v1, "Failed to send phone events"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DebugMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
