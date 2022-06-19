.class public final Le/a/d/a/a0$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/a0;-><init>(Le/a/d/a/p;Le/a/d/v/d;Le/a/d/c0/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/a/a0;

.field public final synthetic c:Le/a/d/c0/y0;


# direct methods
.method public constructor <init>(Le/a/d/a/a0;Le/a/d/c0/y0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/a0$e;->b:Le/a/d/a/a0;

    iput-object p2, p0, Le/a/d/a/a0$e;->c:Le/a/d/c0/y0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/d/a/b0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/a/b0;-><init>(Le/a/d/a/a0$e;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
