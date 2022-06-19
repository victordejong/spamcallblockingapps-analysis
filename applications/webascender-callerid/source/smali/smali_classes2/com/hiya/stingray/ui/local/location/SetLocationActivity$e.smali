.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->a0()Lcom/hiya/stingray/ui/local/location/f;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->Q(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/hiya/stingray/t/h1/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/location/f;->A(Lcom/hiya/stingray/t/h1/i;)V

    return-void
.end method
