.class public final Le/a/i/d0/g0/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/g0/b;-><init>(Lo3/a;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/d0/g0/b;


# direct methods
.method public constructor <init>(Le/a/i/d0/g0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/g0/b$a;->b:Le/a/i/d0/g0/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d0/g0/b$a;->b:Le/a/i/d0/g0/b;

    .line 2
    iget-object v0, v0, Le/a/i/d0/g0/b;->d:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ioContext.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/w/f;

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0
.end method
