.class final Lcom/hiya/client/callerid/ui/x/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/x/a;->f()V
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
        "Lcom/hiya/client/callerid/ui/b0/c;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/x/a;

.field final synthetic g:Lcom/hiya/client/callerid/ui/x/d;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/x/a$b;->f:Lcom/hiya/client/callerid/ui/x/a;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/c;)Li/c/b0/b/e;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/x/a$b;->f:Lcom/hiya/client/callerid/ui/x/a;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/x/a;->b(Lcom/hiya/client/callerid/ui/x/a;)Lg/g/b/a/b;

    move-result-object v1

    .line 2
    new-instance v15, Lg/g/b/c/n;

    .line 3
    sget-object v3, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    .line 4
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->d()Lg/g/b/c/k;

    move-result-object v4

    .line 5
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->f()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/c;->a()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/c;->c()I

    move-result v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/c;->d()Z

    move-result v8

    .line 9
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->i()Z

    move-result v9

    .line 10
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->j()Z

    move-result v10

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 12
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->g()Ljava/lang/String;

    move-result-object v13

    .line 13
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/a$b;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->c()I

    move-result v14

    move-object v2, v15

    .line 14
    invoke-direct/range {v2 .. v14}, Lg/g/b/c/n;-><init>(Lg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;IZZZJLjava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 15
    invoke-static {v1, v15, v2, v3, v2}, Lg/g/b/a/b;->q(Lg/g/b/a/b;Lg/g/b/c/n;Ljava/util/Map;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/c;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/x/a$b;->a(Lcom/hiya/client/callerid/ui/b0/c;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
