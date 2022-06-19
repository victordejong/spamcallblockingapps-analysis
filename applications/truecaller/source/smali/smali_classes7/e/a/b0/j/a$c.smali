.class public final Le/a/b0/j/a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/j/a;->e(Le/a/p5/o;Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.country.CountryDataStore$saveToDisk$2"
    f = "CountryDataStore.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b0/j/a;

.field public final synthetic g:Ljava/io/File;

.field public final synthetic h:Le/a/p5/o;


# direct methods
.method public constructor <init>(Le/a/b0/j/a;Ljava/io/File;Le/a/p5/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/j/a$c;->f:Le/a/b0/j/a;

    iput-object p2, p0, Le/a/b0/j/a$c;->g:Ljava/io/File;

    iput-object p3, p0, Le/a/b0/j/a$c;->h:Le/a/p5/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b0/j/a$c;

    iget-object v0, p0, Le/a/b0/j/a$c;->f:Le/a/b0/j/a;

    iget-object v1, p0, Le/a/b0/j/a$c;->g:Ljava/io/File;

    iget-object v2, p0, Le/a/b0/j/a$c;->h:Le/a/p5/o;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/b0/j/a$c;-><init>(Le/a/b0/j/a;Ljava/io/File;Le/a/p5/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b0/j/a$c;

    iget-object v0, p0, Le/a/b0/j/a$c;->f:Le/a/b0/j/a;

    iget-object v1, p0, Le/a/b0/j/a$c;->g:Ljava/io/File;

    iget-object v2, p0, Le/a/b0/j/a$c;->h:Le/a/p5/o;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/b0/j/a$c;-><init>(Le/a/b0/j/a;Ljava/io/File;Le/a/p5/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b0/j/a$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/b0/j/a$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Le/a/b0/j/a$c;->g:Ljava/io/File;

    const-string v4, "countries.json"

    invoke-direct {p1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/b0/j/a$c;->h:Le/a/p5/o;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Le/a/b0/j/a$c;->f:Le/a/b0/j/a;

    .line 6
    iget-object p1, p1, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    .line 7
    iput v3, p0, Le/a/b0/j/a$c;->e:I

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 10
    new-instance v3, Le/a/p5/n;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Le/a/p5/n;-><init>(Ljava/io/Writer;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v2, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
