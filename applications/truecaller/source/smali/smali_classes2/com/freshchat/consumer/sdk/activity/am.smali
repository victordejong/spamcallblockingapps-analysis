.class public Lcom/freshchat/consumer/sdk/activity/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/am;->pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/am;->pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jg()V

    return-void
.end method
