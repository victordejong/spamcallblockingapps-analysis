.class Lcom/hiya/stingray/ui/userfeedback/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/userfeedback/b;->v1(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/userfeedback/d;

.field final synthetic g:Lcom/hiya/stingray/ui/userfeedback/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/userfeedback/b;Lcom/hiya/stingray/ui/userfeedback/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/b$a;->g:Lcom/hiya/stingray/ui/userfeedback/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/userfeedback/b$a;->f:Lcom/hiya/stingray/ui/userfeedback/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/b$a;->f:Lcom/hiya/stingray/ui/userfeedback/d;

    iget-object p2, p0, Lcom/hiya/stingray/ui/userfeedback/b$a;->g:Lcom/hiya/stingray/ui/userfeedback/b;

    invoke-static {p2}, Lcom/hiya/stingray/ui/userfeedback/b;->t1(Lcom/hiya/stingray/ui/userfeedback/b;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hiya/stingray/ui/userfeedback/d;->V0(Ljava/lang/String;)V

    return-void
.end method
