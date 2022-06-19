.class public final Le/a/c/r/j/f$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/r/j/f;-><init>()V
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
.field public final synthetic b:Le/a/c/r/j/f;


# direct methods
.method public constructor <init>(Le/a/c/r/j/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/r/j/f$b;->b:Le/a/c/r/j/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/r/j/f$b;->b:Le/a/c/r/j/f;

    invoke-virtual {v0}, Le/a/c/r/j/f;->b()Ls1/w/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0
.end method
