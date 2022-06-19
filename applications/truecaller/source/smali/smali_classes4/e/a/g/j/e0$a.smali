.class public final Le/a/g/j/e0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/j/e0;-><init>(Le/a/l/p2/v0;Le/a/l/a/y;Le/a/o5/f0;Le/a/l/c2;)V
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
.field public final synthetic b:Le/a/g/j/e0;


# direct methods
.method public constructor <init>(Le/a/g/j/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/g/j/e0$a;->b:Le/a/g/j/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/g/j/e0$a;->b:Le/a/g/j/e0;

    .line 2
    iget-object v1, v1, Le/a/g/j/e0;->f:Le/a/l/c2;

    .line 3
    invoke-interface {v1}, Le/a/l/c2;->c1()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(premiumSettings\u2026moLastShown).plusDays(10)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
