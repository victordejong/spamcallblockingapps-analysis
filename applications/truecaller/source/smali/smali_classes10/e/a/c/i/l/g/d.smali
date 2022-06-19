.class public final Le/a/c/i/l/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/i/l/g/d;->b:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public final a(ILe/a/c/r/k/f;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    sget p1, Lcom/truecaller/insights/R$id;->textSender:I

    .line 3
    iget-object v1, p2, Le/a/c/r/k/f;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/truecaller/insights/R$id;->textCategory:I

    .line 6
    iget-object v1, p2, Le/a/c/r/k/f;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    sget p1, Lcom/truecaller/insights/R$id;->textContent:I

    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9
    sget p1, Lcom/truecaller/insights/R$id;->primaryIcon:I

    .line 10
    iget p3, p2, Le/a/c/r/k/f;->f:I

    .line 11
    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 12
    sget p1, Lcom/truecaller/insights/R$id;->contentContainer:I

    .line 13
    iget-object p3, p2, Le/a/c/r/k/f;->g:Landroid/app/PendingIntent;

    .line 14
    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 15
    iget-object p1, p2, Le/a/c/r/k/f;->i:Le/a/c/r/k/e;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 16
    sget v1, Lcom/truecaller/insights/R$id;->primaryAction:I

    .line 17
    iget-object v2, p1, Le/a/c/r/k/e;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    iget-object p1, p1, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 21
    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    :cond_0
    iget-object p1, p2, Le/a/c/r/k/f;->j:Le/a/c/r/k/e;

    if-eqz p1, :cond_1

    .line 23
    sget p2, Lcom/truecaller/insights/R$id;->secondaryAction:I

    .line 24
    iget-object v1, p1, Le/a/c/r/k/e;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    iget-object p1, p1, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 28
    invoke-virtual {v0, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    return-object v0
.end method

.method public final b(Landroid/app/Notification;Landroid/net/Uri;Landroid/widget/RemoteViews;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/c/i/l/g/d;->b:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Le/a/z3/i/a;

    .line 3
    sget-object p4, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    .line 4
    invoke-direct {p1, p2, p4}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 5
    iput-boolean v1, p1, Le/a/z3/i/a;->a:Z

    .line 6
    iget-object p2, p0, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    sget p2, Lcom/truecaller/insights/R$id;->primaryIcon:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const-string p4, "setBackgroundColor"

    .line 8
    invoke-virtual {p3, p2, p4, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Le/a/c/i/l/a;

    .line 10
    iget-object v3, p0, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    .line 11
    sget v4, Lcom/truecaller/insights/R$id;->primaryIcon:I

    .line 12
    iget-object v8, p0, Le/a/c/i/l/g/d;->b:Le/a/c/b/j;

    move-object v2, v0

    move-object v5, p3

    move-object v6, p1

    move v7, p4

    .line 13
    invoke-direct/range {v2 .. v8}, Le/a/c/i/l/a;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILe/a/c/b/j;)V

    .line 14
    iget-object p1, p0, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    invoke-static {p1}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object p1

    .line 16
    invoke-static {}, Le/f/a/r/h;->H()Le/f/a/r/h;

    move-result-object p4

    invoke-virtual {p1, p4}, Le/a/z3/d;->a0(Le/f/a/r/a;)Le/a/z3/d;

    move-result-object p1

    .line 17
    iput-object p2, p1, Le/f/a/h;->J:Ljava/lang/Object;

    .line 18
    iput-boolean v1, p1, Le/f/a/h;->N:Z

    .line 19
    invoke-virtual {p1, p5}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p1

    .line 20
    new-instance p2, Le/a/c/i/l/g/c;

    invoke-direct {p2, p0, p3}, Le/a/c/i/l/g/c;-><init>(Le/a/c/i/l/g/d;Landroid/widget/RemoteViews;)V

    const/4 p3, 0x0

    .line 21
    iput-object p3, p1, Le/f/a/h;->K:Ljava/util/List;

    .line 22
    invoke-virtual {p1, p2}, Le/a/z3/d;->H(Le/f/a/r/g;)Le/f/a/h;

    .line 23
    invoke-virtual {p1, v0}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    :goto_0
    return-void
.end method
