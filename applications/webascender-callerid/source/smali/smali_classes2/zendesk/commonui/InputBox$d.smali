.class Lzendesk/commonui/InputBox$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/InputBox;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lzendesk/commonui/InputBox;


# direct methods
.method constructor <init>(Lzendesk/commonui/InputBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/InputBox$d;->f:Lzendesk/commonui/InputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/commonui/InputBox$d;->f:Lzendesk/commonui/InputBox;

    invoke-static {p1}, Lzendesk/commonui/InputBox;->g(Lzendesk/commonui/InputBox;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lzendesk/commonui/InputBox$d;->f:Lzendesk/commonui/InputBox;

    invoke-static {p1}, Lzendesk/commonui/InputBox;->h(Lzendesk/commonui/InputBox;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method
