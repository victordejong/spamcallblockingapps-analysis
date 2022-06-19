.class public Le/a/b0/b/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Le/a/b0/b/g/b;


# instance fields
.field public a:Le/a/b0/b/g/a$a;

.field public b:Le/a/b0/b/g/a$e;

.field public c:Le/a/b0/b/g/a$b;

.field public d:Le/a/b0/b/g/a$c;

.field public e:Le/a/b0/b/g/a$g;

.field public f:Le/a/b0/b/g/a$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/b/g/b$a;

    invoke-direct {v0}, Le/a/b0/b/g/b$a;-><init>()V

    sput-object v0, Le/a/b0/b/g/b;->g:Le/a/b0/b/g/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Le/a/b0/b/g/a;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Le/a/b0/b/g/a;

    .line 1
    iget-object v1, p0, Le/a/b0/b/g/b;->a:Le/a/b0/b/g/a$a;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/b0/b/g/a$a;

    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Le/a/b0/b/g/a$a;-><init>(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;I)V

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2
    iget-object v1, p0, Le/a/b0/b/g/b;->b:Le/a/b0/b/g/a$e;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Le/a/b0/b/g/a$e;

    invoke-direct {v1, v3}, Le/a/b0/b/g/a$e;-><init>(Z)V

    :goto_1
    aput-object v1, v0, v3

    .line 3
    iget-object v1, p0, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Le/a/b0/b/g/a$b;

    invoke-direct {v1, v3}, Le/a/b0/b/g/a$b;-><init>(Z)V

    :goto_2
    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Le/a/b0/b/g/b;->d:Le/a/b0/b/g/a$c;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Le/a/b0/b/g/a$c;

    sget-object v4, Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;->TRUECALLER_VERSION:Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;

    invoke-direct {v2, v4}, Le/a/b0/b/g/a$c;-><init>(Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;)V

    :goto_3
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    iget-object v2, p0, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Le/a/b0/b/g/a$h;

    invoke-direct {v2, v3}, Le/a/b0/b/g/a$h;-><init>(Z)V

    :goto_4
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 6
    iget-object v2, p0, Le/a/b0/b/g/b;->e:Le/a/b0/b/g/a$g;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Le/a/b0/b/g/a$g;

    invoke-direct {v2, v3}, Le/a/b0/b/g/a$g;-><init>(Z)V

    :goto_5
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 7
    sget-object v2, Le/a/b0/b/g/a$d;->d:Le/a/b0/b/g/a$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 8
    sget-object v2, Le/a/b0/b/g/a$f;->d:Le/a/b0/b/g/a$f;

    aput-object v2, v0, v1

    const-string v1, "elements"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->b3([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v1
.end method

.method public final b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;
    .locals 1

    const-string v0, "authRequirement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/b/g/a$a;

    invoke-direct {v0, p1, p2}, Le/a/b0/b/g/a$a;-><init>(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/b0/b/g/b;->a:Le/a/b0/b/g/a$a;

    return-object p0
.end method

.method public final d(Z)Le/a/b0/b/g/b;
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/b/g/a$b;

    invoke-direct {v0, p1}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v0, p0, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    return-object p0
.end method

.method public final e(Z)Le/a/b0/b/g/b;
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/b/g/a$e;

    invoke-direct {v0, p1}, Le/a/b0/b/g/a$e;-><init>(Z)V

    iput-object v0, p0, Le/a/b0/b/g/b;->b:Le/a/b0/b/g/a$e;

    return-object p0
.end method

.method public final f(Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;)Le/a/b0/b/g/b;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/b/g/a$c;

    invoke-direct {v0, p1}, Le/a/b0/b/g/a$c;-><init>(Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;)V

    iput-object v0, p0, Le/a/b0/b/g/b;->d:Le/a/b0/b/g/a$c;

    return-object p0
.end method
