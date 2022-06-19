.class final Lcom/hiya/stingray/ui/t/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/t/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/t/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/a$d;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$d;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$d;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/t/a;->i()Lcom/hiya/stingray/ui/t/c;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a$d;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/t/a;->a(Lcom/hiya/stingray/ui/t/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "faces"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/t/c;->c(Ljava/lang/String;)V

    return-void
.end method
