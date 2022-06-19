.class final Lcom/hiya/stingray/ui/local/e/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/e/b;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/e/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$b;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$b;->f:Lcom/hiya/stingray/ui/local/e/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hiya/stingray/ui/local/e/b;->g1(Lcom/hiya/stingray/ui/local/e/b;I)V

    return p2
.end method
