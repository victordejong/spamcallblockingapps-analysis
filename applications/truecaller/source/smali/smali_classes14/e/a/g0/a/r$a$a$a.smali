.class public final Le/a/g0/a/r$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/a/r$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/g0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g0/a/r$a$a;


# direct methods
.method public constructor <init>(Le/a/g0/a/r$a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/a/r$a$a$a;->a:Le/a/g0/a/r$a$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/g0/c;

    .line 2
    iget-object v0, p0, Le/a/g0/a/r$a$a$a;->a:Le/a/g0/a/r$a$a;

    iget-object v0, v0, Le/a/g0/a/r$a$a;->f:Le/a/g0/a/r$a;

    iget-object v0, v0, Le/a/g0/a/r$a;->f:Le/a/g0/a/r;

    new-instance v1, Le/a/g0/a/r$a$a$a$a;

    invoke-direct {v1, p0}, Le/a/g0/a/r$a$a$a$a;-><init>(Le/a/g0/a/r$a$a$a;)V

    .line 3
    iget-object v2, v0, Le/a/g0/a/r;->d:Ls1/w/f;

    new-instance v3, Le/a/g0/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p1, v1, v4}, Le/a/g0/a/q;-><init>(Le/a/g0/a/r;Le/a/g0/c;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
