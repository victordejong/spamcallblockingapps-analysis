.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->Y()Lcom/hiya/stingray/ui/local/location/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/c;->a()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->Z()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget-object v1, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->Z()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const/4 v2, 0x0

    const/16 v3, 0x1774

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->a0()Lcom/hiya/stingray/ui/local/location/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/f;->t()V

    :goto_0
    return-void
.end method
