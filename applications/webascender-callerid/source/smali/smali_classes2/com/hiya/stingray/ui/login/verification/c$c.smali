.class final Lcom/hiya/stingray/ui/login/verification/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/login/verification/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/c$c;->a:Lcom/hiya/stingray/ui/login/verification/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/c$c;->a:Lcom/hiya/stingray/ui/login/verification/c;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/c;->g1(Lcom/hiya/stingray/ui/login/verification/c;)Lcom/hiya/stingray/ui/login/verification/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/login/verification/e;->h(Z)V

    return-void
.end method
