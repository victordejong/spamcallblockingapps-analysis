.class public final Ls1/a/a/a/v0/k/b/y$a;
.super Ls1/a/a/a/v0/k/b/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Ls1/a/a/a/v0/f/a;

.field public final e:Ls1/a/a/a/v0/e/c$c;

.field public final f:Z

.field public final g:Ls1/a/a/a/v0/e/c;

.field public final h:Ls1/a/a/a/v0/k/b/y$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/k/b/y$a;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Ls1/a/a/a/v0/k/b/y;-><init>(Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/y$a;->g:Ls1/a/a/a/v0/e/c;

    iput-object p5, p0, Ls1/a/a/a/v0/k/b/y$a;->h:Ls1/a/a/a/v0/k/b/y$a;

    .line 2
    iget p3, p1, Ls1/a/a/a/v0/e/c;->e:I

    .line 3
    invoke-static {p2, p3}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/y$a;->d:Ls1/a/a/a/v0/f/a;

    .line 4
    sget-object p2, Ls1/a/a/a/v0/e/z/b;->e:Ls1/a/a/a/v0/e/z/b$d;

    .line 5
    iget p3, p1, Ls1/a/a/a/v0/e/c;->d:I

    .line 6
    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/e/c$c;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ls1/a/a/a/v0/e/c$c;->b:Ls1/a/a/a/v0/e/c$c;

    :goto_0
    iput-object p2, p0, Ls1/a/a/a/v0/k/b/y$a;->e:Ls1/a/a/a/v0/e/c$c;

    .line 7
    sget-object p2, Ls1/a/a/a/v0/e/z/b;->f:Ls1/a/a/a/v0/e/z/b$b;

    .line 8
    iget p1, p1, Ls1/a/a/a/v0/e/c;->d:I

    const-string p3, "Flags.IS_INNER.get(classProto.flags)"

    .line 9
    invoke-static {p2, p1, p3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ls1/a/a/a/v0/k/b/y$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/f/b;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/y$a;->d:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    const-string v1, "classId.asSingleFqName()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
