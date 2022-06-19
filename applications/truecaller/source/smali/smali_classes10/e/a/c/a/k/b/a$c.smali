.class public final Le/a/c/a/k/b/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/k/b/a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/c/a/k/b/a;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/a$c;->b:Le/a/c/a/k/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/k/b/a$c;->b:Le/a/c/a/k/b/a;

    iget-object v0, v0, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/k/b/b;->b:Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->S(Lq3/a/i0;Ljava/util/concurrent/CancellationException;I)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
