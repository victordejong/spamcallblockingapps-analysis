.class public final Le/a/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/a;->e:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/e/c/a$c;

    invoke-direct {p1, p0}, Le/a/e/c/a$c;-><init>(Le/a/e/c/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/e/c/a$a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Le/a/e/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/e/c/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Le/a/e/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/a;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/e/c/a$b;

    invoke-direct {p1, p0}, Le/a/e/c/a$b;-><init>(Le/a/e/c/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/a;->d:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/e/c/a;)Le/a/w1;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/e/c/a;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/w1;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/truecaller/ui/details/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;
    .locals 15

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Le/a/p5/u0/d;

    const/4 v5, 0x2

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f1209d9

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "activity.getString(R.str\u2026text_call_showcase_title)"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1209d8

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "activity.getString(R.str\u2026xt_call_showcase_message)"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v11, 0x7f0604fa

    const v13, 0x7f0604e6

    const v12, 0x7f0600ba

    const v0, 0x7f0604e6

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v9, 0x18

    const/16 v10, 0x10

    move-object v3, v1

    move-object/from16 v4, p2

    .line 7
    invoke-direct/range {v3 .. v14}, Le/a/p5/u0/d;-><init>(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 8
    :cond_1
    new-instance v14, Le/a/p5/u0/d;

    const/4 v3, 0x1

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f1210ba

    new-array v4, v2, [Ljava/lang/Object;

    const v5, 0x7f1210ca

    .line 10
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "activity.getString(R.str\u2026ring(R.string.voip_text))"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f1210b9

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {v0, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f0606bb

    const v11, 0x7f0606bc

    const v10, 0x7f0606bb

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-object v1, v14

    move-object/from16 v2, p2

    .line 12
    invoke-direct/range {v1 .. v13}, Le/a/p5/u0/d;-><init>(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;I)V

    :goto_0
    return-object v1
.end method

.method public final c()Le/a/p5/u0/b;
    .locals 1

    iget-object v0, p0, Le/a/e/c/a;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/u0/b;

    return-object v0
.end method
