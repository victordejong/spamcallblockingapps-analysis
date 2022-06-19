.class final Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;
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
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/g1/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity$g0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    iget-object p1, p1, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->Z(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    iget-object p1, p1, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-string v0, "Successfully sent phone events"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;->a(Ljava/util/List;)V

    return-void
.end method
