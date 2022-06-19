.class public final Le/a/d/c0/z$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z$a$b;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/c0/z$a$b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z$a$b$a;->a:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/c0/z$a$b$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/c0/z$a$b$a$a;

    iget v2, v1, Le/a/d/c0/z$a$b$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/c0/z$a$b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/c0/z$a$b$a$a;

    invoke-direct {v1, p0, p2}, Le/a/d/c0/z$a$b$a$a;-><init>(Le/a/d/c0/z$a$b$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/c0/z$a$b$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/c0/z$a$b$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/c0/z$a$b$a;->a:Lq3/a/x2/g;

    .line 5
    instance-of v3, p1, Le/a/d/c0/j$b;

    if-eqz v3, :cond_3

    iput v4, v1, Le/a/d/c0/z$a$b$a$a;->e:I

    invoke-interface {p2, p1, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    return-object v0
.end method
