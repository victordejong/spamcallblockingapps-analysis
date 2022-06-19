.class public Lcom/hiya/stingray/ui/f;
.super Lcom/hiya/stingray/ui/r;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "premiumManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/r;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/f;->a:Lcom/hiya/stingray/manager/u3;

    return-void
.end method


# virtual methods
.method public final h(ZLcom/hiya/client/callerid/ui/b0/e;)Lg/g/b/c/f;
    .locals 30

    const-string v0, "cid"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    if-nez p1, :cond_1

    .line 1
    iget-object v2, v0, Lcom/hiya/stingray/ui/f;->a:Lcom/hiya/stingray/manager/u3;

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v3

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v4

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v5

    invoke-virtual {v5}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v6

    .line 6
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/hiya/stingray/manager/u3;->R(Lg/g/b/c/q;Lg/g/b/c/i;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x3ffdff

    const/16 v29, 0x0

    const-string v13, ""

    invoke-static/range {v3 .. v29}, Lg/g/b/c/f;->b(Lg/g/b/c/f;Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILjava/lang/Object;)Lg/g/b/c/f;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v1

    :goto_1
    return-object v1
.end method
