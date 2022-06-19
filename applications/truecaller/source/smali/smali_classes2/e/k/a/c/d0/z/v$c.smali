.class public final Le/k/a/c/d0/z/v$c;
.super Le/k/a/c/d0/z/v$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/v$k<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final h:Le/k/a/c/d0/z/v$c;

.field public static final i:Le/k/a/c/d0/z/v$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$c;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$c;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Le/k/a/c/d0/z/v$c;->h:Le/k/a/c/d0/z/v$c;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/v$c;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$c;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Le/k/a/c/d0/z/v$c;->i:Le/k/a/c/d0/z/v$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, p2, v1}, Le/k/a/c/d0/z/v$k;-><init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->s:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/k/a/b/m;->t:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->O(Le/k/a/b/j;Le/k/a/c/g;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->N(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object p3

    .line 2
    sget-object v0, Le/k/a/b/m;->s:Le/k/a/b/m;

    if-ne p3, v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/k/a/b/m;->t:Le/k/a/b/m;

    if-ne p3, v0, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p3, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->O(Le/k/a/b/j;Le/k/a/c/g;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/b0;->N(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method
