.class public final Le/a/v3/c/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v3/c/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.feedback.network.FeedbackNetworkHelperImpl$feedback$2"
    f = "FeedbackNetworkHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v3/c/b;

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:Ljava/lang/CharSequence;

.field public final synthetic h:Ljava/lang/CharSequence;

.field public final synthetic i:Ljava/lang/CharSequence;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v3/c/b;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v3/c/b$a;->e:Le/a/v3/c/b;

    iput-object p2, p0, Le/a/v3/c/b$a;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, Le/a/v3/c/b$a;->g:Ljava/lang/CharSequence;

    iput-object p4, p0, Le/a/v3/c/b$a;->h:Ljava/lang/CharSequence;

    iput-object p5, p0, Le/a/v3/c/b$a;->i:Ljava/lang/CharSequence;

    iput-object p6, p0, Le/a/v3/c/b$a;->j:Ljava/lang/String;

    iput-object p7, p0, Le/a/v3/c/b$a;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v3/c/b$a;

    iget-object v1, p0, Le/a/v3/c/b$a;->e:Le/a/v3/c/b;

    iget-object v2, p0, Le/a/v3/c/b$a;->f:Ljava/lang/CharSequence;

    iget-object v3, p0, Le/a/v3/c/b$a;->g:Ljava/lang/CharSequence;

    iget-object v4, p0, Le/a/v3/c/b$a;->h:Ljava/lang/CharSequence;

    iget-object v5, p0, Le/a/v3/c/b$a;->i:Ljava/lang/CharSequence;

    iget-object v6, p0, Le/a/v3/c/b$a;->j:Ljava/lang/String;

    iget-object v7, p0, Le/a/v3/c/b$a;->k:Ljava/lang/String;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/v3/c/b$a;-><init>(Le/a/v3/c/b;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v3/c/b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v3/c/b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v3/c/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/v3/c/b$a;->f:Ljava/lang/CharSequence;

    .line 3
    iget-object v1, p0, Le/a/v3/c/b$a;->g:Ljava/lang/CharSequence;

    .line 4
    iget-object v2, p0, Le/a/v3/c/b$a;->h:Ljava/lang/CharSequence;

    .line 5
    iget-object v3, p0, Le/a/v3/c/b$a;->i:Ljava/lang/CharSequence;

    .line 6
    iget-object v4, p0, Le/a/v3/c/b$a;->j:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Le/a/v3/c/b$a;->k:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Le/a/v3/c/b$a;->e:Le/a/v3/c/b;

    .line 9
    iget-object p1, p1, Le/a/v3/c/b;->b:Le/a/p5/g;

    .line 10
    invoke-interface {p1}, Le/a/p5/g;->g()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object p1, p0, Le/a/v3/c/b$a;->e:Le/a/v3/c/b;

    .line 12
    iget-object v7, p1, Le/a/v3/c/b;->a:Le/a/v3/b;

    const/4 v8, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Le/a/v3/c/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/v3/b;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 14
    :try_start_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 16
    iget p1, p1, Lu3/k0;->e:I

    .line 17
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
