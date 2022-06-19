.class public final Le/a/d0/b/a$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/b/a$b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d0/b/a$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/a$b$a;->b:Le/a/d0/b/a$b;

    iput-object p2, p0, Le/a/d0/b/a$b$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/b/a$b$a;->b:Le/a/d0/b/a$b;

    iget-object v0, v0, Le/a/d0/b/a$b;->e:Le/a/d0/b/a;

    .line 2
    iget-object v0, v0, Le/a/d0/b/a;->q:Le/a/d/f;

    .line 3
    iget-object v1, p0, Le/a/d0/b/a$b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/d/f;->i(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
