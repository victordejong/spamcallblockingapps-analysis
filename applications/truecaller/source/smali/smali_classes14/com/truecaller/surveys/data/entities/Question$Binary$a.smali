.class public final Lcom/truecaller/surveys/data/entities/Question$Binary$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Question$Binary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Question$Binary;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Question$Binary$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Question.Binary"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "headerMessage"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "message"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "choiceTrue"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "choiceFalse"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->b:Lq3/b/i/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Question$Binary;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Question$Binary;->write$Self(Lcom/truecaller/surveys/data/entities/Question$Binary;Lq3/b/j/c;Lq3/b/i/d;)V

    invoke-interface {p1, v0}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void
.end method

.method public c()[Lq3/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lq3/b/b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/b/k/q;->a:[Lq3/b/b;

    return-object v0
.end method

.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "decoder"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->b:Lq3/b/i/d;

    invoke-interface {v0, v1}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object v0

    invoke-interface {v0}, Lq3/b/j/b;->j()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-interface {v0, v1, v3, v6}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/surveys/data/entities/Choice;

    invoke-interface {v0, v1, v7, v6}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/surveys/data/entities/Choice;

    const v7, 0x7fffffff

    move v15, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move v14, v7

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move v2, v4

    move v12, v2

    :goto_0
    invoke-interface {v0, v1}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    if-eqz v13, :cond_5

    if-eq v13, v5, :cond_4

    if-eq v13, v6, :cond_3

    if-eq v13, v3, :cond_2

    if-ne v13, v7, :cond_1

    sget-object v13, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-interface {v0, v1, v7, v13, v11}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/surveys/data/entities/Choice;

    or-int/lit8 v12, v12, 0x10

    goto :goto_0

    :cond_1
    new-instance v0, Lq3/b/h;

    invoke-direct {v0, v13}, Lq3/b/h;-><init>(I)V

    throw v0

    :cond_2
    sget-object v13, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-interface {v0, v1, v3, v13, v8}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/surveys/data/entities/Choice;

    or-int/lit8 v12, v12, 0x8

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v12, v12, 0x4

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    or-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    move v15, v2

    move-object/from16 v18, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move v14, v12

    :goto_1
    invoke-interface {v0, v1}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$Binary;

    const/16 v20, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lcom/truecaller/surveys/data/entities/Question$Binary;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/Choice;Lcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V

    return-object v0
.end method

.method public e()[Lq3/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lq3/b/b<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lq3/b/k/g;->b:Lq3/b/k/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method
