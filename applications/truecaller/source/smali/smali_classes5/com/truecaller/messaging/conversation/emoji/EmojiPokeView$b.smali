.class public final Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->e(ILs1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;->a:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;->b:Ls1/z/b/a;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;->a:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$b;->b:Ls1/z/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
