.class final Lcom/hiya/client/callerid/ui/incallui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/b;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/b;

.field final synthetic g:J

.field final synthetic h:J


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/b;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    iput-wide p2, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->g:J

    iput-wide p4, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->x()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/p;->q0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.status"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/incallui/b;->v(Lcom/hiya/client/callerid/ui/incallui/b;)Landroid/content/Context;

    move-result-object v1

    .line 2
    sget v2, Lcom/hiya/client/callerid/ui/s;->t:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->g:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0x30

    invoke-static {v5, v6, v7}, Lkotlin/c0/m;->d0(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v8, p0, Lcom/hiya/client/callerid/ui/incallui/b$a;->h:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lkotlin/c0/m;->d0(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
