.class Lzendesk/belvedere/m$b;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "SourceFile"


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
    iput-object p1, p0, Lzendesk/belvedere/m$b;->a:Lzendesk/belvedere/m;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/m$b;->a:Lzendesk/belvedere/m;

    invoke-virtual {p1}, Lzendesk/belvedere/m;->dismiss()V

    :goto_0
    return-void
.end method
