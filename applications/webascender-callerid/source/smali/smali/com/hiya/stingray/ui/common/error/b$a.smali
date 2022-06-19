.class Lcom/hiya/stingray/ui/common/error/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/error/b;->t1()Landroidx/appcompat/app/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/common/error/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/error/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/b$a;->f:Lcom/hiya/stingray/ui/common/error/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/b$a;->f:Lcom/hiya/stingray/ui/common/error/b;

    iget-object p2, p1, Lcom/hiya/stingray/ui/common/error/b;->z:Lcom/hiya/stingray/ui/common/error/b$c;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/error/b;->A:Lcom/hiya/stingray/exception/a;

    invoke-interface {p2, p1}, Lcom/hiya/stingray/ui/common/error/b$c;->a(Lcom/hiya/stingray/exception/a;)V

    return-void
.end method
