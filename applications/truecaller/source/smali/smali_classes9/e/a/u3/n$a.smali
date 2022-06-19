.class public final Le/a/u3/n$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u3/n;-><init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/u3/s;",
        "Le/a/u3/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/u3/b;

.field public final synthetic c:Le/a/u3/n;

.field public final synthetic d:Le/a/s4/a;


# direct methods
.method public constructor <init>(Le/a/u3/b;Le/a/u3/n;Le/a/s4/a;)V
    .locals 0

    iput-object p1, p0, Le/a/u3/n$a;->b:Le/a/u3/b;

    iput-object p2, p0, Le/a/u3/n$a;->c:Le/a/u3/n;

    iput-object p3, p0, Le/a/u3/n$a;->d:Le/a/s4/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Le/a/u3/s;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/u3/n$a;->b:Le/a/u3/b;

    check-cast p1, Le/a/u3/s;

    .line 4
    new-instance v4, Le/a/u3/l;

    .line 5
    new-instance v0, Le/a/u3/m;

    invoke-direct {v0, p0}, Le/a/u3/m;-><init>(Le/a/u3/n$a;)V

    .line 6
    iget-object v1, p0, Le/a/u3/n$a;->c:Le/a/u3/n;

    .line 7
    iget-object v1, v1, Le/a/u3/n;->q6:Le/a/u3/d;

    .line 8
    invoke-direct {v4, v0, v1}, Le/a/u3/l;-><init>(Le/a/u3/b;Le/a/u3/d;)V

    .line 9
    iget-object v1, p1, Le/a/u3/s;->b:Ljava/lang/String;

    .line 10
    iget-boolean v2, p1, Le/a/u3/s;->c:Z

    .line 11
    iget-object v3, p1, Le/a/u3/s;->d:Le/a/u3/d;

    iget-boolean v5, p1, Le/a/u3/s;->f:Z

    const-string p1, "remoteKey"

    .line 12
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "prefs"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "delegate"

    invoke-static {v4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/u3/s;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/u3/s;-><init>(Ljava/lang/String;ZLe/a/u3/d;Le/a/u3/b;Z)V

    return-object p1
.end method
