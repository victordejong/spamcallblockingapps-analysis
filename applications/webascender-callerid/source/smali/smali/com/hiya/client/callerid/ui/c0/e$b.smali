.class final Lcom/hiya/client/callerid/ui/c0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->j(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lkotlin/w/c/q;

.field final synthetic h:Lg/g/b/c/k;

.field final synthetic i:Z

.field final synthetic j:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic k:J


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/q;Lg/g/b/c/k;ZLcom/hiya/client/callerid/ui/b0/j;J)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->g:Lkotlin/w/c/q;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->h:Lg/g/b/c/k;

    iput-boolean p4, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->i:Z

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->j:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p6, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/c0/e$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->g:Lkotlin/w/c/q;

    iput-object p1, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->h:Lg/g/b/c/k;

    sget-object v1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    const-string v2, "it"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->j:Lcom/hiya/client/callerid/ui/b0/j;

    .line 4
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v4, p1}, Lcom/hiya/client/callerid/ui/a;->b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->j:Lcom/hiya/client/callerid/ui/b0/j;

    iget-wide v3, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->k:J

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/hiya/client/callerid/ui/c0/e;->i(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)Z

    .line 7
    new-instance v0, Lcom/hiya/client/callerid/ui/c0/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/hiya/client/callerid/ui/c0/e$a;-><init>(ZZLcom/hiya/client/callerid/ui/b0/e;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Lcom/hiya/client/callerid/ui/c0/e$a;

    .line 9
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->j:Lcom/hiya/client/callerid/ui/b0/j;

    .line 11
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->h:Lg/g/b/c/k;

    .line 13
    iget-boolean v6, p0, Lcom/hiya/client/callerid/ui/c0/e$b;->i:Z

    .line 14
    invoke-interface {v1, v4, p1, v5, v6}, Lcom/hiya/client/callerid/ui/d;->e(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 15
    :goto_0
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v3, v1, p1}, Lcom/hiya/client/callerid/ui/c0/e$a;-><init>(ZZLcom/hiya/client/callerid/ui/b0/e;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$b;->a(Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/c0/e$a;

    move-result-object p1

    return-object p1
.end method
