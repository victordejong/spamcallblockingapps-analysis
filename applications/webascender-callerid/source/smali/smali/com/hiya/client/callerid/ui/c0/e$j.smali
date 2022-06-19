.class final Lcom/hiya/client/callerid/ui/c0/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->n(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
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
        "Lcom/hiya/client/callerid/ui/b0/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lg/g/b/c/k;

.field final synthetic h:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->g:Lg/g/b/c/k;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/c0/e;->e(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/x/a;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->g:Lg/g/b/c/k;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v4

    .line 5
    iget-object v6, p0, Lcom/hiya/client/callerid/ui/c0/e$j;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v9, 0x3

    .line 7
    invoke-virtual/range {v1 .. v9}, Lcom/hiya/client/callerid/ui/x/a;->e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$j;->a(Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void
.end method
