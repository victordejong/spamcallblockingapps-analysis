.class public final Ls1/a/a/a/v0/d/a/g0/j$v;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/g0/j;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/g0/t$a$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/g0/j$v;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ls1/a/a/a/v0/d/a/g0/t$a$a;

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/j$v;->b:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/a/a/v0/d/a/g0/e;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/d/a/g0/j;->b:Ls1/a/a/a/v0/d/a/g0/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/d/a/g0/t$a$a;->a(Ljava/lang/String;[Ls1/a/a/a/v0/d/a/g0/e;)V

    .line 5
    sget-object v0, Ls1/a/a/a/v0/j/w/c;->e:Ls1/a/a/a/v0/j/w/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/d/a/g0/t$a$a;->c(Ls1/a/a/a/v0/j/w/c;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
