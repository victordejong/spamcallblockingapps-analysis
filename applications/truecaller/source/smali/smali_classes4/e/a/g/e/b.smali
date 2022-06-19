.class public final Le/a/g/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/i;


# instance fields
.field public final synthetic a:Le/a/g/e/d;


# direct methods
.method public constructor <init>(Le/a/g/e/d;Le/a/i/c/d/l;)V
    .locals 0

    iput-object p1, p0, Le/a/g/e/b;->a:Le/a/g/e/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/e/b;->a:Le/a/g/e/d;

    .line 2
    iput-object p1, v0, Le/a/g/e/d;->e:Le/a/i/c/a/c;

    .line 3
    invoke-virtual {v0}, Le/a/g/e/d;->f()V

    return-void
.end method

.method public b(Le/a/i/c/b/a;)V
    .locals 2

    const-string v0, "errorAdRouter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/e/b;->a:Le/a/g/e/d;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/a/g/e/d;->e:Le/a/i/c/a/c;

    .line 3
    iget-object v0, v0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    .line 4
    iget p1, p1, Le/a/i/c/b/a;->a:I

    .line 5
    invoke-virtual {v0, p1}, Le/a/i/n;->ed(I)V

    :cond_0
    return-void
.end method
