.class public final Le/a/r3/h$a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r3/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r3/h$a;

.field public final synthetic c:Le/m/a/h/a/g/e;


# direct methods
.method public constructor <init>(Le/a/r3/h$a;Le/m/a/h/a/g/e;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/h$a$c;->b:Le/a/r3/h$a;

    iput-object p2, p0, Le/a/r3/h$a$c;->c:Le/m/a/h/a/g/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r3/h$a$c;->b:Le/a/r3/h$a;

    iget-object v0, v0, Le/a/r3/h$a;->h:Le/a/r3/h;

    .line 2
    iget-object v0, v0, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 3
    iget-object v1, p0, Le/a/r3/h$a$c;->c:Le/m/a/h/a/g/e;

    invoke-interface {v0, v1}, Le/m/a/h/a/g/b;->c(Le/m/a/h/a/g/e;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
