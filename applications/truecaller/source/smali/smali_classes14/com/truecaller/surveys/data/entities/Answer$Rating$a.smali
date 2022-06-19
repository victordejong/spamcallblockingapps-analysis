.class public final Lcom/truecaller/surveys/data/entities/Answer$Rating$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Answer$Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Answer$Rating;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Answer$Rating$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Answer$Rating$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Answer.Rating"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "choice"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;->b:Lq3/b/i/d;

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

    sget-object v0, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Answer$Rating;->write$Self(Lcom/truecaller/surveys/data/entities/Answer$Rating;Lq3/b/j/c;Lq3/b/i/d;)V

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
    .locals 7

    const-string v0, "decoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Answer$Rating$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    invoke-interface {p1}, Lq3/b/j/b;->j()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-interface {p1, v0, v3, v1}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/surveys/data/entities/Choice;

    const v3, 0x7fffffff

    goto :goto_1

    :cond_0
    move-object v1, v2

    move v4, v3

    :goto_0
    invoke-interface {p1, v0}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-nez v5, :cond_1

    sget-object v5, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    invoke-interface {p1, v0, v3, v5, v1}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/surveys/data/entities/Choice;

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lq3/b/h;

    invoke-direct {p1, v5}, Lq3/b/h;-><init>(I)V

    throw p1

    :cond_2
    move v3, v4

    :goto_1
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance p1, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    invoke-direct {p1, v3, v1, v2}, Lcom/truecaller/surveys/data/entities/Answer$Rating;-><init>(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V

    return-object p1
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

    const/4 v0, 0x1

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
