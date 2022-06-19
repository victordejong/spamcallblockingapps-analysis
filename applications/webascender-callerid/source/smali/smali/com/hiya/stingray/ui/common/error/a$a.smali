.class Lcom/hiya/stingray/ui/common/error/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/error/a;->w1(Landroidx/appcompat/app/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/b;

.field final synthetic b:Lcom/hiya/stingray/ui/common/error/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/error/a;Landroidx/appcompat/app/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/a$a;->b:Lcom/hiya/stingray/ui/common/error/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/error/a$a;->a:Landroidx/appcompat/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/a$a;->a:Landroidx/appcompat/app/b;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b;->a(I)Landroid/widget/Button;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/common/error/a$a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/common/error/a$a$a;-><init>(Lcom/hiya/stingray/ui/common/error/a$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
