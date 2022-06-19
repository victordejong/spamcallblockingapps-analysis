.class public abstract Le/a/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c0/g;

.field public final b:Le/a/s4/a;

.field public final c:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Le/a/c0/g;Le/a/s4/a;Le/a/q2/d1/d;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c0/f;->a:Le/a/c0/g;

    iput-object p2, p0, Le/a/c0/f;->b:Le/a/s4/a;

    iput-object p3, p0, Le/a/c0/f;->c:Le/a/q2/d1/d;

    return-void
.end method

.method public static d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Le/a/c0/f$a;->b:Le/a/c0/f$a;

    .line 2
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "predicate"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 3
    move-object p1, p0

    check-cast p1, Le/a/c0/c;

    .line 4
    iget-object p1, p1, Le/a/c0/c;->d:Le/a/c0/d;

    .line 5
    iget-object p1, p1, Le/a/c0/g;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Le/a/c0/f;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/c0/f;->c:Le/a/q2/d1/d;

    check-cast p0, Le/a/c0/c;

    .line 8
    iget-object p0, p0, Le/a/c0/c;->d:Le/a/c0/d;

    .line 9
    iget-object p0, p0, Le/a/c0/g;->d:Ljava/lang/String;

    .line 10
    invoke-interface {p1, p0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Le/a/c0/f$b;->b:Le/a/c0/f$b;

    .line 2
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "predicate"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 3
    move-object p1, p0

    check-cast p1, Le/a/c0/c;

    .line 4
    iget-object p1, p1, Le/a/c0/c;->d:Le/a/c0/d;

    .line 5
    iget-object p1, p1, Le/a/c0/g;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Le/a/c0/f;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/c0/f;->c:Le/a/q2/d1/d;

    check-cast p0, Le/a/c0/c;

    .line 8
    iget-object p0, p0, Le/a/c0/c;->d:Le/a/c0/d;

    .line 9
    iget-object p0, p0, Le/a/c0/g;->c:Ljava/lang/String;

    .line 10
    invoke-interface {p1, p0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Le/a/c0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c0/f;->a:Le/a/c0/g;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c0/f;->b:Le/a/s4/a;

    invoke-virtual {p0}, Le/a/c0/f;->a()Le/a/c0/g;

    move-result-object v1

    .line 2
    iget-object v1, v1, Le/a/c0/g;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c0/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
