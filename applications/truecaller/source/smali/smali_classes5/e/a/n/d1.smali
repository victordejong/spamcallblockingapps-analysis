.class public final Le/a/n/d1;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/m/b/y/a/a;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/n/d1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/m/b/y/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/m/b/y/a/a$b;

    invoke-direct {v0, p1}, Le/m/b/y/a/a$b;-><init>(Le/m/b/y/a/a;)V

    .line 4
    iget-object p1, p0, Le/a/n/d1;->b:Ljava/lang/String;

    .line 5
    new-instance v1, Le/m/b/y/a/a$b$b;

    invoke-direct {v1, v0, p1}, Le/m/b/y/a/a$b$b;-><init>(Le/m/b/y/a/a$b;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Le/m/b/y/a/a$b$b;->t()Le/m/b/x/b/q;

    move-result-object p1

    invoke-virtual {p1}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
