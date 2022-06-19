.class final Lcom/hiya/stingray/ui/setting/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/d$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/d$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a$a;->f:Lcom/hiya/stingray/ui/setting/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/d$a$a;->f:Lcom/hiya/stingray/ui/setting/d$a;

    iget-object p2, p2, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/setting/d;->h1()Lcom/hiya/stingray/ui/setting/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/setting/b;->c()V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/d$a$a;->f:Lcom/hiya/stingray/ui/setting/d$a;

    iget-object p2, p2, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-static {p2}, Lcom/hiya/stingray/ui/setting/d;->g1(Lcom/hiya/stingray/ui/setting/d;)Lcom/hiya/stingray/ui/setting/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/setting/f;->l()V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
