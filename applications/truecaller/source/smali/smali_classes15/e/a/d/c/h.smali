.class public final Le/a/d/c/h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/ui/VoipActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/ui/VoipActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/c/h;->a:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/16 p1, -0x3e8

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_4

    .line 1
    iget-object p1, p0, Le/a/d/c/h;->a:Lcom/truecaller/voip/ui/VoipActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/voip/ui/VoipActivity;->f:Le/a/d/v/d;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Le/a/d/v/d;->g()Z

    move-result p1

    const-string p3, "fragmentManager"

    const-string p4, "supportFragmentManager"

    if-eqz p1, :cond_0

    sget-object p1, Le/a/d/a/a;->j:Le/a/d/a/a$c;

    iget-object p2, p0, Le/a/d/c/h;->a:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-virtual {p2}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Le/a/d/a/a;

    invoke-direct {p1}, Le/a/d/a/a;-><init>()V

    const-class p3, Le/a/d/a/a;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/d/c/h;->a:Lcom/truecaller/voip/ui/VoipActivity;

    .line 7
    iget-object p1, p1, Lcom/truecaller/voip/ui/VoipActivity;->g:Le/a/d/w/d;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Le/a/d/w/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Le/a/d/a/b;->k:Le/a/d/a/b$c;

    iget-object p2, p0, Le/a/d/c/h;->a:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-virtual {p2}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Le/a/d/a/b;

    invoke-direct {p1}, Le/a/d/a/b;-><init>()V

    const-class p3, Le/a/d/a/b;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "invitationManager"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "groupCallManager"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
