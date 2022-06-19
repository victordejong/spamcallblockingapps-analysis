.class public final Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/tagger/tagPicker/TaggerActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-static {p1}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->pa(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
