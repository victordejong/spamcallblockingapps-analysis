.class public final Le/a/c/a/k/b/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/k/b/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/c/a/k/b/d;

.field public final synthetic c:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/d;Lq3/a/w2/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/d$b;->b:Le/a/c/a/k/b/d;

    iput-object p2, p0, Le/a/c/a/k/b/d$b;->c:Lq3/a/w2/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/k/b/d$b;->c:Lq3/a/w2/x;

    iget-object v1, p0, Le/a/c/a/k/b/d$b;->b:Le/a/c/a/k/b/d;

    iget-object v1, v1, Le/a/c/a/k/b/d;->g:Le/a/c/a/k/b/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
