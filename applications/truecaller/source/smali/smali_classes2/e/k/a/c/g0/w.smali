.class public Le/k/a/c/g0/w;
.super Le/k/a/c/g0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/w$c;,
        Le/k/a/c/g0/w$b;,
        Le/k/a/c/g0/w$a;
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/g0/w$a;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/k/a/c/g0/w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/k/a/c/g0/w$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/g0/a;-><init>()V

    .line 2
    sget-object p2, Le/k/a/c/p;->B:Le/k/a/c/p;

    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/g0/w;->b:Z

    .line 3
    iput-object p3, p0, Le/k/a/c/g0/w;->e:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/k/a/c/g0/w;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Le/k/a/c/g0/w;->d:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Le/k/a/c/g0/w;->a:Le/k/a/c/g0/w$a;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g0/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/w;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Le/k/a/c/g0/j;->d()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/g0/w;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-boolean p1, p0, Le/k/a/c/g0/w;->b:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2, v0}, Le/k/a/c/g0/w;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2, v0}, Le/k/a/c/g0/w;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Le/k/a/c/g0/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Le/k/a/c/g0/w;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Le/k/a/c/g0/w;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/k/a/c/g0/w;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Le/k/a/c/g0/w;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/k/a/c/g0/w;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Le/k/a/c/g0/w;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Le/k/a/c/g0/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/w;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "getCallbacks"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Le/k/a/c/g0/j;->d()Ljava/lang/Class;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".cglib"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "net.sf.cglib"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.hibernate.repackage.cglib"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.springframework.cglib"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_3

    return-object v1

    :cond_2
    const-string v0, "getMetaClass"

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Le/k/a/c/g0/j;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "groovy.lang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 13
    :cond_3
    iget-boolean p1, p0, Le/k/a/c/g0/w;->b:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/k/a/c/g0/w;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Le/k/a/c/g0/w;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Le/k/a/c/g0/w;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Le/k/a/c/g0/w;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_5
    return-object v1
.end method

.method public d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    iget-object v3, p0, Le/k/a/c/g0/w;->a:Le/k/a/c/g0/w$a;

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v3, v2, p1, p2}, Le/k/a/c/g0/w$a;->a(CLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v2, v1, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, p2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v0, :cond_4

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v1, v3, :cond_3

    .line 11
    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    iget-object v3, p0, Le/k/a/c/g0/w;->a:Le/k/a/c/g0/w$a;

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v3, v2, p1, p2}, Le/k/a/c/g0/w$a;->a(CLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v2, v1, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, p2, 0x1

    if-ge v2, v0, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int p2, v0, p2

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
