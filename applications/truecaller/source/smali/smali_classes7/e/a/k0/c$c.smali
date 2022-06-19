.class public final synthetic Le/a/k0/c$c;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/k0/a/e;Le/a/k0/o/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/k0/c;)V
    .locals 7

    const-class v3, Le/a/k0/c;

    const/4 v1, 0x0

    const-string v4, "setupSessionManagerListener"

    const-string v5, "setupSessionManagerListener()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Le/a/k0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Le/a/k0/d;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v0}, Le/a/k0/d;-><init>(Le/a/k0/c;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
