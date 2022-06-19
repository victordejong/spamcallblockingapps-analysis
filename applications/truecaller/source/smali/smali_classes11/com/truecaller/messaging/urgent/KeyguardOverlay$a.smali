.class public final Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/KeyguardOverlay;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/MotionEvent;

.field public final synthetic c:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->b:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->c:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/KeyguardOverlay$a;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
