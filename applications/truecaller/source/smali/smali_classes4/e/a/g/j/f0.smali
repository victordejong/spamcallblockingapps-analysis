.class public final Le/a/g/j/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g5/p;


# instance fields
.field public final a:Le/a/g5/p;

.field public final b:Le/a/b0/p/d;

.field public final c:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Le/a/g5/p;Le/a/b0/p/d;Le/a/b0/e/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tagDisplayUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/f0;->a:Le/a/g5/p;

    iput-object p2, p0, Le/a/g/j/f0;->b:Le/a/b0/p/d;

    iput-object p3, p0, Le/a/g/j/f0;->c:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/p/c;)Le/a/b0/p/c;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g/j/f0;->a:Le/a/g5/p;

    invoke-interface {v0, p1}, Le/a/g5/p;->a(Le/a/b0/p/c;)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g/j/f0;->a:Le/a/g5/p;

    invoke-interface {v0, p1}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Le/a/b0/p/c;
    .locals 1

    iget-object v0, p0, Le/a/g/j/f0;->a:Le/a/g5/p;

    invoke-interface {v0, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method
