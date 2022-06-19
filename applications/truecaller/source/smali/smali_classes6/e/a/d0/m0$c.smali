.class public final Le/a/d0/m0$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/m0;-><init>(Ls1/w/f;Le/a/o/c;Le/a/f/b;)V
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
.field public final synthetic b:Le/a/d0/m0;


# direct methods
.method public constructor <init>(Le/a/d0/m0;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/m0$c;->b:Le/a/d0/m0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/m0$c;->b:Le/a/d0/m0;

    .line 2
    iget-object v0, v0, Le/a/d0/m0;->f:Le/a/f/b;

    .line 3
    invoke-interface {v0}, Le/a/f/b;->f()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
