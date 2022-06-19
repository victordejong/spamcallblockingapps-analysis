.class final Lcom/hiya/client/callerid/ui/c0/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lkotlin/w/c/n;

.field final synthetic h:Lg/g/b/c/k;

.field final synthetic i:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic j:Lg/g/a/e/e/n;

.field final synthetic k:J

.field final synthetic l:Z

.field final synthetic m:Lg/g/d/e;

.field final synthetic n:Lg/g/d/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/n;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;Lg/g/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->g:Lkotlin/w/c/n;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->h:Lg/g/b/c/k;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->j:Lg/g/a/e/e/n;

    iput-wide p6, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->k:J

    iput-boolean p8, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->l:Z

    iput-object p9, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->m:Lg/g/d/e;

    iput-object p10, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->n:Lg/g/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->g:Lkotlin/w/c/n;

    iget-boolean v0, v0, Lkotlin/w/c/n;->f:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/overlay/f;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/c0/e;->c(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->h:Lg/g/b/c/k;

    sget-object v3, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/hiya/client/callerid/ui/a0/m;->h(Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/overlay/f;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, v4}, Lcom/hiya/client/callerid/ui/overlay/f;->p(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v8, v0

    .line 4
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->h:Lg/g/b/c/k;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->j:Lg/g/a/e/e/n;

    iget-wide v5, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->k:J

    iget-boolean v7, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->l:Z

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/c0/e;->b(Lcom/hiya/client/callerid/ui/c0/e;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->m:Lg/g/d/e;

    invoke-static/range {v1 .. v10}, Lcom/hiya/client/callerid/ui/c0/e;->a(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->m:Lg/g/d/e;

    invoke-interface {v0}, Lg/g/d/e;->a()V

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$g;->n:Lg/g/d/e;

    invoke-interface {v0}, Lg/g/d/e;->a()V

    return-void
.end method
