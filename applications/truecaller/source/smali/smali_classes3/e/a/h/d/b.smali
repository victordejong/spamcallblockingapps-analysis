.class public final Le/a/h/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/d/f;


# instance fields
.field public final a:Le/m/f/a/j;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/b0/q/z;

.field public final g:Le/a/e4/p;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/d/b;->e:Le/a/u3/g;

    iput-object p2, p0, Le/a/h/d/b;->f:Le/a/b0/q/z;

    iput-object p3, p0, Le/a/h/d/b;->g:Le/a/e4/p;

    .line 2
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object p1

    const-string p2, "PhoneNumberUtil.getInstance()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/h/d/b;->a:Le/m/f/a/j;

    .line 3
    new-instance p1, Le/a/h/d/b$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/h/d/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/b;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/h/d/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/h/d/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/b;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/h/d/b$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Le/a/h/d/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/b;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/d/b;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 5

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    iget-object v4, p0, Le/a/h/d/b;->a:Le/m/f/a/j;

    invoke-virtual {v4, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v2
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0, v2}, Le/a/h/d/b;->c(Ljava/lang/String;Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p0, v3, v2}, Le/a/h/d/b;->c(Ljava/lang/String;Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "normalizedNumber"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Le/a/h/d/b;->c(Ljava/lang/String;Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;Le/m/f/a/o;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "+55"

    .line 1
    invoke-static {p1, v2, v1, v0}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h/d/b;->a:Le/m/f/a/j;

    .line 4
    invoke-virtual {v0, p2}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, p2, v2}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Le/a/h/d/b;->a:Le/m/f/a/j;

    invoke-virtual {v0, p2}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p2

    .line 7
    sget-object v0, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-eq p2, v0, :cond_2

    sget-object v0, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    if-eq p2, v0, :cond_2

    sget-object v0, Le/m/f/a/j$d;->a:Le/m/f/a/j$d;

    if-ne p2, v0, :cond_3

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x9

    if-le p2, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-eq v0, p2, :cond_3

    .line 9
    invoke-static {v0, p1}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    .line 10
    :cond_4
    iget-wide p1, p2, Le/m/f/a/o;->d:J

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
