.class final Lcom/hiya/client/callerid/ui/c0/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


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
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lg/g/d/e;

.field final synthetic h:Lg/g/b/c/k;

.field final synthetic i:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic j:J


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/d/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;J)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->g:Lg/g/d/e;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->h:Lg/g/b/c/k;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p5, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->j:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/c0/f;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to show CallerId overlay"

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->g:Lg/g/d/e;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Lg/g/d/e;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iget-object v5, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->h:Lg/g/b/c/k;

    iget-object v6, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iget-wide v7, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->j:J

    iget-object v9, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->g:Lg/g/d/e;

    const/4 v4, 0x0

    invoke-static/range {v3 .. v9}, Lcom/hiya/client/callerid/ui/c0/e;->g(Lcom/hiya/client/callerid/ui/c0/e;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/d/e;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$f;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/c0/e;->c(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/m;->r()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
