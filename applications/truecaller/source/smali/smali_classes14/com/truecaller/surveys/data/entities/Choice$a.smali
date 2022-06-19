.class public final Lcom/truecaller/surveys/data/entities/Choice$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Choice;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Choice$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Choice$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Choice"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "followupQuestionId"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Choice$a;->b:Lq3/b/i/d;

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

    sget-object v0, Lcom/truecaller/surveys/data/entities/Choice$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Choice;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Choice$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Choice;->write$Self(Lcom/truecaller/surveys/data/entities/Choice;Lq3/b/j/c;Lq3/b/i/d;)V

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
    .locals 14

    const-string v0, "decoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Choice$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    invoke-interface {p1}, Lq3/b/j/b;->j()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-interface {p1, v0, v2}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v1

    invoke-interface {p1, v0, v3}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-interface {p1, v0, v4, v3}, Lq3/b/j/b;->r(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const v4, 0x7fffffff

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    move v9, v4

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    move v1, v2

    move v7, v1

    :goto_0
    invoke-interface {p1, v0}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    if-ne v8, v4, :cond_1

    sget-object v8, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-interface {p1, v0, v4, v8, v6}, Lq3/b/j/b;->i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lq3/b/h;

    invoke-direct {p1, v8}, Lq3/b/h;-><init>(I)V

    throw p1

    :cond_2
    invoke-interface {p1, v0, v3}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0, v2}, Lq3/b/j/b;->e(Lq3/b/i/d;I)I

    move-result v1

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v10, v1

    move-object v11, v5

    move-object v12, v6

    move v9, v7

    :goto_1
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance p1, Lcom/truecaller/surveys/data/entities/Choice;

    const/4 v13, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/surveys/data/entities/Choice;-><init>(IILjava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V

    return-object p1
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

    const/4 v0, 0x3

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lq3/b/k/g;->b:Lq3/b/k/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->r1(Lq3/b/b;)Lq3/b/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
