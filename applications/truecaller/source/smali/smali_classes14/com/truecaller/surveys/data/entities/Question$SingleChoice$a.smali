.class public final Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Question$SingleChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Question$SingleChoice;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Question.SingleChoice"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "headerMessage"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "message"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "choices"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->b:Lq3/b/i/d;

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

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;->write$Self(Lcom/truecaller/surveys/data/entities/Question$SingleChoice;Lq3/b/j/c;Lq3/b/i/d;)V

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
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "decoder"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->b:Lq3/b/i/d;

    invoke-interface {v0, v1}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object v0

    invoke-interface {v0}, Lq3/b/j/b;->j()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lq3/b/k/d;

    sget-object v7, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-direct {v6, v7}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    invoke-interface {v0, v1, v3, v6}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const v6, 0x7fffffff

    move v13, v2

    move-object/from16 v16, v3

    move-object v14, v4

    move-object v15, v5

    move v12, v6

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move v2, v4

    move v10, v2

    :goto_0
    invoke-interface {v0, v1}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    if-eqz v11, :cond_4

    if-eq v11, v5, :cond_3

    if-eq v11, v6, :cond_2

    if-ne v11, v3, :cond_1

    new-instance v11, Lq3/b/k/d;

    sget-object v12, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-direct {v11, v12}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    invoke-interface {v0, v1, v3, v11, v7}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    or-int/lit8 v10, v10, 0x8

    goto :goto_0

    :cond_1
    new-instance v0, Lq3/b/h;

    invoke-direct {v0, v11}, Lq3/b/h;-><init>(I)V

    throw v0

    :cond_2
    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v10, v10, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v10, v10, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    or-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v13, v2

    move-object/from16 v16, v7

    move-object v14, v8

    move-object v15, v9

    move v12, v10

    :goto_1
    invoke-interface {v0, v1}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lq3/b/k/t;)V

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

    const/4 v0, 0x4

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lq3/b/k/g;->b:Lq3/b/k/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lq3/b/k/d;

    sget-object v2, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-direct {v1, v2}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method
