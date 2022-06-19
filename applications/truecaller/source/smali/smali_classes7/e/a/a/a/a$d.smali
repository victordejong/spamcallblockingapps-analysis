.class public final Le/a/a/a/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/a;->Jd()V
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
.field public final synthetic b:Le/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/a/a$d;->b:Le/a/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/a/a$d;->b:Le/a/a/a/a;

    invoke-virtual {v0}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object v0

    check-cast v0, Le/a/a/a/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Le/a/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, Le/a/a/a/h;-><init>(Le/a/a/a/g;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string v1, "reset"

    .line 4
    invoke-virtual {v0, v1}, Le/a/a/a/g;->Jj(Ljava/lang/String;)V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
