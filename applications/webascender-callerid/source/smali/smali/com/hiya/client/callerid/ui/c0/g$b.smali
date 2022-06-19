.class final Lcom/hiya/client/callerid/ui/c0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/g;->r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/g;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic h:J

.field final synthetic i:Lg/g/b/c/k;

.field final synthetic j:Lg/g/a/e/e/n;

.field final synthetic k:Z

.field final synthetic l:Lg/g/d/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/g;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/b/c/k;Lg/g/a/e/e/n;ZLg/g/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->f:Lcom/hiya/client/callerid/ui/c0/g;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->g:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p3, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->h:J

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->i:Lg/g/b/c/k;

    iput-object p6, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->j:Lg/g/a/e/e/n;

    iput-boolean p7, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->k:Z

    iput-object p8, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->l:Lg/g/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 8

    const-string v0, "block"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->f:Lcom/hiya/client/callerid/ui/c0/g;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->g:Lcom/hiya/client/callerid/ui/b0/j;

    sget-object v1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    iget-wide v2, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->h:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/c0/e;->i(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->f:Lcom/hiya/client/callerid/ui/c0/g;

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->i:Lg/g/b/c/k;

    .line 6
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->g:Lcom/hiya/client/callerid/ui/b0/j;

    .line 7
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->j:Lg/g/a/e/e/n;

    .line 8
    iget-wide v4, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->h:J

    .line 9
    iget-boolean v6, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->k:Z

    .line 10
    iget-object v7, p0, Lcom/hiya/client/callerid/ui/c0/g$b;->l:Lg/g/d/e;

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/c0/e;->k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/g$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
