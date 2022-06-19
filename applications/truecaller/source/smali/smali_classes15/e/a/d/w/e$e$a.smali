.class public final Le/a/d/w/e$e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/w/e$e;


# direct methods
.method public constructor <init>(Le/a/d/w/e$e;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/e$e$a;->b:Le/a/d/w/e$e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/w/e$e$a;->b:Le/a/d/w/e$e;

    iget-object v0, v0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    .line 2
    iget-object v0, v0, Le/a/d/w/e;->k:Le/a/p5/c;

    .line 3
    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
