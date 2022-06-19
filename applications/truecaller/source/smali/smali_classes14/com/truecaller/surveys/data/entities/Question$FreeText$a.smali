.class public final Lcom/truecaller/surveys/data/entities/Question$FreeText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Question$FreeText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Question$FreeText;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Question.FreeText"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "headerMessage"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "message"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "hint"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "actionLabel"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "followupQuestionId"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->b:Lq3/b/i/d;

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

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->write$Self(Lcom/truecaller/surveys/data/entities/Question$FreeText;Lq3/b/j/c;Lq3/b/i/d;)V

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
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "decoder"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->b:Lq3/b/i/d;

    invoke-interface {v0, v1}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object v0

    invoke-interface {v0}, Lq3/b/j/b;->j()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v7}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v8}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-interface {v0, v1, v3, v8}, Lq3/b/j/b;->r(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const v8, 0x7fffffff

    move/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v16, v8

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move v2, v5

    move v14, v2

    :goto_0
    invoke-interface {v0, v1}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    new-instance v0, Lq3/b/h;

    invoke-direct {v0, v15}, Lq3/b/h;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v15, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-interface {v0, v1, v3, v15, v9}, Lq3/b/j/b;->i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    or-int/lit8 v14, v14, 0x20

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, v1, v8}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v13

    or-int/lit8 v14, v14, 0x10

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, v1, v4}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v14, v14, 0x8

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v1, v7}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v14, v14, 0x4

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, v1, v6}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v11

    or-int/lit8 v14, v14, 0x2

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, v1, v5}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v2

    or-int/lit8 v14, v14, 0x1

    goto :goto_0

    :pswitch_6
    move/from16 v17, v2

    move-object/from16 v22, v9

    move-object/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move/from16 v16, v14

    :goto_1
    invoke-interface {v0, v1}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    const/16 v23, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v23}, Lcom/truecaller/surveys/data/entities/Question$FreeText;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()[Lq3/b/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lq3/b/b<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lq3/b/k/g;->b:Lq3/b/k/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v3, 0x4

    aput-object v2, v0, v3

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->r1(Lq3/b/b;)Lq3/b/b;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method
