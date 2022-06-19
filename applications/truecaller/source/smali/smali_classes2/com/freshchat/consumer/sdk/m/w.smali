.class public Lcom/freshchat/consumer/sdk/m/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pp:Lcom/freshchat/consumer/sdk/m/t;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/t;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/w;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/w;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->c0()V

    :cond_0
    return-void
.end method
