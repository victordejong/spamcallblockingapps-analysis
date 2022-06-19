.class Lcom/hiya/stingray/ui/submitreport/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/submitreport/g;->d(Lcom/hiya/stingray/ui/submitreport/g$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/t/b1;

.field final synthetic g:Lcom/hiya/stingray/ui/submitreport/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/submitreport/g;Lcom/hiya/stingray/t/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/g$a;->g:Lcom/hiya/stingray/ui/submitreport/g;

    iput-object p2, p0, Lcom/hiya/stingray/ui/submitreport/g$a;->f:Lcom/hiya/stingray/t/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/g$a;->g:Lcom/hiya/stingray/ui/submitreport/g;

    invoke-static {p1}, Lcom/hiya/stingray/ui/submitreport/g;->c(Lcom/hiya/stingray/ui/submitreport/g;)Li/c/b0/k/b;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/g$a;->f:Lcom/hiya/stingray/t/b1;

    invoke-virtual {p1, v0}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
