.class Lzendesk/belvedere/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/m;->p(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzendesk/belvedere/m;


# direct methods
.method constructor <init>(Lzendesk/belvedere/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/m$c;->a:Lzendesk/belvedere/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m$c;->a:Lzendesk/belvedere/m;

    invoke-static {v0}, Lzendesk/belvedere/m;->i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/belvedere/m$c;->a:Lzendesk/belvedere/m;

    invoke-static {p1}, Lzendesk/belvedere/m;->i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget-object v0, p0, Lzendesk/belvedere/m$c;->a:Lzendesk/belvedere/m;

    invoke-static {v0}, Lzendesk/belvedere/m;->j(Lzendesk/belvedere/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lzendesk/belvedere/m$c;->a:Lzendesk/belvedere/m;

    invoke-static {v1}, Lzendesk/belvedere/m;->k(Lzendesk/belvedere/m;)Lzendesk/belvedere/o;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/belvedere/o;->getKeyboardHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I(I)V

    :cond_0
    return-void
.end method
