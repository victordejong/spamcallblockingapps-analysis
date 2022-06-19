.class Lzendesk/belvedere/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/m;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lzendesk/belvedere/m;


# direct methods
.method constructor <init>(Lzendesk/belvedere/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/m$a;->g:Lzendesk/belvedere/m;

    iput-boolean p2, p0, Lzendesk/belvedere/m$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lzendesk/belvedere/m$a;->f:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/belvedere/m$a;->g:Lzendesk/belvedere/m;

    invoke-static {p1}, Lzendesk/belvedere/m;->i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/m$a;->g:Lzendesk/belvedere/m;

    invoke-virtual {p1}, Lzendesk/belvedere/m;->dismiss()V

    :goto_0
    return-void
.end method
