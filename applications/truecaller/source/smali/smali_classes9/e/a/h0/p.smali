.class public final Le/a/h0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/b0/q/z;)V
    .locals 1

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/p;->a:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/h0/p;->b:Le/a/b0/q/z;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h0/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Le/a/h0/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public final b(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h0/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Le/a/h0/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h0/p;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h0/p;->b:Le/a/b0/q/z;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Le/a/b0/q/z;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "[^\\d]"

    const-string v2, ""

    .line 3
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parsing of normalized account number to national failed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/p;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account normalized number should not be null (because block options require a valid account)"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
