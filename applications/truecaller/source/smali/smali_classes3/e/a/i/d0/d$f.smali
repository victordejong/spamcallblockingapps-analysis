.class public final Le/a/i/d0/d$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d;-><init>(Ls1/w/f;Lo3/a;Le/a/u3/g;Le/a/p5/c;Le/a/p5/u;Le/a/p5/g;Le/a/q2/a;Lo3/a;Lo3/a;)V
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
.field public final synthetic b:Le/a/i/d0/d;


# direct methods
.method public constructor <init>(Le/a/i/d0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d$f;->b:Le/a/i/d0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d0/d$f;->b:Le/a/i/d0/d;

    .line 2
    iget-object v1, v0, Le/a/i/d0/d;->f:Ls1/w/f;

    .line 3
    invoke-virtual {v0}, Le/a/i/d0/d;->g()Lq3/a/y;

    move-result-object v0

    .line 4
    invoke-interface {v1, v0}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0
.end method
