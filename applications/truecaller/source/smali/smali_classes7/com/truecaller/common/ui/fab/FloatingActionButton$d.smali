.class public final Lcom/truecaller/common/ui/fab/FloatingActionButton$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/fab/FloatingActionButton;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

.field public final synthetic b:[Le/a/b0/a/w/d;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;[Le/a/b0/a/w/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    iput-object p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->b:[Le/a/b0/a/w/d;

    iput p3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    .line 2
    iget-object p1, p1, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->b:[Le/a/b0/a/w/d;

    iget v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;->c:I

    aget-object v0, v0, v1

    .line 4
    iget v0, v0, Le/a/b0/a/w/d;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/b0/a/w/a;->u0(I)V

    :cond_0
    return-void
.end method
