.class public final Le/a/j/a/a/a/c/a$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a$j;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/j/a/a/a/c/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/c/a$j;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a$j;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/a$j$a;->a:Le/a/j/a/a/a/c/a$j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/j/a/a/a/c/f;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object p2, p0, Le/a/j/a/a/a/c/a$j$a;->a:Le/a/j/a/a/a/c/a$j;

    iget-object p2, p2, Le/a/j/a/a/a/c/a$j;->f:Le/a/j/a/a/a/c/a;

    .line 3
    iget-object p2, p2, Le/a/j/a/a/a/c/a;->g:Le/a/j/a/a/a/c/a$e;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Le/a/j/a/a/a/c/a$e;->a:Ls1/b0/c;

    sget-object v1, Le/a/j/a/a/a/c/a$e;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p2, v1, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
