.class final Lcom/hiya/stingray/ui/t/a$e;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->a(Lcom/hiya/stingray/ui/t/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "happy"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->b(Lcom/hiya/stingray/ui/t/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->h(Lcom/hiya/stingray/ui/t/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->c(Lcom/hiya/stingray/ui/t/a;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$e;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->d(Lcom/hiya/stingray/ui/t/a;)V

    :goto_0
    return-void
.end method
