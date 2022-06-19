.class public final Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$a;
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


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$a;->a:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView$a;->a:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->b(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Landroid/view/View;

    move-result-object p1

    const-string v0, "emojiView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
