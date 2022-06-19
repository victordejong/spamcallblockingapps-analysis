.class public final Le/a/a/c/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->r4(Le/a/a/c/c3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d;

.field public final synthetic b:Le/a/a/c/c3;

.field public final synthetic c:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Le/a/a/c/c3;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/d$e;->b:Le/a/a/c/c3;

    iput-object p3, p0, Le/a/a/c/d$e;->c:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    iput-object p4, p0, Le/a/a/c/d$e;->d:Landroid/view/View;

    iput-object p5, p0, Le/a/a/c/d$e;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Le/a/a/c/d$e;->b:Le/a/a/c/c3;

    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v1, p0, Le/a/a/c/d$e;->c:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    const-string v2, "visualizerView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/a/c/d$e$a;

    invoke-direct {v2, p0}, Le/a/a/c/d$e$a;-><init>(Le/a/a/c/d$e;)V

    invoke-interface {p1, v0, v1, v2}, Le/a/a/c/k/a/j;->i1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;)V

    return-void
.end method
