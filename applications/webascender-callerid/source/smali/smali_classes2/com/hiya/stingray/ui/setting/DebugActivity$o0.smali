.class final Lcom/hiya/stingray/ui/setting/DebugActivity$o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string p1, "promoPremiumDuration"

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->n0()Lcom/hiya/stingray/manager/v3;

    move-result-object p2

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    sget v2, Lcom/hiya/stingray/o;->c3:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3

    :goto_0
    invoke-virtual {p2, v1, v2}, Lcom/hiya/stingray/manager/v3;->a(J)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->n0()Lcom/hiya/stingray/manager/v3;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, v0}, Lcom/hiya/stingray/manager/v3;->f(Lcom/hiya/stingray/manager/v3;ZILjava/lang/Object;)V

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    sget v1, Lcom/hiya/stingray/o;->c3:I

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;->a:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->V(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    return-void
.end method
