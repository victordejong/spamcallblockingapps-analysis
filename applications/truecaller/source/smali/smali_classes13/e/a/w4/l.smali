.class public Le/a/w4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/l$b;
    }
.end annotation


# static fields
.field public static final a:Lx3/g0/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    const-class v1, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    new-instance v2, Le/a/w4/l$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/w4/l$b;-><init>(Le/a/w4/l$a;)V

    .line 2
    invoke-virtual {v2}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 3
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    .line 4
    new-instance v1, Lx3/g0/a/a;

    invoke-direct {v1, v0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    .line 5
    sput-object v1, Le/a/w4/l;->a:Lx3/g0/a/a;

    return-void
.end method

.method public static a()Le/a/w4/m;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Le/a/w4/l;->b(ILjava/util/concurrent/TimeUnit;)Le/a/w4/m;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/util/concurrent/TimeUnit;)Le/a/w4/m;
    .locals 3

    .line 1
    const-class v0, Le/a/w4/m;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->SEARCH:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 2
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    iput p0, v1, Le/a/b0/b/a/b;->g:I

    .line 4
    iput-object p1, v1, Le/a/b0/b/a/b;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    sget-object p0, Le/a/w4/l;->a:Lx3/g0/a/a;

    .line 6
    invoke-virtual {v1, p0}, Le/a/b0/b/a/b;->b(Lx3/j$a;)Le/a/b0/b/a/b;

    .line 7
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 8
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/w4/m;

    return-object p0
.end method
