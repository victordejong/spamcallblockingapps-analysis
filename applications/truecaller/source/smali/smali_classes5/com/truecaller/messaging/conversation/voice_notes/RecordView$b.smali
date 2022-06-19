.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$b;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$b;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setX(F)V

    return-void
.end method
