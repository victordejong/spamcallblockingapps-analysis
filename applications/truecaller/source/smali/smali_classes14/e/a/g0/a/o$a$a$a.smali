.class public final Le/a/g0/a/o$a$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/a/o$a$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/a/o$a$a;


# direct methods
.method public constructor <init>(Le/a/g0/a/o$a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/a/o$a$a$a;->b:Le/a/g0/a/o$a$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/g0/a/o$a$a$a;->b:Le/a/g0/a/o$a$a;

    iget-object v0, v0, Le/a/g0/a/o$a$a;->a:Le/a/g0/a/o$a;

    iget-object v0, v0, Le/a/g0/a/o$a;->f:Le/a/g0/a/o;

    iget-object v0, v0, Le/a/g0/a/o;->f:Le/a/g0/a/r;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/g0/a/r;->Jj()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Le/a/g0/a/r;->Lj()V

    .line 5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
