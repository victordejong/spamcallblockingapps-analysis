.class final Lcom/hiya/client/callerid/ui/a0/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/h;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/h;

.field final synthetic g:J

.field final synthetic h:J


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/h;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->f:Lcom/hiya/client/callerid/ui/a0/h;

    iput-wide p2, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->g:J

    iput-wide p4, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->f:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/hiya/client/callerid/ui/p;->z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x30

    invoke-static {v2, v3, v4}, Lkotlin/c0/m;->d0(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/hiya/client/callerid/ui/a0/h$e;->h:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lkotlin/c0/m;->d0(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
