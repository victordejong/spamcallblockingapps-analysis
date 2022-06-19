.class final Lcom/hiya/stingray/manager/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w1;->c(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/i<",
        "[",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lcom/hiya/stingray/manager/n1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/w1;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lg/g/b/c/q;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Z

.field final synthetic k:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/w1;Ljava/lang/String;Lg/g/b/c/q;ZZZZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/w1$a;->a:Lcom/hiya/stingray/manager/w1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/w1$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/w1$a;->c:Lg/g/b/c/q;

    iput-boolean p4, p0, Lcom/hiya/stingray/manager/w1$a;->d:Z

    iput-boolean p5, p0, Lcom/hiya/stingray/manager/w1$a;->e:Z

    iput-boolean p6, p0, Lcom/hiya/stingray/manager/w1$a;->f:Z

    iput-boolean p7, p0, Lcom/hiya/stingray/manager/w1$a;->g:Z

    iput-boolean p8, p0, Lcom/hiya/stingray/manager/w1$a;->h:Z

    iput-boolean p9, p0, Lcom/hiya/stingray/manager/w1$a;->i:Z

    iput-boolean p10, p0, Lcom/hiya/stingray/manager/w1$a;->j:Z

    iput-boolean p11, p0, Lcom/hiya/stingray/manager/w1$a;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/manager/w1$a;->b([Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/hiya/stingray/manager/n1;

    move-result-object p1

    return-object p1
.end method

.method public final b([Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/hiya/stingray/manager/n1;
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/manager/w1$a;->a:Lcom/hiya/stingray/manager/w1;

    .line 2
    iget-object v2, v0, Lcom/hiya/stingray/manager/w1$a;->b:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/hiya/stingray/manager/w1$a;->c:Lg/g/b/c/q;

    .line 4
    iget-boolean v4, v0, Lcom/hiya/stingray/manager/w1$a;->d:Z

    const/4 v5, 0x0

    .line 5
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "inWhiteList"

    move-object/from16 v8, p2

    .line 6
    invoke-static {v8, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 7
    iget-boolean v8, v0, Lcom/hiya/stingray/manager/w1$a;->e:Z

    .line 8
    iget-boolean v9, v0, Lcom/hiya/stingray/manager/w1$a;->f:Z

    .line 9
    iget-boolean v10, v0, Lcom/hiya/stingray/manager/w1$a;->g:Z

    .line 10
    iget-boolean v11, v0, Lcom/hiya/stingray/manager/w1$a;->h:Z

    const/4 v12, 0x1

    if-nez v11, :cond_1

    iget-boolean v11, v0, Lcom/hiya/stingray/manager/w1$a;->d:Z

    if-nez v11, :cond_1

    iget-boolean v11, v0, Lcom/hiya/stingray/manager/w1$a;->i:Z

    if-eqz v11, :cond_1

    if-eqz v11, :cond_0

    const-string v11, "hasScreenerSMS"

    move-object/from16 v13, p4

    invoke-static {v13, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "screenerAllowed"

    move-object/from16 v13, p3

    invoke-static {v13, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    iget-boolean v11, v0, Lcom/hiya/stingray/manager/w1$a;->j:Z

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x1

    .line 11
    :goto_1
    iget-object v5, v0, Lcom/hiya/stingray/manager/w1$a;->a:Lcom/hiya/stingray/manager/w1;

    invoke-static {v5}, Lcom/hiya/stingray/manager/w1;->a(Lcom/hiya/stingray/manager/w1;)Lcom/hiya/stingray/manager/o2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/o2;->c()Z

    move-result v13

    .line 12
    aget-object v5, p1, v12

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 13
    iget-boolean v14, v0, Lcom/hiya/stingray/manager/w1$a;->k:Z

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    move v13, v14

    .line 14
    invoke-virtual/range {v1 .. v13}, Lcom/hiya/stingray/manager/w1;->b(Ljava/lang/String;Lg/g/b/c/q;ZZZZZZZZZZ)Lcom/hiya/stingray/manager/n1;

    move-result-object v1

    return-object v1
.end method
