.class public final Le/a/p5/s0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/p5/s0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public final b:Le/a/p5/s0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/p5/s0/e$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ls1/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/a/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/a/c<",
            "*>;TT;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/s0/e;->c:Ljava/lang/String;

    iput-object p2, p0, Le/a/p5/s0/e;->d:Ls1/a/c;

    iput-object p3, p0, Le/a/p5/s0/e;->e:Ljava/lang/Object;

    .line 2
    const-class p1, Ljava/lang/String;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Le/a/p5/s0/e$b;

    invoke-direct {p1, p0}, Le/a/p5/s0/e$b;-><init>(Le/a/p5/s0/e;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Le/a/p5/s0/e$c;

    invoke-direct {p1, p0}, Le/a/p5/s0/e$c;-><init>(Le/a/p5/s0/e;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Le/a/p5/s0/e$d;

    invoke-direct {p1, p0}, Le/a/p5/s0/e$d;-><init>(Le/a/p5/s0/e;)V

    .line 5
    :goto_0
    iput-object p1, p0, Le/a/p5/s0/e;->b:Le/a/p5/s0/e$a;

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported variable type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p5/s0/e;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/p5/s0/e;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/a/p5/s0/e;->a:Ljava/lang/Integer;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ls1/a/l<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/p5/s0/e;->a(Landroid/database/Cursor;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/p5/s0/e;->e:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Le/a/p5/s0/e;->b:Le/a/p5/s0/e$a;

    invoke-interface {p2, p1}, Le/a/p5/s0/e$a;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
