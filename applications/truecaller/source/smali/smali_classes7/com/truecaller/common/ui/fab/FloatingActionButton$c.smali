.class public final Lcom/truecaller/common/ui/fab/FloatingActionButton$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/fab/FloatingActionButton;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$c;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$c;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    .line 2
    iget-object v0, v0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
