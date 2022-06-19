.class public final Ls1/a/a/a/f$c;
.super Ls1/a/a/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ls1/a/a/a/v0/b/k0;

.field public final c:Ls1/a/a/a/v0/e/n;

.field public final d:Ls1/a/a/a/v0/e/a0/a$d;

.field public final e:Ls1/a/a/a/v0/e/z/c;

.field public final f:Ls1/a/a/a/v0/e/z/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/a0/a$d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/f;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/f$c;->b:Ls1/a/a/a/v0/b/k0;

    iput-object p2, p0, Ls1/a/a/a/f$c;->c:Ls1/a/a/a/v0/e/n;

    iput-object p3, p0, Ls1/a/a/a/f$c;->d:Ls1/a/a/a/v0/e/a0/a$d;

    iput-object p4, p0, Ls1/a/a/a/f$c;->e:Ls1/a/a/a/v0/e/z/c;

    iput-object p5, p0, Ls1/a/a/a/f$c;->f:Ls1/a/a/a/v0/e/z/e;

    .line 2
    invoke-virtual {p3}, Ls1/a/a/a/v0/e/a0/a$d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p2, p3, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    const-string p5, "signature.getter"

    .line 5
    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget p2, p2, Ls1/a/a/a/v0/e/a0/a$c;->c:I

    .line 7
    invoke-interface {p4, p2}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p2, p3, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 9
    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget p2, p2, Ls1/a/a/a/v0/e/a0/a$c;->d:I

    .line 11
    invoke-interface {p4, p2}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 12
    :cond_0
    sget-object p3, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p3, p2, p4, p5, v0}, Ls1/a/a/a/v0/e/a0/b/h;->b(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Z)Ls1/a/a/a/v0/e/a0/b/e$a;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p3, p2, Ls1/a/a/a/v0/e/a0/b/e$a;->a:Ljava/lang/String;

    .line 15
    iget-object p2, p2, Ls1/a/a/a/v0/e/a0/b/e$a;->b:Ljava/lang/String;

    .line 16
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ls1/a/a/a/v0/d/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p3

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_2

    instance-of v0, p3, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v0, :cond_2

    .line 19
    check-cast p3, Ls1/a/a/a/v0/k/b/g0/d;

    .line 20
    iget-object p1, p3, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 21
    sget-object p3, Ls1/a/a/a/v0/e/a0/a;->i:Ls1/a/a/a/v0/h/h$f;

    const-string v0, "JvmProtoBuf.classModuleName"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "main"

    .line 22
    :goto_0
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 23
    sget-object p4, Ls1/a/a/a/v0/f/f;->a:Ls1/f0/h;

    const-string p4, "name"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p4, Ls1/a/a/a/v0/f/f;->a:Ls1/f0/h;

    const-string v0, "_"

    invoke-virtual {p4, p1, v0}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object p4

    sget-object v0, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    invoke-static {p4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    instance-of p3, p3, Ls1/a/a/a/v0/b/c0;

    if-eqz p3, :cond_3

    .line 27
    check-cast p1, Ls1/a/a/a/v0/k/b/g0/j;

    .line 28
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/j;->E:Ls1/a/a/a/v0/k/b/g0/f;

    .line 29
    instance-of p3, p1, Ls1/a/a/a/v0/d/b/g;

    if-eqz p3, :cond_3

    check-cast p1, Ls1/a/a/a/v0/d/b/g;

    .line 30
    iget-object p3, p1, Ls1/a/a/a/v0/d/b/g;->c:Ls1/a/a/a/v0/j/w/b;

    if-eqz p3, :cond_3

    .line 31
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/b/g;->e()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    const-string p3, "()"

    .line 32
    invoke-static {p5, p1, p3, p2}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_2
    iput-object p1, p0, Ls1/a/a/a/f$c;->a:Ljava/lang/String;

    return-void

    .line 34
    :cond_4
    new-instance p2, Ls1/a/a/a/i0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No field signature for property: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/f$c;->a:Ljava/lang/String;

    return-object v0
.end method
