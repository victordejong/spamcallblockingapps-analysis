.class public Le/a/c/c/d/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;->j0(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$b;->a:Le/a/c/c/d/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object p1, p0, Le/a/c/c/d/e0$b;->a:Le/a/c/c/d/e0;

    const-string v0, "ORIGINAL"

    .line 3
    invoke-virtual {p1, v0}, Le/a/c/c/d/e0;->k0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Le/a/c/c/d/e0;->i0()V

    .line 5
    invoke-virtual {p1}, Le/a/c/c/d/e0;->g0()V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
