.class public final Le/a/l/a/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/g0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/l/s2/a;

.field public final c:Le/a/l/u2/a;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/s2/a;Le/a/l/u2/a;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "firebasePersonalisationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductStoreProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/h0;->b:Le/a/l/s2/a;

    iput-object p2, p0, Le/a/l/a/h0;->c:Le/a/l/u2/a;

    iput-object p3, p0, Le/a/l/a/h0;->d:Ls1/w/f;

    .line 2
    sget-object p1, Le/a/l/a/h0$a;->b:Le/a/l/a/h0$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/a/h0;->a:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/l/a/h0;Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "append(\'\\n\')"

    const/16 v2, 0xa

    const-string v3, "append(value)"

    if-eqz p0, :cond_4

    .line 3
    iget-object p0, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 4
    check-cast p0, Lu3/l0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    const-string p0, "Response is empty"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_3
    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v5, "JSONArray(body).toString(4)"

    invoke-static {p2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "\n"

    const-string v6, "\r\n"

    invoke-static {p2, v5, v6, p0, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p0, p2, Lx3/a0;->c:Lu3/l0;

    if-eqz p0, :cond_5

    .line 9
    invoke-virtual {p0}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method


# virtual methods
.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/a/h0$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/a/h0$b;

    iget v1, v0, Le/a/l/a/h0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/a/h0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/a/h0$b;

    invoke-direct {v0, p0, p1}, Le/a/l/a/h0$b;-><init>(Le/a/l/a/h0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/a/h0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/a/h0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/l/a/h0;->d:Ls1/w/f;

    new-instance v2, Le/a/l/a/h0$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/l/a/h0$c;-><init>(Le/a/l/a/h0;Ls1/w/d;)V

    iput v3, v0, Le/a/l/a/h0$b;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "withContext(asyncContext\u2026 builder.toString()\n    }"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
