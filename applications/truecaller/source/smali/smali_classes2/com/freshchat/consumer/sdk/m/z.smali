.class public Lcom/freshchat/consumer/sdk/m/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic ln:Le/m/a/g/e/d;

.field public final synthetic pw:Lcom/freshchat/consumer/sdk/m/y;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/y;Le/m/a/g/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/z;->pw:Lcom/freshchat/consumer/sdk/m/y;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/m/z;->ln:Le/m/a/g/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/z;->pw:Lcom/freshchat/consumer/sdk/m/y;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/z;->ln:Le/m/a/g/e/d;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/m/y;->a(Lcom/freshchat/consumer/sdk/m/y;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/z;->pw:Lcom/freshchat/consumer/sdk/m/y;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/y;->a(Lcom/freshchat/consumer/sdk/m/y;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/z;->ln:Le/m/a/g/e/d;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_bottomsheet_title_layout:I

    invoke-virtual {p1, v0}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/z;->pw:Lcom/freshchat/consumer/sdk/m/y;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/m/y;->a(Lcom/freshchat/consumer/sdk/m/y;I)I

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/z;->pw:Lcom/freshchat/consumer/sdk/m/y;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/y;->a(Lcom/freshchat/consumer/sdk/m/y;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    :cond_1
    return-void
.end method
