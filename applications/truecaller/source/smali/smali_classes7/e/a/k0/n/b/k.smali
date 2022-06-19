.class public final Le/a/k0/n/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/b/j;
.implements Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;
.implements Lq3/a/i0;


# instance fields
.field public a:Le/a/k0/n/b/i;

.field public b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

.field public c:Le/a/k0/n/c/g;

.field public d:Ljava/util/Timer;

.field public final e:Le/a/k0/n/b/k$a;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Landroid/content/Context;

.field public final i:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final j:Le/a/k0/a/j;

.field public final k:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/j;Landroid/telephony/TelephonyManager;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingMainModuleFacade"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/k;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/n/b/k;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    iput-object p4, p0, Le/a/k0/n/b/k;->i:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p5, p0, Le/a/k0/n/b/k;->j:Le/a/k0/a/j;

    iput-object p6, p0, Le/a/k0/n/b/k;->k:Landroid/telephony/TelephonyManager;

    .line 2
    new-instance p1, Le/a/k0/n/b/k$a;

    invoke-direct {p1, p0}, Le/a/k0/n/b/k$a;-><init>(Le/a/k0/n/b/k;)V

    iput-object p1, p0, Le/a/k0/n/b/k;->e:Le/a/k0/n/b/k$a;

    return-void
.end method


# virtual methods
.method public B1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k;->c:Le/a/k0/n/c/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k0/n/c/g;->B1()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C1(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k0/n/b/k;->c:Le/a/k0/n/c/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Le/a/k0/n/c/g;->mc(Z)V

    .line 3
    invoke-interface {p1}, Le/a/k0/n/c/g;->Vi()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k;->i:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/a/k0/n/b/k;->f:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/k0/n/b/k$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/k0/n/b/k$d;-><init>(Le/a/k0/n/b/k;ZLs1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Le/a/k0/n/b/j$a;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/k0/n/b/k$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/k0/n/b/k$c;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/k0/n/b/k$b;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1, p0}, Le/a/k0/n/b/k$b;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;Ls1/w/d;Le/a/k0/n/b/k;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public final d(I)Ls1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/callrecording/R$dimen;->call_recording_floating_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/callrecording/R$dimen;->call_recording_floating_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/callrecording/R$dimen;->call_recording_floating_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "context.resources"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v3, v0

    int-to-float p1, p1

    sub-float/2addr p1, v2

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 5
    new-instance v0, Ls1/k;

    float-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k;->g:Ls1/w/f;

    return-object v0
.end method
