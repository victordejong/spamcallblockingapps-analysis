.class public final Le/a/f/w/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/w/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/f/z/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/w/d;


# direct methods
.method public constructor <init>(Le/a/f/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/w/d$a;->a:Le/a/f/w/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/z/l;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/f/z/l;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Le/a/f/w/d$a;->a:Le/a/f/w/d;

    iget-object v2, v1, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 3
    iget-object v2, v2, Le/a/f/w/e;->a:Ljava/util/Map;

    .line 4
    iget-object v1, v1, Le/a/f/w/d;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Le/a/f/w/d$a;->a:Le/a/f/w/d;

    iget-object v1, v1, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 6
    iget-object v1, v1, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 7
    sget-object v2, Le/a/f/w/f$a;->a:Le/a/f/w/f$a;

    invoke-interface {v1, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :cond_0
    new-instance v2, Le/a/f/a/g;

    move-object v3, v2

    .line 9
    iget-object v4, v1, Le/a/f/z/l;->a:Ljava/lang/String;

    .line 10
    iget-object v5, v1, Le/a/f/z/l;->b:Ljava/lang/String;

    .line 11
    iget-object v6, v1, Le/a/f/z/l;->c:Ljava/lang/String;

    .line 12
    iget v7, v1, Le/a/f/z/l;->d:I

    .line 13
    iget-object v8, v1, Le/a/f/z/l;->e:Ljava/lang/String;

    .line 14
    iget-object v9, v1, Le/a/f/z/l;->f:Ljava/lang/String;

    .line 15
    iget-object v10, v1, Le/a/f/z/l;->g:Ljava/lang/String;

    .line 16
    iget-object v11, v1, Le/a/f/z/l;->h:Ljava/lang/String;

    .line 17
    iget-object v12, v1, Le/a/f/z/l;->i:Ljava/lang/String;

    .line 18
    iget-object v13, v1, Le/a/f/z/l;->j:Le/a/b0/p/c;

    .line 19
    iget-boolean v14, v1, Le/a/f/z/l;->k:Z

    .line 20
    iget v15, v1, Le/a/f/z/l;->l:I

    move-object/from16 p1, v2

    .line 21
    iget-object v2, v1, Le/a/f/z/l;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    move-object/from16 v16, v2

    .line 22
    iget-object v2, v1, Le/a/f/z/l;->n:Lcom/truecaller/incallui/utils/BlockAction;

    move-object/from16 v17, v2

    .line 23
    iget-boolean v2, v1, Le/a/f/z/l;->o:Z

    move/from16 v18, v2

    .line 24
    iget-boolean v2, v1, Le/a/f/z/l;->p:Z

    move/from16 v19, v2

    .line 25
    iget-boolean v2, v1, Le/a/f/z/l;->q:Z

    move/from16 v20, v2

    .line 26
    iget-boolean v2, v1, Le/a/f/z/l;->r:Z

    move/from16 v21, v2

    .line 27
    iget-boolean v2, v1, Le/a/f/z/l;->s:Z

    move/from16 v22, v2

    .line 28
    iget-boolean v2, v1, Le/a/f/z/l;->t:Z

    move/from16 v23, v2

    .line 29
    iget-boolean v2, v1, Le/a/f/z/l;->u:Z

    move/from16 v24, v2

    .line 30
    iget-object v2, v1, Le/a/f/z/l;->v:Ljava/lang/String;

    move-object/from16 v25, v2

    .line 31
    iget-object v2, v1, Le/a/f/z/l;->w:Lcom/truecaller/data/entity/Contact;

    move-object/from16 v26, v2

    .line 32
    iget-object v2, v1, Le/a/f/z/l;->x:Lcom/truecaller/blocking/FilterMatch;

    move-object/from16 v27, v2

    .line 33
    iget-boolean v1, v1, Le/a/f/z/l;->y:Z

    move/from16 v28, v1

    .line 34
    invoke-direct/range {v3 .. v28}, Le/a/f/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/b0/p/c;ZILcom/truecaller/data/entity/SpamCategoryModel;Lcom/truecaller/incallui/utils/BlockAction;ZZZZZZZLjava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;Z)V

    .line 35
    iget-object v1, v0, Le/a/f/w/d$a;->a:Le/a/f/w/d;

    iget-object v2, v1, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 36
    iget-object v2, v2, Le/a/f/w/e;->a:Ljava/util/Map;

    .line 37
    iget-object v1, v1, Le/a/f/w/d;->g:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, v0, Le/a/f/w/d$a;->a:Le/a/f/w/d;

    iget-object v1, v1, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 39
    iget-object v1, v1, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 40
    new-instance v2, Le/a/f/w/f$b;

    invoke-direct {v2, v3}, Le/a/f/w/f$b;-><init>(Le/a/f/a/g;)V

    invoke-interface {v1, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
